echo Porter Installer initiatied.
echo [NOTICE] Please make sure git, apt-get, and wget are installed. 
echo [NOTICE] Please make sure that the Raspberry Pi Official Touchscreen is connected.
sleep 2
echo Refreshing sources...
sudo apt-get update
echo Installing required dependencies for Porter...
sudo apt-get install -y --force-yes matchbox x11-xserver-utils ttf-mscorefonts-installer xwit sqlite3 libnss3
echo Installing required libraries for Chromium...
sudo apt-get install -y --force-yes libnss3 libxrender1 libxss1 libgtk2.0-0 libgconf2-4
echo Installing Chromium
sudo mkdir -p /opt/google/
cd /opt/google
sudo wget http://distribution-us.hexxeh.net/chromium-rpi/chromium-rpi-r22.tar.gz -O chromium-rpi.tar.gz
sudo tar xvf chromium-rpi.tar.gz
echo Setting permissions for Chromium...
sudo chown root:root chrome/chrome-sandbox
sudo chmod 4755 chrome/chrome-sandbox
sudo rm -rf /usr/bin/chrome
sudo ln -s /opt/google/chrome/chrome /usr/bin/chrome
echo Installing Porter
cd /
sudo git clone https://github.com/lanewinfield/porter.git
echo Installing Apache...
sudo apt-get install -y --force-yes apache2
echo Configuring Porter...
sudo mv /porter/config_files/config.txt /boot/config.txt
sudo mv /porter/config_files/default /etc/apache2/sites-available/default
sudo mv /porter/config_files/xinitrc ~/.xinitrc
sudo mv /porter/screen /home/pi
echo Porter was sucessfullly installed!
echo Porter was made by lanewinfield on GitHub.
echo Auto-installer was made by Shugabuga on GitHub.
echo Loading configuration file for Porter...
echo [NOTICE] A reboot is needed. Please reboot after configuring Porter.
sleep 2
sudo nano /home/pi/screen/js/config.js
echo [NOTICE] Rebooting Raspberry Pi in 10 seconds. Click CONTROL + C to cancel.
sleep 1
echo [NOTICE] Rebooting Raspberry Pi in 9 seconds. Click CONTROL + C to cancel.
sleep 1
echo [NOTICE] Rebooting Raspberry Pi in 8 seconds. Click CONTROL + C to cancel.
sleep 1
echo [NOTICE] Rebooting Raspberry Pi in 7 seconds. Click CONTROL + C to cancel.
sleep 1
echo [NOTICE] Rebooting Raspberry Pi in 6 seconds. Click CONTROL + C to cancel.
sleep 1
echo [NOTICE] Rebooting Raspberry Pi in 5 seconds. Click CONTROL + C to cancel.
sleep 1
echo [NOTICE] Rebooting Raspberry Pi in 4 seconds. Click CONTROL + C to cancel.
sleep 1
echo [NOTICE] Rebooting Raspberry Pi in 3 seconds. Click CONTROL + C to cancel.
sleep 1
echo [NOTICE] Rebooting Raspberry Pi in 2 seconds. Click CONTROL + C to cancel.
sleep 1
echo [NOTICE] Rebooting Raspberry Pi in 1 second. Click CONTROL + C to cancel.
sleep 1
echo [NOTICE] Rebooting Raspberry Pi...
sudo reboot
