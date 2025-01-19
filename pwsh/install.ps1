
# add to profile
function AddStartupCommand {
  Add-Content $CurrentProfile "`n# My dotfiles"
  Add-Content $CurrentProfile "$StartupCommand"  
}

function InstallOhMyPosh {
  if ($IsWindows) {
    winget install JanDeDobbeleer.OhMyPosh -s winget
  }
  if ($IsMacOS) {
    brew install jandedobbeleer/oh-my-posh/oh-my-posh
  }
  if ($IsLinux) {
    brew install jandedobbeleer/oh-my-posh/oh-my-posh
  }
}

function UpdateOhMyPosh {
  if ($IsWindows) {
    winget upgrade JanDeDobbeleer.OhMyPosh -s winget
  }
  if ($IsMacOS) {
    brew update && brew upgrade oh-my-posh
  }
  if ($IsLinux) {
    brew update && brew upgrade oh-my-posh
  }
}

function CloneFromGit {
  git clone --recursive https://github.com/bdodoiu/dotfiles.git ${HOME}/.dotfiles
}

function UpdateFromGit {
  git -C ${HOME}/.dotfiles pull
}

function InstallDependencies {
  CloneFromGit
  InstallOhMyPosh
}


function Update {
  UpdateFromGit
  UpdateOhMyPosh
}

function Todo {
  # install nerd fonts https://www.nerdfonts.com/font-downloads
  # configure Terminal / powershell profile to use nerd fonts
}

$CurrentProfile = $PROFILE
$StartupCommand = ". ""`$Home/.dotfiles/pwsh/startup.ps1"""
if(-not(Test-Path -Path $CurrentProfile -PathType Leaf)) {
  $Installed = $false
  New-Item -Path "$CurrentProfile" -ItemType File -Force
} else {
  $Installed=Select-String -Path $CurrentProfile -Pattern "$StartupCommand" -SimpleMatch -Quiet
}
if ($Installed -ne $false)
{
  Write-Host "Already Installed. Updating!"
  Update
}
else
{
  Write-Host "Not installed"
  InstallDependencies
  AddStartupCommand
}
