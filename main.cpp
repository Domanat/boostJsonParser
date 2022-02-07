#include <iostream>
#include <boost/json.hpp>
#include <string>
#include <fstream>
#include "ConfigReader/ConfigReader.hpp"

using namespace boost;

void pretty_print(json::value const& jv, std::string* indent = nullptr )
{
    std::string indent_;
    if(! indent)
        indent = &indent_;
    switch(jv.kind())
    {
    case json::kind::object:
    {
        std::cout << "{\n";
        indent->append(4, ' ');
        auto const& obj = jv.get_object();
        if(!obj.empty())
        {
            auto it = obj.begin();
            for(;;)
            {
                
                std::cout << *indent << json::serialize(it->key()) << " : " << json::serialize(it->value());
                
                if(++it == obj.end())
                    break;
                std::cout << ",\n";
            }
        }
        std::cout << "\n";
        indent->resize(indent->size() - 4);
        std::cout << *indent << "}";
        break;
    }
    }
}

int main()
{
    const std::string filename = "config.json";
    Config config;
    ReadConfig(config, filename);

    return 0;
}