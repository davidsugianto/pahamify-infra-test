import json
import requests
import datetime
from datetime import date

url = "https://haveibeenpwned.com/api/v2/breaches"
response = requests.get(url)
data = response.json()
start_date = datetime.date(2019, 1, 1)

for i in data:
    if i['BreachDate'] >= start_date.strftime('%Y-%m-%d'):
        print("Name : ", i['Name'])
        print("Breach Date : ", i['BreachDate'])
