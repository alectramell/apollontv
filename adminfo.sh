#!/bin/bash

clear

USERNAME=$(whoami)
WHEREAMI=$(pwd)

clear

ADMDOC="/home/$USERNAME/Desktop/apollontv/admdoc.txt"
ADMURL="<github-adm-doc-url>"

clear

CONTEXT="Continue to App.."

clear

LOCDOC() {

	zenity --text-info --title="Apollon TV | Apollon Data Metrics (AGY) | 2017" --filename="$ADMDOC" --no-interaction --width="560" --height="477" --ok-label="Open Facebook URL" --cancel-label="$CONTEXT" && sensible-browser --new-tab="https://www.facebook.com/apollondma"
}

clear

WEBDOC() {

	zenity --text-info --title="Apollon TV | Apollon Data Metrics (AGY) | 2017" --html --url="$ADMURL" --no-interaction --width="560" --height="477" --ok-label="Open Facebook URL" --cancel-label="$CONTEXT" && sensible-browser --new-tab="https://www.facebook.com/apollondma"
}

clear

LOCDOC
