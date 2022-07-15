# ExodusOS OTA repo
In order for a device to be officially supported by ExodusOS, OTA information needs to be added.
Please refer to the following "Readme" to get started

## 1. Introduction ##
In order for a device to be OTA compliant, there are a few things to know.

### 1.1 JSON structure ###
```
{
  "response": [
    {
      "datetime": 1230764400,
      "filename": "ota-package.zip",
      "id": "5eb63bbbe01eeed093cb22bb8f5acdc3",
      "romtype": "nightly",
      "size": 314572800,
      "url": "https://example.com/ota-package.zip",
      "version": "raccoon"
    }
  ]
}
```

### 1.2 changelog.txt structure ### 
```
===== <date> =====
- change 1
- change 2
- change 3
```

## 3. How to ##
For following below description, replace *codename* with your device codename. 
### 3.1 Initial support ###
1. Fork this repo to your own GitHub
2. Copy file **createjson.sh** from *initial support* folder to ExodusOS source folder and make it executable
```
chmod +x createjson.sh
```
3. Open the file in a text editor (vim, nano, any GUI editor) and make changes from where it states *#modify values below*, save the file then run the generation script with below command
```
./createjson.sh
```
4. A file named *codename*.json gets created in main ExodusOS source folder. Copy it to where this repo was cloned.
5. Submit a pull request to this repo (this way we validate that you understood the requirements and if all is good you'll be granted direct push access to this repo)

### 3.2 Update build ###
1. Clone this repo locally
```
git clone https://github.com/ExodusOS/exodus_vendor_RomOTA.git -b raccoon
```
2. Change to the directory where you cloned this repo (exodus_vendor_RomOTA) and fetch updates from repo.
```
cd exodus_vendor_RomOTA
git fetch --all
git pull
```
3. Copy *codename*.json file from out dir (where your ExodusOS zip is compiled) over to this repo folder (exodus_vendor_RomOTA).
4. Now with the files updated, commit your update to this repo.
```
git add .
git commit #(this opens up your prefered text editor, so write a nice description like "<device codename>: update build")
git push #you may be prompted for your github username and password
```
