#!/usr/bin/env bash

echo "Enter file name you need to make:"
read files

backup_dir="my_backups"
# هنا هنسألك عن اسم الملف المضغوط اللي إنت عايزه
echo "Enter name for the zip file (without .tar.gz):"
read custom_name

backup_name="${custom_name}.tar.gz"

mkdir -p "$backup_dir"

echo "loading ...Archive "
tar -czf "$backup_dir/$backup_name" $files
echo "done ......"

if [[ -f "$backup_dir/$backup_name" ]]; then
    echo "its archived .... and the size is:"
    
    du -h "$backup_dir/$backup_name"
    
    echo " it's in: $backup_dir/$backup_name"
    echo "It had:-" 
    tar -tf "$backup_dir/$backup_name"
else
    echo "something wrong....!!!!!!"
fi

