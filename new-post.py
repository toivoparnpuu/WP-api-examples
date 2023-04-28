import requests
import json
from mypasswords import kasutajanimi, parool

def newPost(url, kasutajanimi, parool, pealkiri, sisu):
    data = {
        "title": pealkiri,
        "content": sisu,
        "status": "publish"
    }

    json_data = json.dumps(data)

    headers = {
        "Content-Type": "application/json"
    }

    response = requests.post(url, auth=(kasutajanimi, parool), headers=headers, data=json_data)

    print("tulemus:", response.status_code, response.json())
    

if __name__ == "__main__":

    url = "https://tparnpuu.webhosting.tptlive.ee/skriptitav/wp-json/wp/v2/posts/"


    csv = open(
        "postitused.csv", "r", encoding="utf-8")
    for rida in csv:
        andmed = rida.split(";")
        pealkiri = andmed[0]
        sisu = andmed[1]
        newPost(url, kasutajanimi, parool, pealkiri, sisu)
    csv.close()
