printf "Build/CrossCompile/Run with DosBox/Wine/Qemu\n\n"

echo "1) Build Darkest Hour"
echo "2) Build WeKan"
echo "3) Build Write"
echo "4) Build Custom"

printf "\nEnter selected number: "
read SELECTED

case $SELECTED in

  1)
    echo -n "Darkest Hour"
    NAMEMINUS=darkest-hour
    NAMEDOS=DARKHOUR
    NAMECAMELCASE=DarkestHour
    NAMESPACE="Darkest Hour"
    ;;

  2)
    echo -n "WeKan"
    NAMEMINUS=wekan
    NAMEDOS=WEKAN
    NAMECAMELCASE=WeKan
    NAMESPACE="WeKan"
    ;;

  3)
    echo -n "Write"
    NAMEMINUS=write
    NAMEDOS=WRITE
    NAMECAMELCASE=Write
    NAMESPACE="Write"
    ;;

  4)
    echo -n "Custom"
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

