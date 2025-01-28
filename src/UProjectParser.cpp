#include <iostream>
#include <fstream>
#include "json.hpp"
#include "UProjectParser.h"

void UProjectParser::ShowInfo(const std::string& uprojectPath) {
    std::ifstream file(uprojectPath);
    if (!file.is_open()) {
        std::cerr << "Impossible d'ouvrir le fichier : " << uprojectPath << std::endl;
        return;
    }

    nlohmann::json projectJson;
    file >> projectJson;

    if (projectJson.contains("Modules") && !projectJson["Modules"].empty()) {
        std::cout << "Nom du jeu : " << projectJson["Modules"][0]["Name"] << std::endl;
    } else {
        std::cout << "Nom du jeu : Non trouvé" << std::endl;
    }

    std::cout << "Version d'Unreal : ";
    if (projectJson.contains("EngineAssociation")) {
        std::cout << projectJson["EngineAssociation"] << std::endl;
    } else {
        std::cout << "From Source" << std::endl;
    }

    std::cout << "Plugins utilisés :" << std::endl;
    if (projectJson.contains("Plugins")) {
        for (const auto& plugin : projectJson["Plugins"]) {
            std::cout << "- " << plugin["Name"] << std::endl;
        }
    } else {
        std::cout << "Aucun plugin détecté." << std::endl;
    }
}
