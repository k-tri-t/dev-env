Development environment for Windows
----

Launch Powershell(Admin)
```
Win+x > a
```

# Install

Install chocolatey

```
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco /?
```

Install packages (application) by choco

```
choco install choco-package.config -y
```

# Export choco config (package list)

```
powershell Set-ExecutionPolicy RemoteSigned
powershell .\out_pkgs.ps1
powershell Set-ExecutionPolicy Restricted
```

# Reference
- https://qiita.com/jiro4989/items/fffc433d2eddcfa8edd5
