#!/bin/bash

create_structure() {
  mkdir -p database/Преподаватели database/Студенты database/Оценки
}

add_teacher() {
  echo "Введите имя преподавателя:"
  read teacher_name
  mkdir -p "database/Преподаватели/$teacher_name"
  echo "Введите информацию о преподавателе $teacher_name:"
  read teacher_info
  echo "$teacher_info" > "database/Преподаватели/$teacher_name/info.txt"
}

add_student() {
  echo "Введите имя студента:"
  read student_name
  mkdir -p "database/Студенты/$student_name"
  echo "Введите информацию о студенте $student_name:"
  read student_info
  echo "$student_info" > "database/Студенты/$student_name/info.txt"
}

add_grade() {
  echo "Введите имя студента для добавления оценки:"
  read student_name
  mkdir -p "database/Оценки/$student_name"
  echo "Введите предмет:"
  read subject
  echo "Введите оценку:"
  read grade
  echo "Предмет: $subject, Оценка: $grade" >> "database/Оценки/$student_name/grades.txt"
}

delete_entry() {
  echo "Введите категорию для удаления (Преподаватели/Студенты/Оценки):"
  read category
  echo "Введите имя для удаления:"
  read name
  rm -rf "database/$category/$name"
  echo "$name удален из категории $category."
}

move_entry() {
  echo "Введите категорию откуда переместить (Преподаватели/Студенты/Оценки):"
  read from_category
  echo "Введите имя для перемещения:"
  read name
  echo "Введите категорию куда переместить (Преподаватели/Студенты/Оценки):"
  read to_category
  mv "database/$from_category/$name" "database/$to_category/"
  echo "$name перемещен из категории $from_category в категорию $to_category."
}

while true; do
  echo "Выберите действие:"
  echo "1) Создать структуру базы данных"
  echo "2) Добавить преподавателя"
  echo "3) Добавить студента"
  echo "4) Добавить оценку"
  echo "5) Удалить запись"
  echo "6) Переместить запись"
  echo "7) Выход"
  read choice

  case $choice in
    1) create_structure ;;
    2) add_teacher ;;
    3) add_student ;;
    4) add_grade ;;
    5) delete_entry ;;
    6) move_entry ;;
    7) exit ;;
    *) echo "Неверный выбор" ;;
  esac
done

