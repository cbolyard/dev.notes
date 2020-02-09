# Python VSCode Windows Setup

1. Optional
    1. install chocolatey 
    1. https://chocolatey.org/docs/installation
    
    1. git
    1. https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
    1. configure ssh https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
    1. git extension for powershell
    1. https://github.com/dahlbyk/posh-git
    
1. vscode extensions
``` ps1
code --install-extension ms-vscode.powershell
code --install-extension ms-python.python
```

1. create root folder for project
1. make sure to save as workspace in vscode

1. install python 
1. https://www.python.org/downloads/windows/
1. add python to windows path

1. update package manager
``` ps1
python -m pip install --upgrade pip
```
1. create new virtual environment 
1. https://code.visualstudio.com/docs/python/environments
```ps1
#(windows syntax)
python -m venv .venv
```
1. vscode -> Python: Select Interpreter
1. select your virtual environment
1. open a new terminal, it should reference your virtual environment    

Test Python
1. Open test.py
1. Ctrl+F5
1. Test debugger
1. F5