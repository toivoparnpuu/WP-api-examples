# Wordpress postituste skriptimine
## allikad
[Tutvustus](https://tptliveee-my.sharepoint.com/:v:/g/personal/toivo_parnpuu_tptlive_ee/EaVwMv2IkwhBrDITUHuMPdcB1LpqYi-owRVO7HcdS_Vg-Q?e=bUdIrW)
- [Wordpress API](https://developer.wordpress.org/rest-api/reference/)
- [Paroolide talletamine teises Pythoni failis](https://stackoverflow.com/questions/25501403/storing-the-secrets-passwords-in-a-separate-file)
- [Pythoni lisamoodulite paigaldamine](https://packaging.python.org/en/latest/tutorials/installing-packages/)
- [Vaata samalaadset lahendust Powershellis](https://blog.darrenjrobinson.com/using-wordpress-apis-with-powershell/)
- [.gitignore failist](https://www.freecodecamp.org/news/gitignore-what-is-it-and-how-to-add-to-repo/)

Loe juurde:
- [Mis on API(Wikipedia)](https://et.wikipedia.org/wiki/Rakendusliides)
- [Lühike API tutvustus](https://www.freecodecamp.org/news/how-apis-work)
- [Thunder Client for VScode tutvustus](https://www.freecodecamp.org/news/thunder-client-for-vscode/)

## Kasutamine Python
- Lisa Wordpressi uus kasutaja (vähemalt editor õigustes), kasutaja all uus Application (kirjuta üles rakenduse nimi ja parool)
- rakenduse nimi ja parool lähevad mypasswordsEXAMPLE.py faili. Muuda mypasswordsEXAMPLE.py nimi mypasswrds.py. 
- postitused.csv sisaldab postituste andmeid.
- posts.py impordib mypasswords.py faili ning kasutab sealt kasutajanimi ja parool muutujat. Peale avamist võetakse lahti samas kaustas olev postitused.csv mille sisselugemisel postitatakse leitud read Wordpressi. 

NB! Eelnevat postituse olemasolu ei kontrollita vaid tehakse uus postitus. 

## Kasutamine Powershell
.\new-post.ps1 -username $username -password $password -inputFile "postitused.csv"

- username on API "rakenduse nimi"
- password - rakendusele loodud parool
- inputFile - postituse sisu kirjeldava csv formaadis faili asukoht

## Kasutamine Javascript
Lae alla newpost.html ning käivita see enda arvuti brauseris. Järgi juheiseid, mis on HTML lehel kirjas. 
