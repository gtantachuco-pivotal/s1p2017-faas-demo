exe() { echo "\$ $@" ; "$@" ; }

echo " "
echo "------------------------------"
echo "Uninstall riff"
echo "------------------------------"
echo " "

exe riff delete -f functions/vote-counter/ --all
exe riff delete -f functions/redis-writer/ --all
exe riff delete -f functions/vote-stream-processor/

echo " "
echo "------------------------------"
echo "Deleting Demo UI"
echo "------------------------------"
echo " "

exe kubectl delete deployment votes-ui
exe kubectl delete service votes-ui

echo " "
echo "------------------------------"
echo "Deleting Demo Redis"
echo "------------------------------"
echo " "

exe helm delete counters --purge

echo " "
echo "------------------------------"
echo "Deleting GKE RBAC"
echo "------------------------------"
echo " "

exe kubectl delete rolebinding votes-ui
exe kubectl delete serviceaccount votes-ui
exe kubectl delete role votes-ui
