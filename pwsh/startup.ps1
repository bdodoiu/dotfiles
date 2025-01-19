function kuco([string]$clusterName)
{
    if(!$clusterName) {
      kubectl config get-contexts
    } else {
      kubectl config use-context $clusterName
    }
}

function kude([string]$describe)
{
    kubectl describe $describe
}

$Env:KUBECONFIG="$Env:KUBECONFIG;$(Get-ChildItem -Path $HOME/.kube/merge | join-string -separator ';')"
kubectl completion powershell | Out-String | Invoke-Expression

#oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/mojada.omp.json' | Invoke-Expression