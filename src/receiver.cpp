// This program opens a socket that listens to incoming UDP packets. When a
// video frame packet is received, it will be decoded and displayed in a GUI
// window.

#include <iostream>
#include <vector>

#include "protocols/basic_protocol.h"
#include "receiver/receiver_socket.h"
#include "util/util.h"
#include <boost/chrono.hpp>

using udp_streaming_video::BasicProtocolData;
using udp_streaming_video::ReceiverSocket;
using namespace std::chrono ;

int main(int argc, char** argv) {
  const int port = udp_streaming_video::util::ProcessPortParam(argc, argv);
  if (port < 0) {
    return -1;
  }
  const ReceiverSocket socket(port);
  if (!socket.BindSocketToListen()) {
    std::cerr << "Could not bind socket." << std::endl;
    return -1;
  }
  std::cout << "Listening on port " << port << "." << std::endl;
  BasicProtocolData protocol_data;
  struct timespec end ;
  while (true) {  // TODO: break out cleanly when done.
    protocol_data.UnpackData(socket.GetPacket());
    protocol_data.GetImage().Display();
    clock_gettime(CLOCK_MONOTONIC, &end);	/* mark the end time */

  }
  return 0;
}
