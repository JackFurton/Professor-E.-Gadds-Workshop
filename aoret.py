#!/usr/bin/env python3

import requests
from bs4 import BeautifulSoup
from googleapiclient.discovery import build

'''
url = "https://www.youtube.com/@AoretSC2/videos"
response = requests.get(url)

soup = BeautifulSoup(response.text, 'html.parser')
print(soup.prettify())

chef_boy_are_lockdown = soup.find_all('a', {'class': 'video-title'})

for title in chef_boy_are_lockdown:
    print(title.text)
'''

api_key = "INSERT_API_KEY"
youtube = build('youtube', 'v3', developerKey=api_key)

request = youtube.search().list(
    part="snippet",
    channelId="UCwX1u3vUzEwDanEVo1G4YVQ",
    maxResults=50
)

response = request.execute()

for item in response['items']:
    print(item['snippet']['description'])