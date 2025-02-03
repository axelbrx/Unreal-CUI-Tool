#include <iostream>
#include "UProjectParser.h"
#include "BuildManager.h"
#include "PackageManager.h"

int main(int argc, char* argv[]) {
    if (argc < 3) {
        std::cerr << "\033[1;33mUsage : MyTool <uprojectPath> <command (show-infos, build, package)> [packagePath]\033[0m" << std::endl;
        return 1;
    }

    std::string uprojectPath = argv[1];
    std::string command = argv[2];

    if (command == "show-infos") {
        UProjectParser::ShowInfo(uprojectPath);
    } else if (command == "build") {
        // Créer une instance de BuildManager pour appeler Build()
        BuildManager buildManager;
        buildManager.Build(uprojectPath);  // Appel de la méthode non statique sur l'instance
    } else if (command == "package") {
        if (argc < 4) {
            std::cerr << "Veuillez fournir le chemin de sortie pour le package." << std::endl;
            return 1;
        }
        std::string outputPath = argv[3];
        PackageManager::Package(uprojectPath, outputPath);
    } else {
        std::cerr << "Commande inconnue : " << command << std::endl;
    }

    return 0;
}
