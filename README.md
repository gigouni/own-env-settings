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
            - [1.2.2.2. Formatting & linting](#1222-formatting--linting)
            - [1.2.2.3. Theming](#1223-theming)
            - [1.2.2.4. Other](#1224-other)

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
# ============================================
# Custom aliases
# ============================================

# Global aliases
alias ll='ls -la --color=auto'
alias cls='clear'
alias xx='exit'

# Development aliases
alias dev='cd D:/dev'
```

**Nota**: You may have to change the path to the _"dev/"_ folder for the **dev** alias

## 1.2. VS Code

### 1.2.1. User settings

```json
{
    "window.zoomLevel": -2,
    "sync.gist": "1c9a0ebde17a9037cc2f694365afff1a",
    "workbench.colorTheme": "One Dark Pro",
    "workbench.iconTheme": "vscode-icons",
    "files.eol": "\n"
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

#### 1.2.2.2. Formatting & linting

```shell
code --install-extension dbaeumer.vscode-eslint                     # ESLint linting
code --install-extension AlanWalk.markdown-toc                      # Markdown Table of Contents generation
code --install-extension DavidAnson.vscode-markdownlint             # Markdown linting
code --install-extension bierner.markdown-emoji                     # Replace emote code (aka :tada:) to actual emote
```

#### 1.2.2.3. Theming

```shell
code --install-extension vscode-icons-team.vscode-icons             # Set of icons for files in Files Explorer
code --install-extension zhuangtongfa.Material-theme                # Material design theme
code --install-extension bierner.markdown-preview-github-styles     # GitHub Markdown theming
```

#### 1.2.2.4. Other

```shell
code --install-extension Shan.code-settings-sync                    # VS Code extensions synchronizer
```
