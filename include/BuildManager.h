#ifndef BUILDMANAGER_H
#define BUILDMANAGER_H

#include <string>

class BuildManager {
public:
    static void Build(const std::string& uprojectPath);
};

#endif // BUILDMANAGER_H
