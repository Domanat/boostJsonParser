#include <iostream>
#include <boost/json.hpp>
#include <string>
#include <fstream>

struct Config
{
    std::string rootCACertificate; // Root certificate of CA 1
    std::string RMQlogin;      // Login into RabbitMQ 1
    std::string RMQpassword;   // Password to RabbitMQ 1
    std::string searchQName;// Name of the search queue 1
    std::string resultSearchQName; // Name of the result search queue 1
    std::string RMQserverHost; // Server host of RabbitMQ 1
    u_int16_t RMQserverPort; //Server port of RabbitMQ 1

    u_int16_t serverPort;   //Server port of ScreenRecorder api 1
    std::string serverHost; //Server host of ScreenRecorder api 1
    std::string pathToLogs;  //Path to logs

};

void ReadConfig(Config& config, std::string filename);
    