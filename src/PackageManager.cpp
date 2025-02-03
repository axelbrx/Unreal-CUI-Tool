#include <iostream>
#include <cstdlib>
#include "PackageManager.h"
// CMDLINE : Parsing command line: -ScriptsForProject=/Users/axelbrx/Documents/UnrealEngine/Games/testsourceproject/testsourceproject.uproject BuildCookRun -project=/Users/axelbrx/Documents/UnrealEngine/Games/testsourceproject/testsourceproject.uproject -noP4 -clientconfig=Development -serverconfig=Development -nocompile -nocompileeditor -installed -unrealexe="/Users/Shared/Epic Games/UE_5.4/Engine/Binaries/Mac/UnrealEditor.app/Contents/MacOS/UnrealEditor" -utf8output -platform=Mac -build -cook -map=FirstPersonMap+FirstPersonMap -CookCultures=en -unversionedcookedcontent -stage -package -cmdline="FirstPersonMap -Messaging" -addcmdline="-SessionId=2ACD82B0914C390A816F19A7AF795533 -SessionOwner='axelbrx' -SessionName='MacCook' "

void PackageManager::Package(const std::string& uprojectPath, const std::string& outputPath) {
    std::string packageCommand;
    // Construire la commande de package en fonction du système d'exploitation
    #ifdef _WIN32
        // Windows - Utiliser RunUAT.bat
        packageCommand = "";
    #elif __APPLE__
        // macOS - Utiliser RunUAT.sh
        packageCommand = "./Engine/Build/BatchFiles/RunUAT.sh BuildCookRun -project=" + uprojectPath + " -noP4 -clientconfig=Development -serverconfig=Development -nocompile -nocompileeditor -installed -unrealexe=\"./Engine/Binaries/Mac/UE4Editor.app/Contents/MacOS/UE4Editor\" -utf8output -platform=Mac -build -cook -CookCultures=en -unversionedcookedcontent -stage -package -cmdline=\"FirstPersonMap -Messaging\" -addcmdline=\"-SessionId=2ACD82B0914C390A816F19A7AF795533 -SessionOwner='axelbrx' -SessionName='MacCook'\"";
    #else
        #error "Plateforme non supportée"
    #endif

    std::cout << "\033[1;33mExécution de la commande de package : \033[0m" << packageCommand << std::endl;

    // Utilisation de system() pour exécuter la commande
    system(packageCommand.c_str());
}
