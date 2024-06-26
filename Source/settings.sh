printf "Build/CrossCompile/Run with DosBox/Wine/Qemu:\n\n"

echo "1) Build Darkest Hour"
echo "2) Build WeKan"
echo "3) Build Write"
echo "4) Build Custom"

printf "\nEnter selected number: "
read SELECTED

case $SELECTED in

  1)
    printf "Darkest Hour:\n\n"
    NAMEMINUS=darkest-hour
    NAMEDOS=DARKHOUR
    NAMECAMELCASE=DarkestHour
    NAMESPACE="Darkest Hour"
    ;;

  2)
    printf "WeKan:\n\n"
    NAMEMINUS=wekan
    NAMEDOS=WEKAN
    NAMECAMELCASE=WeKan
    NAMESPACE="WeKan"
    ;;

  3)
    printf "Write:\n\n"
    NAMEMINUS=write
    NAMEDOS=WRITE
    NAMECAMELCASE=Write
    NAMESPACE="Write"
    ;;

  4)
    printf "Custom:\n\n"
    ls *.c
    printf "\n"
    echo -n "Enter filename from above, without .c suffix: "
    read NAMEMINUS
    printf "\n"
    echo -n "Enter ASCII filename (example: DARKHOUR), max 8 characters: "
    read NAMEDOS
    printf "\n"
    echo -n "Enter CamelCase filename (example: DarkestHour): "
    read NAMECAMELCASE
    printf "\n"
    echo -n "Enter app name (example: Darkest Hour): "
    read NAMESPACE
    ;;

  *)
    echo -n "Unknown"
    ;;
esac
