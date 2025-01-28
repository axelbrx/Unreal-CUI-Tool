#include <iostream>
#include <cstdlib>
#include "PackageManager.h"

void PackageManager::Package(const std::string& uprojectPath, const std::string& outputPath) {
    std::string command = "./Engine/Build/BatchFiles/RunUAT.bat BuildCookRun -project=\"" + uprojectPath + "\" -noP4 -platform=Win64 -clientconfig=Development -serverconfig=Development -pak -archive -archivedirectory=\"" + outputPath + "\"";
    std::cout << "Exécution de la commande : " << command << std::endl;

    int result = std::system(command.c_str());
    if (result == 0) {
        std::cout << "Packaging réussi !" << std::endl;
    } else {
        std::cerr << "Échec du packaging." << std::endl;
    }
}
