#include <iostream>
#include <cstdlib>
#include "BuildManager.h"

void BuildManager::Build(const std::string& uprojectPath) {
    std::string command = "./Engine/Binaries/DotNET/UnrealBuildTool.exe Development Win64 -Project=\"" + uprojectPath + "\"";
    std::cout << "Exécution de la commande : " << command << std::endl;

    int result = std::system(command.c_str());
    if (result == 0) {
        std::cout << "Compilation réussie !" << std::endl;
    } else {
        std::cerr << "Échec de la compilation." << std::endl;
    }
}
