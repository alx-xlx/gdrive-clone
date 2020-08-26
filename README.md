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

If everything go as scripted it will prompt you to Enter a Token
Follow the "Create a Telegram Bot" section below to generate the Token

### Create a Telegram Bot

1. Open your Telegram Application and find @botfather or visit [t.me/botfather](https://t.me/botfather)
2. `/start`
3. `/newbot`
4. Choose a Name for your Bot

Once Successful, you will be presented with a link to your bot (t.me/YOURBOT) & a Token to Access the HTTP API



### Generate Service Accounts

Before Generating Service Accounts we have to enable Drive API in our Google Account and grab the API `credentials.json` file.

Visit https://developers.google.com/drive/api/v3/quickstart/python
And Follow the process

Rename the file to `credentials.json` and place it in the repository folder

```sh
pip3 install -r requirements.txt
python3 gen_sa_accounts.py --quick-setup 2 --new-only    # This will create around 500 Service Accounts
```

```sh
python3 gen_sa_accounts.py --quick-setup 2 --new-only    # This will create around 1200 Service Accounts
```



## Credits

[botgram/shellbot](https://github.com/botgram/shell-bot) - Shell Running Telegram Bot

[donwa/gclone](https://github.com/donwa/gclone) - Modified rclone for SA Support

[xyou365/AutoRclone](https://github.com/xyou365/AutoRclone) - To generate Service Accounts