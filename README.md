# 1. Own environment settings

Description of custom bash aliases, installed applications, etc... to set up environment!

<!-- TOC -->

- [1. Own environment settings](#1-own-environment-settings)
    - [1.1. Bash](#11-bash)
        - [1.1.1. Aliases](#111-aliases)
    - [1.2. VS Code](#12-vs-code)
        - [1.2.1. User settings](#121-user-settings)
        - [1.2.2. Extensions](#122-extensions)
            - [1.2.2.1. tl;dr](#1221-tldr)
            - [1.2.2.2. Tooling](#1222-tooling)
            - [1.2.2.3. Formatting & linting](#1223-formatting--linting)
            - [1.2.2.4. Theming](#1224-theming)
            - [1.2.2.5. Other](#1225-other)
        - [1.2.3. SSH keys](#123-ssh-keys)

<!-- /TOC -->

## 1.1. Bash

### 1.1.1. Aliases

Insert it at the end of your _"~/.bashrc"_

```bash
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

Create a _"~/.bash_aliases"_ if it does not exist yet and add

```bash
# ------------------------------------------------------------------------------------------------------------------
# Custom aliases
# ------------------------------------------------------------------------------------------------------------------
currentAliasesFilename='/c/Users/ngigou/installationFolder/cmder/vendor/git-for-windows/etc/profile.d/aliases.sh'
devFolder='/c/Users/ngigou/dev'
appsFolder="$devFolder/apps/sw/micro-services/pilot-supervision"
 
alias yolo="echo je suis dans $currentAliasesFilename"
alias aliases="code $currentAliasesFilename"
alias dev="cd $devFolder"
alias ls="ls -F --color=auto --show-control-chars"
alias ll="ls -l"
alias cls="clear"
alias e.="explorer ."
alias xx="exit"
alias ii="npm install --no-audit --no-progress"
alias linked="ls -l node_modules | grep ^l"
alias stush="git stash && git push && git stash pop"
alias slush="git stash && git pull && git stash pop"
alias logz="git log -5"
alias tagz="git tag -l | sort -V"
alias gdiff="git diff"
alias gst="git status"
alias gbranch="git branch -vv"
 
alias man='echo -e "
  Hey dude, enjoy!
  Current aliases filename: $currentAliasesFilename
 
  Meta-commands:
        yolo: get the path of the current aliases file
        aliases: edit the current aliases
 
  Go-to:
        dev: go to the dev folder
 
  Explorer:
        ls: list the files (but not the hidden ones)
        ll: list the files, even the hidden ones
        cls: clear the current shell
        e.: open an explorer windows in the current folder
        xx: close the current shell
 
  Development:
        ii: install npm dependencies
        linked: get the list of linked modules within the ./node_modules directory
 
  Git:
        stush: run git stash && git push && git stash pop
        slush: run git stash && git pull && git stash pop
        tagz: list the project tags in a natural order
        logz: get the 5 latest commits logs
        gdiff: run git diff
        gst: run git status
        gbranch: list the current prettified local branches
 
    "'
```

**Nota**: You may have to change the path to the _"dev/"_ folder for the **dev** alias

## 1.2. VS Code

### 1.2.1. User settings

```json
{
    // ==============================================================================
    // VSCode features (editor, workbench, files, ...)
    // ==============================================================================
    "window.zoomLevel": -1,
    "workbench.startupEditor": "none",
    "editor.suggestSelection": "first",
    "editor.guides.bracketPairs": true,
    "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue",
    "files.autoSave": "onFocusChange",
    "workbench.iconTheme": "material-icon-theme",
    "files.eol": "\n", // Unix line endings: \n for LF // Windows line endings: \r\n for CRLF
    "editor.rulers": [
        80,
        {
            "column": 120,
            "color": "#ff00FF"
        }
    ],

   
    // ==============================================================================
    // Version System Control & Git
    // ==============================================================================
    "scm.alwaysShowRepositories": true,
    "scm.repositories.visible": 0,
    "git.path": "C:\\Users\\ngigou\\installationFolder\\cmder\\vendor\\git-for-windows\\bin\\git.exe",
    "git.confirmSync": false,
    "git.requireGitUserConfig": false,
    "git.autofetch": true,
    "diffEditor.ignoreTrimWhitespace": false,
    "[json]": {
        "editor.defaultFormatter": "vscode.json-language-features"
    },
   
   
    // ==============================================================================
    // Extensions
    // ==============================================================================
    "cSpell.userWords": [
        "datetime",
        "endregion",
        "gigouni",
        "gitlab",
        "ipmitool",
        "konami",
        "npmignore",
        "totomaster",
        "vuex"
    ],
    "[html]": {
        "editor.defaultFormatter": "vscode.html-language-features"
    },
   
    // ==============================================================================
    // Python
    // ==============================================================================
    "python.linting.enabled": true,
    "python.linting.lintOnSave": true
}
```

### 1.2.2. Extensions

Local extensions can be listed using

```shell
code --list-extensions
```

#### 1.2.2.1. tl;dr

```shell
code --install-extension AlanWalk.markdown-toc
code --install-extension bierner.markdown-emoji
code --install-extension bierner.markdown-preview-github-styles
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension dbaeumer.vscode-eslint
code --install-extension octref.vetur
code --install-extension Shan.code-settings-sync
code --install-extension vscode-icons-team.vscode-icons
code --install-extension zhuangtongfa.Material-theme
```

#### 1.2.2.2. Tooling

```shell
code --install-extension octref.vetur                               # Vue.js tooling
```

#### 1.2.2.3. Formatting & linting

```shell
code --install-extension dbaeumer.vscode-eslint                     # ESLint linting
code --install-extension AlanWalk.markdown-toc                      # Markdown Table of Contents generation
code --install-extension DavidAnson.vscode-markdownlint             # Markdown linting
code --install-extension bierner.markdown-emoji                     # Replace emote code (aka :tada:) to actual emote
```

#### 1.2.2.4. Theming

```shell
code --install-extension vscode-icons-team.vscode-icons             # Set of icons for files in Files Explorer
code --install-extension zhuangtongfa.Material-theme                # Material design theme
code --install-extension bierner.markdown-preview-github-styles     # GitHub Markdown theming
```

#### 1.2.2.5. Other

```shell
code --install-extension Shan.code-settings-sync                    # VS Code extensions synchronizer
```

### 1.2.3. SSH keys

To generate a new SSH key for your hub (GitHub, GitLab), you can use the bash script

```bash
bash ./generate_new_ssh_key_id_ed25519.sh
```

Don't forget to change the `<your-email-address>` value before running the script
