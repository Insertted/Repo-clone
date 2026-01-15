#!/bin/bash
# main.sh
#         |
#         |
#         |
#  ---------------
#  |      |      |
#         |
#         |
#         |
#         |
#         |
#         |

echo "Hello.world!"
echo "Ты тут: $(pwd)"
echo "ТЫ: $USERNAME"
echo "Текущее время: $(date)"
echo "Здарова"
echo "Тя как звать?"
#read name
#echo "Ну теперь знать тебя буду, $name..."
sleep 1
mkdir Neww && touch Neww/meow.txt

echo "Введите число:"
read num1
echo "Введите второе число:"
read num2

echo "Сумма $(($num1 + $num2))"
#echo "Сумма $(($num1 - $num2))"
#echo "Сумма $(($num1 * $num2))"
#echo "Сумма $(($num1 / $num2))"

echo "Натуральное число?"
read number
if ((number > 10)); then
    echo -e "\033[32mЧисло > 10\033[0m"
elif ((number == 10)); then
    echo "Числа равны"
else
    echo "Число < 10"
fi