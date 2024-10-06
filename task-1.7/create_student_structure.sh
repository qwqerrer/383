#!/bin/bash

create_structure() {
  mkdir -p students
  for student in student1 student2 student3; do
    mkdir -p "students/$student/disciplines"
    touch "students/$student/disciplines/discipline1.txt"
    touch "students/$student/disciplines/discipline2.txt"
    touch "students/$student/info.txt"
  done
}

fill_student_info() {
  for student in student1 student2 student3; do
    echo "Введите имя студента $student:"
    read first_name
    echo "Введите фамилию студента $student:"
    read last_name
    echo "Введите группу студента $student:"
    read group
    echo -e "Имя: $first_name
Фамилия: $last_name
Группа: $group" > "students/$student/info.txt"
  done
}

fill_discipline_info() {
  for student in student1 student2 student3; do
    for discipline_file in "students/$student/disciplines/discipline1.txt" "students/$student/disciplines/discipline2.txt"; do
      echo "Введите название дисциплины для файла $(basename $discipline_file):"
      read discipline_name
      echo "Введите имя преподавателя для дисциплины $discipline_name:"
      read teacher_name
      echo "Введите описание дисциплины $discipline_name:"
      read description
      echo -e "Название дисциплины: $discipline_name
Преподаватель: $teacher_name
Описание: $description" > "$discipline_file"
    done
  done
}

create_structure
fill_student_info
fill_discipline_info

