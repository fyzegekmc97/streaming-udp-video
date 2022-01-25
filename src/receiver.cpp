// This program opens a socket that listens to incoming UDP packets. When a
// video frame packet is received, it will be decoded and displayed in a GUI
// window.

#include <iostream>
#include <vector>
#include "protocols/basic_protocol.h"
#include "receiver/receiver_socket.h"
#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>
#include "util/util.h"
#include <boost/chrono.hpp>

using udp_streaming_video::BasicProtocolData;
using udp_streaming_video::ReceiverSocket;
using namespace std::chrono ;
using namespace cv ;

int main(int argc, char** argv) {
  const int port = udp_streaming_video::util::ProcessPortParam(argc, argv);
  if (port < 0) {
    return -1;
  }
  const ReceiverSocket socket(port);
  const ReceiverSocket time_socket(8555);
  if (!socket.BindSocketToListen()) {
    std::cerr << "Could not bind socket." << std::endl;
    return -1;
  }
  std::cout << "Listening on port " << port << "." << std::endl;
  BasicProtocolData protocol_data;
  while (true) {  // TODO: break out cleanly when done.
    protocol_data.UnpackData(socket.GetPacket());
    protocol_data.GetImage().Display();
    std::chrono::high_resolution_clock::time_point end = std::chrono::high_resolution_clock::now() ;
    time_socket.CalculateTimeDifference_TCP();
    char pressed_key = (char)cv::waitKey(0);
    if(pressed_key == 27)
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
