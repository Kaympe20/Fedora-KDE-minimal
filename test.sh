#!/bin/bash
PKGS=(
	"akregator"
	"dnfdragora"
	"dragon"
	"elisa-player"
	"mediawriter"
	"kaddressbook"
	"kmahjongg"
	"kmail"
	"kmines"
	"kmousetool"
	"kmouth"
	"kolourpaint"
	"konversation"
	"kontact"
	"korganizer"
	"kpat"
	"krdc"
	"krfb"
	"ktnef"
	"kwalletmanager"
	"libreoffice-calc"
	"libreoffice-math"
	"libreoffice-impress"
	"libreoffice-draw"
	"libreoffice-writer"
	"pim"
)
sudo dnf -y remove "${PKGS[@]}"
echo "Do you wish to reinstall Firefox as to remove all of Fedora's changes?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo dnf -y remove firefox; sudo dnf -y install firefox;;
        No ) exit;;
    esac
 done
