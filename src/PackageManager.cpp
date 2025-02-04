#include <iostream>
#include <cstdlib>
#include "PackageManager.h"
// CMDLINE : Parsing command line: -ScriptsForProject=/Users/axelbrx/Documents/UnrealEngine/Games/testsourceproject/testsourceproject.uproject BuildCookRun -project=/Users/axelbrx/Documents/UnrealEngine/Games/testsourceproject/testsourceproject.uproject -noP4 -clientconfig=Development -serverconfig=Development -nocompile -nocompileeditor -installed -unrealexe="/Users/Shared/Epic Games/UE_5.4/Engine/Binaries/Mac/UnrealEditor.app/Contents/MacOS/UnrealEditor" -utf8output -platform=Mac -build -cook -map=FirstPersonMap+FirstPersonMap -CookCultures=en -unversionedcookedcontent -stage -package -cmdline="FirstPersonMap -Messaging" -addcmdline="-SessionId=2ACD82B0914C390A816F19A7AF795533 -SessionOwner='axelbrx' -SessionName='MacCook' "

void PackageManager::Package(const std::string& uprojectPath, const std::string& outputPath) {
    std::string packageCommand;
    // Construire la commande de package en fonction du système d'exploitation
    #ifdef _WIN32
        // Windows
        std::cout << "\033[1;33mEtant sur Mac, je ne peux pas tester le package Windows, exécution quand même.\n\033[0m" << std::endl;
        packageCommand = "./Engine/Build/BatchFiles/RunUAT.bat BuildCookRun -project=" + uprojectPath + " -noP4 -clientconfig=Shipping -serverconfig=Development -nocompile -nocompileeditor -installed -utf8output -platform=Win64 -build -cook -CookCultures=en -unversionedcookedcontent -stage -package -archive=" + outputPath;
    #elif __APPLE__
        // macOS
        std::cout << "\033[1;33mExécution de la commande de package pour MacOS\n" << std::endl;
        packageCommand = "./Engine/Build/BatchFiles/RunUAT.sh BuildCookRun -project=" + uprojectPath + " -noP4 -clientconfig=Shipping -serverconfig=Development -nocompile -nocompileeditor -installed -utf8output -platform=Mac -build -cook -CookCultures=en -unversionedcookedcontent -stage -package -archive=" + outputPath;
    #else
        #error "Plateforme non supportée"
    #endif

    std::cout << "\033[1;33mExécution de la commande de package : \033[0m" << packageCommand << std::endl;

    // Utilisation de system() pour exécuter la commande et vérification
    system(packageCommand.c_str());
    if (system(packageCommand.c_str()) != 0) {
        std::cerr << "\033[1;31mErreur lors de la commande de package.\033[0m" << std::endl;
        return;
    }
    std::cout << "\033[1;32mPackage terminé avec succès.\033[0m" << std::endl;
}
