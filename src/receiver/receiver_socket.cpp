#include "receiver/receiver_socket.h"

#include <arpa/inet.h>
#include <sys/socket.h>
#include <cstdio>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <cstring>
#include <iostream>
#include <vector>

namespace udp_streaming_video {

ReceiverSocket::ReceiverSocket(const int port_number) : port_(port_number) {
  socket_handle_ = socket(AF_INET, SOCK_DGRAM, 0);
}

const bool ReceiverSocket::BindSocketToListen() const {
  if (socket_handle_ < 0) {
    std::cerr << "Binding failed. Socket was not initialized." << std::endl;
    return false;
  }
  // Bind socket's address to INADDR_ANY because it's only receiving data, and
  // does not need a valid address.
  sockaddr_in socket_addr;
  memset(reinterpret_cast<char*>(&socket_addr), 0, sizeof(socket_addr));
  socket_addr.sin_family = AF_INET;
  socket_addr.sin_addr.s_addr = htonl(INADDR_ANY);
  // Bind the socket to the port that will be listened on.
  socket_addr.sin_port = htons(port_);
  const int bind_status = bind(
      socket_handle_,
      reinterpret_cast<sockaddr*>(&socket_addr),
      sizeof(socket_addr));
  if (bind_status < 0) {
    std::cerr << "Binding failed. Could not bind the socket." << std::endl;
    return false;
  }
  return true;
}

const std::vector<unsigned char> ReceiverSocket::GetPacket() const {
  // Get the data from the next incoming packet.
  sockaddr_in remote_addr;
  socklen_t addrlen = sizeof(remote_addr);
  const int num_bytes = recvfrom(
      socket_handle_,
      const_cast<void*>(reinterpret_cast<const void*>(buffer_)),
      kMaxPacketBufferSize,
      0,
      reinterpret_cast<sockaddr*>(&remote_addr),
      &addrlen);
  // Copy the data (if any) into the data vector.
  std::vector<unsigned char> data;
  if (num_bytes > 0) {
    data.insert(data.end(), &buffer_[0], &buffer_[num_bytes]);
  }
  return data;
}

void ReceiverSocket::CalculateTimeDifference_TCP() const {
    int sock = 0, valread;
    sockaddr_in serv_addr{};
    char *hello ;
    char buffer[1024] = {0};
    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
    {
        printf("\n Socket creation error \n");
        exit(EXIT_FAILURE);
    }

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(INADDR_ANY);

    // Convert IPv4 and IPv6 addresses from text to binary form
    if(inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr)<=0)
    {
        printf("\nInvalid address/ Address not supported \n");
        exit(EXIT_FAILURE);
    }

    if (connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) {
        printf("\nConnection Failed \n");
        exit(EXIT_FAILURE);
    }
    valread = read( sock , buffer, 1024);
    printf("%s\n",buffer );
};

__attribute__((unused)) void ReceiverSocket::CalculateTimeDifference_UDP(const int port_number) const {
    int sockfd;
    char buffer[1024];
    char *hello = "Hello from server";
    sockaddr_in servaddr, cliaddr;

    // Creating socket file descriptor
    if ( (sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    memset(&servaddr, 0, sizeof(servaddr));
    memset(&cliaddr, 0, sizeof(cliaddr));
    servaddr.sin_family    = AF_INET;
    servaddr.sin_addr.s_addr = INADDR_ANY;
    servaddr.sin_port = htons(port_number);
    if ( bind(sockfd, (const struct sockaddr *)&servaddr,
              sizeof(servaddr)) < 0 )
    {
        perror("bind failed");
        exit(EXIT_FAILURE);
    }
    int len, n;
    len = sizeof(cliaddr);
    n = recvfrom(sockfd, (char *)buffer, 1024,
                 MSG_WAITALL, ( struct sockaddr *) &cliaddr,
                 (socklen_t*)&len);
    buffer[n] = '\0';
    printf("Client : %s\n", buffer);
}

}
