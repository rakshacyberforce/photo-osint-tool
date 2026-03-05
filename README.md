# 📷 Photo OSINT Tool

**Photo OSINT Tool** is an open-source investigation tool designed to extract intelligence from images.
It helps investigators, cybersecurity researchers, and OSINT analysts gather useful information hidden inside photographs.

The tool analyzes image metadata, detects GPS coordinates, extracts camera information, and performs basic face detection.

---

## 🎯 Features

✔ Extract EXIF metadata from images
✔ Detect **camera model and manufacturer**
✔ Show **photo capture date and time**
✔ Extract **GPS coordinates** from image metadata
✔ Generate **Google Maps location link**
✔ Detect **faces present in the image**
✔ Provide **reverse image search links**
✔ Save investigation results automatically

---

## 🔍 What Information Can Be Extracted

Example output:

```
Camera Model : iPhone 13
Date Taken   : 2024:05:11 14:22:08
Latitude     : 23.0225
Longitude    : 72.5714
Faces detected: 2
```

Location link:

```
https://www.google.com/maps?q=23.0225,72.5714
```

---

## ⚙️ Technologies Used

This tool uses the following technologies:

* ExifTool
* OpenCV
* Bash scripting
* Python

---

## 📂 Project Structure

```
photo-osint-tool
│
├── photo_osint.sh        # Main OSINT scanning script
├── face_detect.py        # Face detection module
├── requirements.txt      # Python dependencies
├── README.md             # Project documentation
└── results/              # Output results
```

---

## 🛠 Installation

Clone the repository:

```
git clone https://github.com/USERNAME/photo-osint-tool.git
cd photo-osint-tool
```

Install required tools:

```
sudo apt update
sudo apt install exiftool python3-opencv -y
pip3 install -r requirements.txt
```

---

## ▶ Usage

Make the script executable:


chmod +x photo_osint.sh

Run the tool:


./photo_osint.sh

Enter the path of the image when prompted.

Example:


images/photo.jpg


---

## 📁 Output

All results will be stored in the **results/** directory.

Files generated:


results/info.txt


---

## 🧠 Use Cases

This tool can be useful for:

* OSINT investigations
* Cybersecurity research
* Digital forensics
* Journalism investigations
* Law enforcement analysis
* Image intelligence gathering

---

## ⚠ Disclaimer

This tool is created for **educational and research purposes only**.
Users are responsible for complying with local laws and regulations.

The author is not responsible for misuse of this tool.

---

## 👨‍💻 Author

Kunj Patel

🔍 OSINT Expert 
🛡 Certified Cyber Crime Investigato


---

## ⭐ Support

If you find this project useful, consider giving it a **star** on GitHub.

---



