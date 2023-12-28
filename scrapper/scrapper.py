#!/usr/bin/env python3

import os
from googleapiclient.discovery import build


api_key = os.getenv('API_KEY')
youtube = build('youtube', 'v3', developerKey=api_key)

request = youtube.search().list(
    part="snippet",
    channelId="UCwX1u3vUzEwDanEVo1G4YVQ",
    maxResults=50
)

response = request.execute()

for item in response['items']:
    print(item['snippet']['description'])