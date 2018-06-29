import urllib
import requests

status = {
    "name": "name2"
}

response = requests.post("https://safe-sea-33768.herokuapp.com/users", json=status)
