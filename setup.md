# Developer Setup

- **Platform:** Windows 11 Professional
- **Feature:** Windows Subsystem for Linux (WSL)
- **Operating System:** Debian 11 (bullseye)

After enabling WSL on Windows 11, Debian was installed via the Microsoft Store. Once installed, the following updates below were made.

## Debian packages

- `git` Source control
- `build-essentials` Developer utilities
- `podman` Containers
- `zsh` Shell

## Software Installations

- `az` Azure CLI
- `code` Visual Studio Code
- `firefox` Browser
- `git-town` Source control developer utilities
- `google-chrome` Browser
- `oh-my-zsh` Shell tools

## Configuration

### ~/.zshrc

```
# Disable warnings about using `code` inside WDL distribution
export DONT_PROMPT_WSL_INSTALL=1

# Disable telemetry from tools
export AZURE_CORE_COLLECT_TELEMETRY=0
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Add `firefox` to the path
export PATH="/opt/firefox/./:$PATH"
```

### Terminal

```
git config --global user.email "ericis@users.noreply.github.com"
git config --global user.name "Eric Swanson"
```
