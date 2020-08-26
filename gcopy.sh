# DEFAULTDESTINATION='YOUR_DESTINATION_TEAMDRIVE_ID OR My Drive Folder ID having Write Permission'
# REPOPATH=/PATH/TO/YOUR/REPOSITORY

DEFAULTDESTINATION='0AD1zzAs7falwUk9PVA'        


# ----------------------------------------------------------------------
REPOPATH=`pwd`
FILEPATH=${REPOPATH}/accounts/1.json

CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"
CROSS_MARK="\u274c"

echo "                   `date`                            G-COPY 
          __      __                         __                   
.-----.--|  .----|__.--.--.-----.______.----|  .-----.-----.-----.
|  _  |  _  |   _|  |  |  |  -__|______|  __|  |  _  |     |  -__|
|___  |_____|__| |__|\___/|_____|      |____|__|_____|__|__|_____|
|_____|                                                   
              https://github.com/alx-xlx/gdrive-clone               "

echo -n "Checking Accounts Folder"
sleep 2
if test -f "$FILEPATH"; then
    echo -e "\\r${CHECK_MARK} Accounts Folder is Present"
else
    echo -e "\\r${CROSS_MARK} Folder is not Present"
    exit 0
fi
echo -en "[gc]\ntype = drive\nscope = drive\nservice_account_file = ${REPOPATH}/accounts/1.json\nservice_account_file_path = ${REPOPATH}/accounts/" >> ${REPOPATH}/rc.conf
sleep 2
echo "Reply with Source Folder Link"
read SOURCE
read -p "Reply with / (Forward Slash) if Default Destination OR Reply with TeamDrive ID > " DRIVE
if [ $DRIVE == "/" ]; then
    echo "Copying to Default (Folder/Drive/Teamdrive)"
    DESTINATION=`echo $DEFAULTDESTINATION`
else
    echo "Copying to https://drive.google.com/drive/u/0/folders/$DRIVE"
    DESTINATION=`echo $DRIVE`
fi
echo "Verify your Inputs"
echo "SOURCE      = $SOURCE"
echo "DESTINATION = https://drive.google.com/drive/u/0/folders/$DESTINATION"
sleep 5
echo -e "\e[1A\e[K\e[1A\e[K\e[1A\e[0K${CHECK_MARK} Verified"
echo -n `echo ${CHECK_MARK} $SOURCE | sed 's/.*folders\///'`
echo  "  ---->  $DESTINATION"
${REPOPATH}/gclone copy gc:{`echo $SOURCE | sed 's/.*folders\///'`} gc:{$DESTINATION} --config=${REPOPATH}/rc.conf --transfers 50 -v --stats-one-line -P --stats=15s --ignore-existing --drive-server-side-across-configs --drive-chunk-size 128M --drive-acknowledge-abuse --drive-keep-revision-forever
sleep 2
rm rc.conf
exit

