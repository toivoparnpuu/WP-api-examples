# Wordpress postituste skriptimine
## allikad
- [Wordpress API](https://developer.wordpress.org/rest-api/reference/)'
- [Paroolide talletamine teises Pythoni failis](https://stackoverflow.com/questions/25501403/storing-the-secrets-passwords-in-a-separate-file)
- [Pythoni lisamoodulite paigaldamine](https://packaging.python.org/en/latest/tutorials/installing-packages/)
- [Vaata samalaadset lahendust Powershellis](https://blog.darrenjrobinson.com/using-wordpress-apis-with-powershell/)

## Kasutamine
- Lisa Wordpressi uus kasutaja (vähemalt editor õigustes), kasutaja all uus Application (kirjuta üles rakenduse nimi ja parool)
- rakenduse nimi ja parool lähevad mypasswordsEXAMPLE.py faili. Muuda mypasswordsEXAMPLE.py nimi mypasswrds.py. 
- postitused.csv sisaldab postituste andmeid.
- posts.py impordib mypasswords.py faili ning kasutab sealt kasutajanimi ja parool muutujat. Peale avamist võetakse lahti samas kaustas olev postitused.csv mille sisselugemisel postitatakse leitud read Wordpressi. 

NB! Eelnevat postituse olemasolu ei kontrollita vaid tehakse uus postitus. 