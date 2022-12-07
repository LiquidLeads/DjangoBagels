#!/usr/bin/bash/env bash

#★ Intall PowerShell via 'apt-get'
#- Update Package Index & Install pre-requisite packages.
	sudo apt-get update
	sudo apt-get install -y wget apt-transport-https software-properties-common

#- Download & Register the Microsoft repository GPG keys
	wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
	sudo dpkg -i packages-microsoft-prod.deb

#- Update Package Index with 'packages.microsoft.com'
	sudo apt-get update

#- Install & (hopefully start) PowerShell
	sudo apt-get install -y powershell
	pwsh -Command Write-Host "PowerSHell Installed Successfully"



#? Direct Download URL:
# https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb
