#ifndef BUILDMANAGER_H
#define BUILDMANAGER_H

#include <string>

class BuildManager {
public:
    // Fonction pour lancer la construction du projet Unreal
    void Build(const std::string& uprojectPath);
};

#endif // BUILDMANAGER_H
