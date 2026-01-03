#!/bin/bash



if [ -d "$HOME/Downloads" ]; then
    downloads_dir="$HOME/Downloads"
elif [ -d "$HOME/downloads" ]; then
	downloads_dir="$HOME/downloads"
else
    echo "Downloads folder not found, please read README"
    exit 1
fi

if [ ! -r "$downloads_dir" ] || [ ! -w "$downloads_dir" ] || [ ! -x "$downloads_dir" ]; then
    echo "You don't have full access to your Downloads folder"
    exit 1
fi

cd "$downloads_dir"
mkdir -p "Images" "Videos" "Documents" "Archives" "Others"

for file in *; do
    
    if [ ! -f "$file" ]; then
        continue  
    fi
    
    extension="${file##*.}"
    
    extension=$(echo "$extension" | tr '[:upper:]' '[:lower:]')
    
    case "$extension" in
    	jpg|jpeg|png|gif|bmp|webp|svg|ico|tiff|tif|heic|heif|raw|cr2|nef|psd|ai|eps|pnm)
        	mv -- "$file" Images/
        	;;
    
    	mp4|avi|mov|mkv|flv|wmv|webm|m4v|mpg|mpeg|mpv|m2v|3gp|ogv|vob|rm|rmvb|asf|mts|m2ts)
        	mv -- "$file" Videos/
        	;;
    
    	pdf|doc|docx|xls|xlsx|ppt|pptx|txt|rtf|odt|ods|odp|csv|tex|md|json|xml|yaml|yml|ini|cfg|conf|log|epub|mobi|azw)
        	mv -- "$file" Documents/
        	;;
    
    	zip|rar|7z|tar|gz|bz2|xz|tgz|tbz2|txz|z|lz|lzma|lzo|rz|sz|zoo|arj|cab|cpio|deb|rpm|pkg)
        	mv -- "$file" Archives/
        	;;
    
    	*)
        	mv -- "$file" Others/
        	;;
	esac
done

echo "The organism has finished sorting"
