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
        std::cout << "Nom du jeu : Non spécifié" << std::endl;
    }

    // Récupérer la version d'unreal. Si ressemblant à "{XXXX}" (entre crochets)," alors c'est un from source, indiquer. "From source", sinon la version.
    if (projectJson.contains("EngineAssociation")) {
        std::string engineAssociation = projectJson["EngineAssociation"];
        if (engineAssociation.find("{") != std::string::npos && engineAssociation.find("}") != std::string::npos) {
            std::cout << "Version d'Unreal Engine : From source" << std::endl;
        } else {
            std::cout << "Version d'Unreal Engine : " << engineAssociation << std::endl;
        }
    } else {
        std::cout << "Version d'Unreal Engine : Non trouvée" << std::endl;
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
