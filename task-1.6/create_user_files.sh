#!/bin/bash

read -p "Введите ваше ФИО (на русском): " fullname
read -p "Введите вашу фамилию (на английском): " surname
read -p "Введите ваш возраст: " age
read -p "Введите ваше хобби: " hobby

mkdir -p "$surname"
mkdir -p "$surname/documents" "$surname/videos" "$surname/photos"

for folder in documents videos photos; do
  for i in {1..3}; do
    touch "$surname/$folder/file_$i.txt"
  done
done

mkdir -p "$surname/archive"
for ((i=1; i<=$age; i++)); do
  mkdir -p "$surname/archive/age_$i/documents" "$surname/archive/age_$i/videos" "$surname/archive/age_$i/photos"
  for folder in documents videos photos; do
    for j in {1..3}; do
      touch "$surname/archive/age_$i/$folder/file_$j.txt"
    done
  done
done

echo "Папки и файлы для пользователя $fullname успешно созданы."
