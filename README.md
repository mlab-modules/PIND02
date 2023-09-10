# MODUL01 - Template to create a new MLAB module

MLAB's module template repository. Please [use the "Use this template" button](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template#creating-a-repository-from-a-template) to create a new MLAB module from this repository.

The new module repository name must be identical to proposed new module name. Please look in [MLAB design rules](https://wiki.mlab.cz/doku.php?id=en:rules#identification_of_modules) for acceptable naming convention.
After creating of the new repository, [rename](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-branches-in-your-repository/renaming-a-branch) the default git branch to be named corresponding to the revision of the module. Generally adding the "A" suffix to the module name. Therefore new repository named MODULENAME01 should has the branch name MODULENAME01A. 

Then [clone the new MLAB's module repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) to your workstation. After that perform following steps in the cloned repository. 

## 1. Initialize the assets submodule, update it to latest version
```bash
git submodule update --init --remote
```

## 2. Copy the fresh automation workflows
    
The following command copy up-to-date KiCAD automation workflow to the new MLAB module repository.
```bash
cd doc/assets/workflows/
./copy_workflow_to_repo.sh
```
## 3. Start the design work 

In that point you should start to design the new MLAB module project by using the [design tools](https://wiki.mlab.cz/doku.php?id=en:tools).

## 4. Replace this readme

This readme should be replaced by a description of the yours new module project! :)
Please look to the README.md in root of other modules to get an ispiration. 

Thanks for contributing! 


    
