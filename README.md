# Unreal CUI Tool

L'outil d'abord nommé "MyTool" (Unreal CUI Tool) est un outil de ligne de commande pour gérer les projets Unreal Engine. Il permet d'afficher des informations sur un projet, de le construire et de le packager.

## Prérequis

- CMake
- Un compilateur C++ (comme g++)
- Unreal Engine

**Un build est déjà disponible dans le dossier `/build`

## Installation

1. Clonez le dépôt :
    ```sh
    git clone <URL_DU_DEPOT>
    cd <NOM_DU_DEPOT>
    ```

2. Créez un répertoire de build et générez les fichiers de construction :
    ```sh
    mkdir build
    cd build
    cmake ..
    ```

3. Compilez le projet :
    ```sh
    make
    ```

## Utilisation

L'outil `MyTool` accepte les commandes suivantes :

- `show-infos` : Affiche des informations sur le projet.
- `build` : Construit le projet.
- `package` : Package le projet.

### Exemple de commandes

```sh
./MyTool <chemin_du_fichier_uproject> show-infos
./MyTool <chemin_du_fichier_uproject> build
./MyTool <chemin_du_fichier_uproject> package <chemin_de_sortie>
```
