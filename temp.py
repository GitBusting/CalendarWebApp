import urllib
import requests

status = {
    "name": "name_dev"
}

response = requests.post("https://safe-sea-33768.herokuapp.com/users", json=status)
