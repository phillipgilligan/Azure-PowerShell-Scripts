function menu {
    Write-Host "Welcome to Azure Powershell Network Deployment tool."
    Write-Host "Please Choose an option:"
    Write-Host "1. Authenticate"
    Write-Host "2. Set Subscription"
    Write-Host "3. Create Resource Group"
    Write-Host "4. Initiate Network Deployment"
    Write-Host "5. Exit"
    $menu_option = Read-Host -Prompt "Choice"
    choice_logic ($menu_option)
}

function choice_logic ($menu_option) {
    if ($menu_option -eq "1") {
        az_auth
    }
    elseif ($menu_option -eq "2") {
        az_sub
        menu
    }
    elseif ($menu_option -eq "3") {
        az_sub
        menu
    }
    elseif ($menu_option -eq "4") {
        az_sub
        menu
    }
    elseif ($menu_option -eq "5") {
        exit_program
    }
    else{
        Write-Host "Invalid choice.."
        menu
    }
}
function az_auth {
    az login
}

function az_sub {
    Get-AzSubscription | Out-Host
    $subscription = Read-Host - Prompt "Please enter the subscription ID to deploy to:"
    return $subscription
}

function az-rg {
    $rg_name = Read-Host - Prompt "Please enter the rg name"
    $rg_location = Read-Host - Prompt "Please enter the rg location eg. 'Central US'"
    New-AzResourceGroup -Name $rg_name -Location $rg_location
}
function deploy_network {

}

function exit_program {
    exit
}

menu

