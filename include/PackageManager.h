#ifndef PACKAGEMANAGER_H
#define PACKAGEMANAGER_H

#include <string>

class PackageManager {
public:
    static void Package(const std::string& uprojectPath, const std::string& outputPath);
};

#endif // PACKAGEMANAGER_H
