
############################################
#             ###      ##  ##              #
#            ## ##     ## ##               #
#           #######    ####                #
#          ##     ##   ##  ##              #
#         ##       ##  ##   ##             #
############################################

wget -q --spider https://packages-ak-hub.github.io/ak-hub/
if [ $? -eq 0 ];
then
  if [ -d "/data/data/com.termux" ]
  then 
      echo "Installing Platypusfact in Termux"
      bash <(curl -Ls https://raw.githubusercontent.com/AK-HUB-TOOLS/Platypusfact/main/install/termux.sh)
  else
      echo "Installing Platypusfact in Terminal"
      bash <(curl -Ls https://raw.githubusercontent.com/AK-HUB-TOOLS/Platypusfact/main/install/terminal.sh)

  fi
else
echo
echo " You are not connected to internet ! "
echo ""
echo " Please connect and try again !! "
echo
echo 
exit
fi

