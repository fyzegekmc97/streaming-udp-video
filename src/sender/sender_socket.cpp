#include "sender/sender_socket.h"

#include <arpa/inet.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

void int64ToChar(char a[], int64_t n) {
    memcpy(a, &n, 8);
}

namespace udp_streaming_video {

SenderSocket::SenderSocket(
    const std::string &receiver_ip, const int receiver_port) {

  socket_handle_ = socket(AF_INET, SOCK_DGRAM, 0);
  receiver_addr_.sin_family = AF_INET;
  receiver_addr_.sin_port = htons(receiver_port);
  receiver_addr_.sin_addr.s_addr = inet_addr(receiver_ip.c_str());
}

void SenderSocket::SendPacket(const std::vector<unsigned char> &data) const {

  sendto(
      socket_handle_,
      data.data(),
      data.size(),
      0,
      const_cast<sockaddr*>(reinterpret_cast<const sockaddr*>(&receiver_addr_)),
      sizeof(receiver_addr_));
}

__attribute__((unused)) void SenderSocket::SendCurrentTime_TCP(const std::string &receiver_ip, const int receiver_port) const {
        std::chrono::high_resolution_clock::time_point curr_time = std::chrono::high_resolution_clock::now() ;
        auto time_since_epoch = curr_time.time_since_epoch() ;
        std::cout << time_since_epoch.count() ;
        std::ostringstream out ;
        out << time_since_epoch.count() ;
        std::string out_str = out.str() ;
        char buffer[1024] = {0} ;
        const char * data = out_str.c_str() ;
        int server_fd, new_socket, valread;
        int opt = 1;
        struct sockaddr_in address{};
        int addrlen = sizeof(address);
        // Creating socket file descriptor
        if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0)
        {
            perror("socket failed");
            exit(EXIT_FAILURE);
        }
        // Forcefully attaching socket to the port 8080
        if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT,
                       &opt, sizeof(opt)))
        {
            perror("setsockopt");
            exit(EXIT_FAILURE);
        }
        address.sin_family = AF_INET;
        inet_pton(AF_INET, (const char *) &receiver_ip, &(address.sin_addr)) ;
        address.sin_port = htons( receiver_port );

        // Forcefully attaching socket to the port 8080
        if (bind(server_fd, (struct sockaddr *)&address,
                 sizeof(address))<0)
        {
            perror("bind failed");
            exit(EXIT_FAILURE);
        }
        if (listen(server_fd, 3) < 0)
        {
            perror("listen");
            exit(EXIT_FAILURE);
        }
        if ((new_socket = accept(server_fd, (struct sockaddr *)&address,
                                 (socklen_t*)&addrlen))<0)
        {
            perror("accept");
            exit(EXIT_FAILURE);
        }
        valread = read( new_socket , buffer, 1024);
        printf("%s\n",buffer );
        send(new_socket , data , strlen(data) , 0 );
        printf("Hello message sent\n");

}

__attribute__((unused)) void SenderSocket::SendCurrentTime_UDP(const std::string &receiver_ip, const int receiver_port) const {
    int sockfd;
    char buffer[1024];
    char *hello = "Hello from client";
    struct sockaddr_in     servaddr;

    // Creating socket file descriptor
    if ( (sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    memset(&servaddr, 0, sizeof(servaddr));

    // Filling server information
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(receiver_port);
    servaddr.sin_addr.s_addr = INADDR_ANY;

    int n, len;

    sendto(sockfd, (const char *)hello, strlen(hello),
           MSG_CONFIRM, (const struct sockaddr *) &servaddr,
           sizeof(servaddr));
    printf("Hello message sent.\n");
    n = recvfrom(sockfd, (char *)buffer, 1024,
                 MSG_WAITALL, (struct sockaddr *) &servaddr,
                 (socklen_t*)&len);
    buffer[n] = '\0';
    printf("Server : %s\n", buffer);

    close(sockfd);
}

}


