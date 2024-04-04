# sh pdf/get_pdf.sh

for file in */*/*.pdf; do
    # echo "$file"
    # folder=$(dirname "$file")
    # folder=$(basename "$(dirname "$(dirname "$file")")")
    folder=$(basename "$(dirname "$file")")
    # echo "$folder"
    filename=$(basename "$file")
    # echo "$filename"
    extension="${filename##*.}"
    # echo "$extension"
    new_filename="${folder////_}.$extension"
    # echo "$new_filename"
    cp "$file" "pdf/$new_filename"
    # break
done
