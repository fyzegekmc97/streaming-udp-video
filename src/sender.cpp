// This program attempts to gather video frames from a webcam or connected
// camera, encodes them into a compressed format (JPEG), and sends them over UDP
// to a receiver of the specified port number and address. The frames should be
// decodable on the other side and reconstructed into images.

#include <iostream>
#include <string>
#include <vector>
#include <ctime>
#include <opencv2/core.hpp>
#include <opencv2/opencv.hpp>
#include "protocols/basic_protocol.h"
#include "sender/sender_socket.h"
#include "util/util.h"
#include "video/video_capture.h"

using namespace cv ;
using udp_streaming_video::BasicProtocolData;
using udp_streaming_video::SenderSocket;
using udp_streaming_video::VideoCapture;


int main(int argc, char** argv) {
  const int port = udp_streaming_video::util::ProcessPortParam(argc, argv);
  if (port < 0) {
    return -1;
  }
  std::string ip_address = "127.0.0.1";  // Localhost
  if (argc > 2) {  // First arg is the port number.
    ip_address = std::string(argv[2]);
  }

  std::vector<uint64_t> start_time(1,0) ;
  const SenderSocket socket(ip_address, port);
  std::cout << "Sending to " << ip_address
            << " on port " << port << "." << std::endl;
  udp_streaming_video::VideoCapture video_capture(false, 1);
  BasicProtocolData protocol_data ;

  while (true) {
    protocol_data.SetImage(video_capture.GetFrameFromCamera());
    socket.SendPacket(protocol_data.PackageData());
    std::chrono::high_resolution_clock::time_point start = std::chrono::high_resolution_clock::now() ;
    char some_key = (char)cv::waitKey(0) ;
    if(some_key == 27)
    {
        break ;
    }
    else
    {
        continue ;
    }
  }
  return 0;
}
