#include "ConfigReader.hpp"

void ReadConfig(Config& config, std::string filename)
{
    std::string temp;
    std::ifstream file(filename);
    
    if (!file.is_open())
    {
        std::cout << "Not opened" << std::endl;
        return;
    }
    std::string result = "";
    while (getline(file, temp))
    {
        result += temp;
    }

    boost::json::value jv = boost::json::parse(result);

    switch (jv.kind())
    {
        
        case boost::json::kind::object:
        {
            auto const& obj = jv.get_object();
            if (!obj.empty())
            {
                auto it = obj.begin();
                for (int i = 0; it != obj.end(); it++)
                {
                    if (it->key() == "RMQlogin")
                    {
                        config.RMQlogin = boost::json::serialize(it->value());
                        continue;
                    }
                    if (it->key() == "RMQpassword")
                    {
                        config.RMQpassword = boost::json::serialize(it->value());
                        continue;
                    }
                    if (it->key() == "RMQserverHost")
                    {
                        config.RMQserverHost = boost::json::serialize(it->value());
                        continue;
                    }
                    if (it->key() == "RMQserverPort")
                    {
                        std::string value = boost::json::serialize(it->value());
                        config.RMQserverPort = std::atoi(value.substr(1, value.size() - 2).c_str());
                        continue;
                    }
                    if (it->key() == "searchQName")
                    {
                        config.searchQName = boost::json::serialize(it->value());
                        continue;
                    }
                    if (it->key() == "resultSearchQName")
                    {
                        config.resultSearchQName = boost::json::serialize(it->value());
                        continue;
                    }
                    if (it->key() == "serverPort")
                    {
                        std::string value = boost::json::serialize(it->value());
                        config.serverPort = std::atoi(value.substr(1, value.size() - 2).c_str());
                        continue;
                    }
                    if (it->key() == "serverHost")
                    {
                        config.serverHost = boost::json::serialize(it->value());
                        continue;
                    }
                    if (it->key() == "pathToLogs")
                    {
                        config.pathToLogs = boost::json::serialize(it->value());
                        continue;
                    }
                    if (it->key() == "rootCACertificate")
                    {
                        config.rootCACertificate = boost::json::serialize(it->value());
                        continue;
                    }
                }
            }
            break;
        }
    }

    std::cout << config.RMQlogin << std::endl;
    std::cout << config.RMQpassword << std::endl;
    std::cout << config.RMQserverHost << std::endl;
    std::cout << config.RMQserverPort << std::endl;
    std::cout << config.searchQName << std::endl;
    std::cout << config.resultSearchQName << std::endl;
    std::cout << config.serverHost << std::endl;
    std::cout << config.serverPort << std::endl;
    std::cout << config.pathToLogs << std::endl;
    std::cout << config.rootCACertificate << std::endl;

}