#!/bin/bash

GREEN='\033[1;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

clear

echo -e "${CYAN}"
echo "======================================="
echo "          PHOTO OSINT TOOL"
echo "======================================="
echo -e "${NC}"

read -p "Enter image path: " image

mkdir -p results

echo -e "${GREEN}[+] Extracting Metadata${NC}"

camera=$(exiftool -Model "$image" | awk -F': ' '{print $2}')
date=$(exiftool -DateTimeOriginal "$image" | awk -F': ' '{print $2}')

lat=$(exiftool -n -gpslatitude "$image" | awk '{print $4}')
lon=$(exiftool -n -gpslongitude "$image" | awk '{print $4}')

echo "Camera Model : $camera" > results/info.txt
echo "Date Taken   : $date" >> results/info.txt
echo "Latitude     : $lat" >> results/info.txt
echo "Longitude    : $lon" >> results/info.txt

cat results/info.txt

if [ ! -z "$lat" ]; then
echo ""
echo -e "${YELLOW}Google Maps Location:${NC}"
echo "https://www.google.com/maps?q=$lat,$lon"
fi

echo ""
echo -e "${CYAN}[+] Running Face Detection${NC}"

python3 face_detect.py "$image"

echo ""
echo -e "${GREEN}OSINT Scan Completed${NC}"
echo "Results saved in results folder"
