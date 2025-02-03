#include "BuildManager.h"
#include <iostream>
#include <fstream>
#include <cstdlib>  // Pour la fonction system()
#include <filesystem>
#include "json.hpp"

void BuildManager::Build(const std::string& uprojectPath) {
    std::cout << "\033[1;33mDémarrage de la construction du projet à partir du fichier : " << uprojectPath << std::endl;
    //Demander le type de build entre : Development, Shipping, Test, DebugGame
    std::string buildType;
    // Couleur blanc pour le texte : \033[1;37m
    std::cout << "\033[0mType de build (Development, Shipping, Test, DebugGame) : ";
    std::cin >> buildType;
    //Vérification du type
    if (buildType != "Development" && buildType != "Shipping" && buildType != "Test" && buildType != "DebugGame") {
        std::cerr << "[1;31mType de build invalide.\033[0m" << std::endl;
        return;
    }



    // Extraire le répertoire du fichier .uproject
    std::string projectDir = std::filesystem::path(uprojectPath).parent_path().string();

    // Extraire le nom du projet du fichier .uproject par le json
    std::ifstream file(uprojectPath);
    if (!file.is_open()) {
        std::cerr << "[1;31mImpossible d'ouvrir le fichier : \033[0m" << uprojectPath << std::endl;
        return;
    }

    nlohmann::json projectJson;
    file >> projectJson;

    std::string projectName = "UnknownName";
    if (projectJson.contains("Modules") && !projectJson["Modules"].empty()) {
        projectName = projectJson["Modules"][0]["Name"];
    }





    // Construire la commande de build en fonction du système d'exploitation
    std::string buildCommand;

#ifdef _WIN32
    // Windows - Utiliser Build.bat
    buildCommand = "./Engine/Build/BatchFiles/Build.bat " + projectName + " " + buildType + " Mac " + uprojectPath + " -waitmutex";
#elif __APPLE__
    // macOS - Utiliser Build.sh
    buildCommand = "./Engine/Build/BatchFiles/Mac/Build.sh " + projectName + " " + buildType + " Mac " + uprojectPath + " -waitmutex";
#else
    #error "Plateforme non supportée"
#endif

    std::cout << "\033[1;33mExécution de la commande de build : \033[0m" << buildCommand << std::endl;

    // Utilisation de system() pour exécuter la commande
    int result = std::system(buildCommand.c_str());

    if (result == 0) {
        std::cout << "\033[1;32mConstruction terminée avec succès.\033[0m" << std::endl;
    } else {
        std::cerr << "\033[1;31mConstruction échouée.\033[0m" << std::endl;
    }
}