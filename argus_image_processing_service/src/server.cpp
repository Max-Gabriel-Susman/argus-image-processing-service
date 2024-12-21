// #include <pybind11/pybind11.h>
// #include <pybind11/numpy.h>
// #include <librtmp/rtmp.h>
// #include <iostream>

// namespace py = pybind11;

// class RTMPServer {
// public:
//     RTMPServer(const std::string& server_address) : server_address_(server_address) {}

//     void start_server() {
//         std::cout << "Starting RTMP server at " << server_address_ << std::endl;
//         // Initialize RTMP server
//         RTMP *rtmp = RTMP_Alloc();
//         if (!rtmp) {
//             throw std::runtime_error("Failed to allocate RTMP instance.");
//         }
//         RTMP_Init(rtmp);
//         // Configure server settings (example)
//         if (!RTMP_SetupURL(rtmp, const_cast<char*>(server_address_.c_str()))) {
//             throw std::runtime_error("Failed to set RTMP server URL.");
//         }
//         RTMP_EnableWrite(rtmp);
//         // Start server loop
//         if (!RTMP_Connect(rtmp, nullptr)) {
//             throw std::runtime_error("Failed to start RTMP server.");
//         }
//         std::cout << "RTMP server running!" << std::endl;

//         // Simple server loop (example)
//         while (RTMP_IsConnected(rtmp)) {
//             // Handle incoming RTMP data
//         }

//         RTMP_Close(rtmp);
//         RTMP_Free(rtmp);
//     }

// private:
//     std::string server_address_;
// };

// PYBIND11_MODULE(rtmp_server, m) {
//     py::class_<RTMPServer>(m, "RTMPServer")
//         .def(py::init<const std::string&>())
//         .def("start_server", &RTMPServer::start_server);
// }
