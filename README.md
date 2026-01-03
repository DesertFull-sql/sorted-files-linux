# 🗂️ sorted-files-linux

Smart Bash script organizm to automatically organize your downloads folder

## ✨ Features

    Auto-detection - Finds your downloads folder automatically

    Permission checking - Verifies access before any operation

    80+ formats - Images, Videos, Documents, Archives

    5 categories - Clean organization system

    Safe & fast - No dependencies, pure Bash

## 🛠️ How It Works

    Finds your downloads folder (~/Downloads or ~/downloads)

    Checks you have read/write/execute permissions

    Creates folders: Images/, Videos/, Documents/, Archives/, Others/

    Sorts files based on their extensions

    Moves each file to the appropriate folder

## 🚀 Running the script

  **Make the script executable:**
  
  *chmod +x organize.sh*

  **Run the script:**
  
  *./organize.sh*

Organism will check your downloads folder and sort the files.
The files will be moved to the appropriate folders: Images, Videos, Documents, Archives, Others.

To complete, wait for the message "The organism has finished sorting."



## 📁 Supported Formats

### 🖼️ Images (19 formats)

.jpg, .jpeg, .png, .gif, .bmp, .webp, .svg, .ico, .tiff, .tif, .heic, .heif, .raw, .cr2, .nef, .psd, .ai, .eps, .pnm


### 🎬 Videos (20 formats)

.mp4, .avi, .mov, .mkv, .flv, .wmv, .webm, .m4v, .mpg, .mpeg, .mpv, .m2v, .3gp, .ogv, .vob, .rm, .rmvb, .asf, .mts, .m2ts


### 📄 Documents (26 formats)

.pdf, .doc, .docx, .xls, .xlsx, .ppt, .pptx, .txt, .rtf, .odt, .ods, .odp, .csv, .tex, .md, .json, .xml, .yaml, .yml, .ini, .cfg, .conf, .log, .epub, .mobi, .azw


### 🗜️ Archives (23 formats)

.zip, .rar, .7z, .tar, .gz, .bz2, .xz, .tgz, .tbz2, .txz, .z, .lz, .lzma, .lzo, .rz, .sz, .zoo, .arj, .cab, .cpio, .deb, .rpm, .pkg

---

## ⚠️ Requirements

    - Linux operating system

    - Bash shell

    - Downloads folder named `Downloads` or `downloads`
