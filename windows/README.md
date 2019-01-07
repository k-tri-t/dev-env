Development environment for Windows
----

Launch Powershell(Admin)
```
Win+x > a
```

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
> cd C:\Users\username
> git clone https://github.com/k3trisnake/dev-env.git
> cd dev-env\windows
> choco install choco-package.config -y
```

# Atom editor settings

Launch atom editor

Search "sync-settings" package and Install it

## Generate Github gist and access token

- Open https://github.com/settings/tokens/new
- Enter description and select gist checkbox
- Click Generate token
- Copy token to Personal Access Token in Atom sync-settings settings
- If you have already sync-settings gist, Copy gist ID to Gist ID in Atom sync-settings settings
- Else Create secret Gist on github
- Restore sync-settings

see also:
  - https://qiita.com/T_M/items/0fb0804eb1fd256aac4e

# Configuration after install

Launch Powershell(*Not* Admin)
```
Win+x > i
```

Config git global configuration
```
> git config --global user.email "username@domain.com"
> git config --global user.name "User Name"
```


# Export choco config (package list)

Launch Powershell(Admin)
```
Win+x > a
```

```
> Set-ExecutionPolicy RemoteSigned
> cd C:\Users\username\dev-env\windows
> .\choco-export-pkgs.ps1
> Set-ExecutionPolicy Restricted
```

# Reference
- https://qiita.com/jiro4989/items/fffc433d2eddcfa8edd5
