<div align="center">
<img src="https://i.imgur.com/CAHWIDk.png" alt="gdrive-clone" height="">

<pre>
"Clone a shared google drive link to your own google drive"
</pre>

<a href="https://github.com/alx-xlx/gdrive-clone/blob/master/LICENSE"><img src="https://img.shields.io/badge/Open_source-MIT-green.svg?logo=git&logoColor=green"/></a>
<a href="https://github.com/alx-xlx/gdrive-clone/commits/dev"><img src="https://img.shields.io/github/last-commit/alx-xlx/gdrive-clone.svg?logo=Sublime+Text&logoColor=green&label=Active"/></a>
<img alt="GitHub Release Date" src="https://img.shields.io/github/release-date/alx-xlx/gdrive-clone">
<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/alx-xlx/gdrive-clone">
<img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/alx-xlx/gdrive-clone">


<hr/>
</div>





### 🌠 Features

- COPY/MOVE/SYNC any Shared Folder to your (My Drive/Shared Drive)
- Server Side Copy (SAs are used for copy/move/sync)
- Bypass 750GB Transfer Limit
- No extra Bandwidth Required
- Integrated with Telegram Bot for easy access 



### ⚙️ Requirements
- Python 3
- Telegram Application
- Linux Server 

### 📤 Setup


```sh
sudo apt install -y make python build-essential
git clone https://github.com/alx-xlx/gdrive-clone.git
cd gdrive-clone
mkdir accounts
chmod -R 777 gclone
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

### Enable APIs

#### Drive API

1. Visit https://developers.google.com/drive/api/v3/quickstart/python
2. Enter a Project Name OR Skip
3. Configure your OAuth Client > Desktop App
4. Create

Rename the file to `credentials.json` and place it in the repository folder

To Enable the below two APIs, `visit the link > select the Project > Enable`

e.g https://i.imgur.com/hJP61iq.png

#### Identity and Access Management (IAM) API
https://console.developers.google.com/apis/library/iam.googleapis.com

#### Service Usage API
https://console.developers.google.com/apis/library/serviceusage.googleapis.com


```sh
pip3 install -r requirements.txt
# Install all the required python modules
```

```sh
python3 gen_sa_accounts.py --quick-setup 2 --new-only
# This will create around 200 Service Accounts
```

```sh
python3 gen_sa_accounts.py --quick-setup 5 --new-only
# This will create around 1200 Service Accounts
```


```sh
python3 add_to_team_drive.py -d TEAMDRIVEID
```
Replace `TEAMDRIVEID` with your `Teamdrive ID`

![](https://i.imgur.com/53g521H.png)

OR 

Replace `TEAMDRIVEID` with `Folder ID` Inside `My Drive` having Editor Permission

![](https://i.imgur.com/hqPT2Jx.png)


This will Add all the service accounts to your Teamdrive, so make sure you have `Manager` Role in this `TEAMDRIVEID`



If you don't have a Team Drive, you can get few from below links

https://td.fastio.me

https://td.hackgence.com OR https://team.hackgence.com





We have successfully generated Service Accounts (SA)
at `/gdrive-clone/accounts/` folder, Rename any one of the SA to `1.json`



## Important




## Credits

[botgram/shellbot](https://github.com/botgram/shell-bot) - Shell Running Telegram Bot

[donwa/gclone](https://github.com/donwa/gclone) - Modified rclone for SA Support

[xyou365/AutoRclone](https://github.com/xyou365/AutoRclone) - To generate Service Accounts