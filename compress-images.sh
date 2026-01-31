#!/bin/bash

# Image Compression Script for Lydia's Website
# Usage: ./compress-images.sh

echo "🖼️  Lydia's Image Compressor"
echo "=============================="
echo ""

# Create directories
mkdir -p assets/images/original
mkdir -p assets/images/compressed

# Check if there are images to compress
if [ ! -f assets/images/*.jpeg ] && [ ! -f assets/images/*.jpg ] && [ ! -f assets/images/*.png ]; then
    echo "⚠️  No images found in assets/images/"
    echo "Please place your .jpeg, .jpg, or .png files in assets/images/ first!"
    exit 1
fi

echo "📁 Found images in assets/images/"
echo ""

# Ask user for compression method
echo "Choose compression method:"
echo "1) JPEG (80% quality, max 1200px width) - Good for photos"
echo "2) WebP (85% quality, max 1200px width) - Smallest file size! ⭐"
echo "3) JPEG (60% quality, max 800px width) - Maximum compression"
echo ""
read -p "Enter choice (1-3): " choice

case $choice in
    1)
        echo ""
        echo "🔄 Compressing to JPEG (80% quality, 1200px max width)..."
        for file in assets/images/*.{jpeg,jpg,JPG,JPEG,png,PNG}; do
            if [ -f "$file" ]; then
                filename=$(basename "$file")
                echo "   Processing: $filename"

                # Backup original
                cp "$file" "assets/images/original/$filename"

                # Compress
                sips -s format jpeg \
                     -s formatOptions 80 \
                     --resampleWidth 1200 \
                     "$file" \
                     --out "assets/images/compressed/${filename%.*}.jpg" 2>/dev/null

                # Show size reduction
                original_size=$(stat -f%z "$file" 2>/dev/null || stat -c%s "$file" 2>/dev/null)
                compressed_size=$(stat -f%z "assets/images/compressed/${filename%.*}.jpg" 2>/dev/null || stat -c%s "assets/images/compressed/${filename%.*}.jpg" 2>/dev/null)

                if [ ! -z "$original_size" ] && [ ! -z "$compressed_size" ]; then
                    reduction=$((100 - (compressed_size * 100 / original_size)))
                    echo "   ✅ Saved: $reduction% smaller"
                fi
            fi
        done
        ;;
    2)
        echo ""
        echo "🔄 Compressing to WebP (85% quality, 1200px max width)..."
        if ! command -v ffmpeg &> /dev/null; then
            echo "❌ ffmpeg not found. Please install: brew install ffmpeg"
            exit 1
        fi

        for file in assets/images/*.{jpeg,jpg,JPG,JPEG,png,PNG}; do
            if [ -f "$file" ]; then
                filename=$(basename "$file")
                echo "   Processing: $filename"

                # Backup original
                cp "$file" "assets/images/original/$filename"

                # Convert to WebP
                ffmpeg -i "$file" \
                       -vf scale="1200:-1" \
                       -compression_level 6 \
                       -q:v 85 \
                   "assets/images/compressed/${filename%.*}.webp" \
                       -y -loglevel error 2>/dev/null

                # Show size reduction
                original_size=$(stat -f%z "$file" 2>/dev/null || stat -c%s "$file" 2>/dev/null)
                compressed_size=$(stat -f%z "assets/images/compressed/${filename%.*}.webp" 2>/dev/null || stat -c%s "assets/images/compressed/${filename%.*}.webp" 2>/dev/null)

                if [ ! -z "$original_size" ] && [ ! -z "$compressed_size" ]; then
                    reduction=$((100 - (compressed_size * 100 / original_size)))
                    echo "   ✅ Saved: $reduction% smaller"
                fi
            fi
        done
        ;;
    3)
        echo ""
        echo "🔄 Compressing to JPEG (60% quality, 800px max width)..."
        for file in assets/images/*.{jpeg,jpg,JPG,JPEG,png,PNG}; do
            if [ -f "$file" ]; then
                filename=$(basename "$file")
                echo "   Processing: $filename"

                # Backup original
                cp "$file" "assets/images/original/$filename"

                # Compress
                sips -s format jpeg \
                     -s formatOptions 60 \
                     --resampleWidth 800 \
                     "$file" \
                     --out "assets/images/compressed/${filename%.*}.jpg" 2>/dev/null

                # Show size reduction
                original_size=$(stat -f%z "$file" 2>/dev/null || stat -c%s "$file" 2>/dev/null)
                compressed_size=$(stat -f%z "assets/images/compressed/${filename%.*}.jpg" 2>/dev/null || stat -c%s "assets/images/compressed/${filename%.*}.jpg" 2>/dev/null)

                if [ ! -z "$original_size" ] && [ ! -z "$compressed_size" ]; then
                    reduction=$((100 - (compressed_size * 100 / original_size)))
                    echo "   ✅ Saved: $reduction% smaller"
                fi
            fi
        done
        ;;
    *)
        echo "❌ Invalid choice"
        exit 1
        ;;
esac

echo ""
echo "✅ Compression complete!"
echo ""
echo "📊 Results:"
echo "   Original images: assets/images/original/"
echo "   Compressed images: assets/images/compressed/"
echo ""
echo "💡 Tip: For WebP files, update your HTML to use:"
echo '   <picture>'
echo '     <source srcset="assets/images/compressed/your-image.webp" type="image/webp">'
echo '     <img src="assets/images/compressed/your-image.jpg" alt="Description">'
echo '   </picture>'
