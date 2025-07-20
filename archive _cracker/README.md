#Archive Cracker (.bat)

A Windows batch script that brute-forces password-protected archive files using a wordlist and 7-Zip.

#What It Does

This tool attempts to crack password-protected archive files by testing each password from a wordlist using the command-line version of [7-Zip](https://www.7-zip.org/).

Supports **any archive format supported by 7-Zip**, including:
- `.7z`
- `.zip`
- `.rar`
- `.tar`
- `.gz`
- `.xz`
- and more

#Requirements

- Windows OS  
- [7-Zip](https://www.7-zip.org/) installed 
- A password-protected archive
- A `.txt` wordlist (one password per line)

#Usage

open the archive_cracker.bat file then simply drag the archive you want to crack to the cmd screen make sure to remove the "" if you see them then drag the wordlist file. enjoy!

Example:
```bash
secret.zip password.txt
```
Where:
secret.zip is the name of your protected archive (e.g., secret.7z, hidden.rar)

password.txt is your password list file

