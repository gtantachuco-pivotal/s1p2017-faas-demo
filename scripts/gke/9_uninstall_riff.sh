exe() { echo "\$ $@" ; "$@" ; }

echo " "
echo "------------------------------"
echo "Uninstall Riff "
echo "------------------------------"
echo " "

exe helm delete control --purge
exe helm delete transport --purge
