# YouTube Scraper

This script scrapes video titles from a YouTube channel and fetches video descriptions using the YouTube API.

## Setup

1. Clone the repository. git clone git@github.com:JackFurton/Professor-E.-Gadds-Workshop.git
2. Run the setup script: `source setup.sh`
3. Insert your YouTube API key and channel ID in the `aoret.py` script.
4. Run the script: `python3 aoret.py` or `./aoret.py`

## Requirements

- Python 3
- YouTube API key

## How to get YouTube API Key

To get a YouTube API key, you need to create a project in the Google Cloud Console and enable the YouTube Data API v3 for that project. Here are the steps:

1. Go to the [Google Cloud Console](https://console.cloud.google.com/).

2. If you haven't already, sign in with your Google account.

3. Click on "Select a project" at the top of the page, then click on "New Project", and give it a name.

4. Once the project is created, you'll be taken to the project's dashboard. Click on "Go to APIs overview".

5. Click on "+ ENABLE APIS AND SERVICES" at the top of the page.

6. Search for "YouTube Data API v3" and click on it in the results list.

7. Click on "ENABLE".

8. Once the API is enabled, click on "Credentials" in the left sidebar.

9. Click on "+ CREATE CREDENTIALS" at the top of the page and select "API key".

10. A new API key will be created and displayed. Copy this key and keep it safe.

You can now use this API key in your script. Replace `"INSERT_API_KEY"` in your script with the API key you just created.

Please note that the YouTube Data API has usage limits. As of the time of writing, you get 10,000 units per day for free, and a typical read operation costs 1 unit. You can check the current quotas and pricing on the Google Cloud Platform's official documentation.

## WIP Docker container for storing API key so it is not hardcoded within aoret.py
