
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
      bash <(curl -L https://AK-HUB-TOOLS.github.io/Platypusfact/install/termux.sh)
  else
      echo "Installing Platypusfact in Terminal"
      bash <(curl -L https://AK-HUB-TOOLS.github.io/Platypusfact/install/terminal.sh)
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


# Installing ak-hub
echo "Installing ak-hub"
sleep 1

# Updateing termux
echo "updateing termux"
echo "Please wait"

# Check Internet
wget -q --spider https://packages-ak-hub.github.io/ak-hub/
if [ $? -eq 0 ];
then
  cd $PREFIX/bin/
  if [ -d ".ak-hub" ]
  then
    echo "ERROR found !!"
    echo
    echo
    echo
    echo "old ak-hub found"
    read -p $'Do you want to continue  ? [y/n]' con
    if [ $con = y ] || [ $con = Y ]
    then
      echo "removeing old user data"
      cd $PREFIX
      if [ -d "ak-hub" ]
      then
        rm -rf ak-hub
      fi
        cd $PREFIX/bin/
        rm -rf .ak-hub
        
        cd $PREFIX
        mkdir ak-hub
        akhub="$PREFIX/ak-hub"
        cd $ak-hub/
        install_sh
    fi
  else
    cd $PREFIX
    if [ -d "ak-hub" ]
    then
      rm -rf ak-hub
    fi
    cd $PREFIX
    mkdir ak-hub
    akhub="$PREFIX/ak-hub"
    cd $akhub/
    install_sh
  fi
else
echo
echo "\" You are not connected to internet ! \""
echo ""
echo "\" Please connect and try again !! \""
echo
echo 
exit
fi
