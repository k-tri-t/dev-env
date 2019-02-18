Development environment for Windows
----

Launch Powershell(Admin) `Win+x > a`

# Install packages by chocolatey

Install chocolatey

```
> Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
> choco /?
```

Install git by choco

```
> choco install git -y
```

Restart Powershell(Admin) to add the git bin path to PATH env

Install packages (application) by choco

```
> cd $HOME
> git clone https://github.com/k3trisnake/dev-env.git
> cd dev-env\windows
> choco install choco-package.config -y
```

# SSH Key and agent

Genrate SSH Key on git-bash

```
$ ssh-keygen -t ed25519 -C "email@example.com"
```

Add SSH public key `.ssh/id_ed25519.pub` to Gitlab and Github.

Convert SSH secret to PPK format.

- WIP

To load SSH key on startup, copy pagent shortcut to the Startup directory.
- src: dev-env\windows\PAGEANT.lnk
- dest: $HOME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\PAGEANT.lnk

# VSCode settings

- Launch Command pallet `Ctrl+Shift+p`
- Search `Install Extentions`
- Type `Setting Sync`
- Click Install

## Generate Github access token

- Open https://github.com/settings/tokens/new
- Enter description
- Select gist checkbox
- Click Generate token
- Copy token to clipboard

see also:
  - https://github.com/shanalikhan/code-settings-sync

## Upload Settings For the first time

Type ">Sync" In Command Palette into order download / upload

## Download Settings

Type ">Sync" In Command Palette into order download / upload

# Configuration after install

Launch Powershell(*Not* Admin) `Win+x > i`

Config git global configuration
```
> git config --global user.email "username@domain.com"
> git config --global user.name "User Name"
```


# Export choco config (package list)

Launch Powershell(Admin) `Win+x > a`

```
> Set-ExecutionPolicy RemoteSigned
> cd C:\Users\username\dev-env\windows
> .\choco-export-pkgs.ps1
> Set-ExecutionPolicy Restricted
```

# Install custom package (e.g. link broken) (Optional)

```
> cd dev-env\windows\my-global
> choco pack
> choco install my-global -s .
```

# Reference
- https://qiita.com/jiro4989/items/fffc433d2eddcfa8edd5
