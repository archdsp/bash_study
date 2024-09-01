# Integer 선언
declare -i intvar
intvar=10
echo "declare integer $intvar"

# Array 선언
declare -a array=("Red" "Green" "Blue" "Black")
echo "First element: ${array[0]}"
echo "Second element: ${array[1]}"
echo "Third element: ${array[2]}"
echo "Fourth element: ${array[3]}"
array[4]="Transparent"
echo "Assing new fifth, ${array[4]}"

# Hash 선언..?
declare -A associate
associate[apple]="Red"
associate[melon]="Green"
associate[etc]="Blue"
associate[odi]="Black"

echo $associate
echo ${associate[apple]}
echo ${associate[melon]}
echo ${associate[etc]}
echo ${associate[odi]}

# read-only 선언
declare -r pi=3.14159
echo -e "read-only PI: ${pi}\n"

# 환경 변수 선언
declare -x environment="My environment prefer wayland"
echo -e "My environment variable : ${environment}\n"

# 함수 정의
vim() {
    echo "vim"
}

echo -e "`declare -f vim`\n"

emacs() {    
    echo "emacs"
}

echo "`declare -F emacs` function declared"
