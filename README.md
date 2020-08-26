# gdrive-clone
 Clone a shared google drive link to your own google account

### Requirements
- Python 3
- Telegram Application
- Linux Server

### Setup

```sh
sudo apt install -y make python build-essential
git clone https://github.com/alx-xlx/gdrive-clone.git
cd gdrive-clone
npm install
node server
```

If everything go as scripted you will be asked to Enter Auth Token

### Generate Service Accounts

Before Generating Service Accounts we have to enable Drive API in our Google Account and grab the API `credentials.json` file.

Visit https://developers.google.com/drive/api/v3/quickstart/python
And Follow the process

Rename the file to `credentials.json` and place it in repository 

`pip3 install -r requirements.txt`


## Credits

[botgram/shellbot](https://github.com/botgram/shell-bot) - Shell Running Telegram Bot

[donwa/gclone](https://github.com/donwa/gclone) - Modified rclone for SA Support

[xyou365/AutoRclone](https://github.com/xyou365/AutoRclone) - To generate Service Accounts