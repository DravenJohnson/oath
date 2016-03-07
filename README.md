# oath

Google Authenticator for Linux Command line

# Install / Requirement before uses.

Need: 
1. OpenSSL install on linux
2. oathtool install on linux. See [oAth-Toolkit](http://www.nongnu.org/oath-toolkit) for detail
3. Noting else

Read INSTALL.md for for deatiled install guide.

# Usage

Usage examples:
./oath -s {account alias} #Display verification codes
./oath -a {account alias} {account key} #Add encrypted keys file
./oath -h #Show this help

1. You need add account before you use it. Use ./oath -a [account name] [account key] to add account
e.g: ./oath -a google sdaghjywiqehjksayduiwqyeuihs

2. check your oAth code. Use ./oath -s [account name]
e.g: ./oath -s google

Notes:
  - You do not need to name the account by the website name. Ex. You can name your Google/Gmail account to 'GGCat' but you have to remember it.
  - You need to enter a password that different than your account password when you add account. This step is to ensure to add extra security to it and encrypt the key.
  - The code ENCRYPTED the Key and save it by it [account name] into keyFile/ derictory.
  - The encryption is using OpenSSL with -aes-256-cdc method. You have to remember your encrypt password. (Make sure you set it too)
  
