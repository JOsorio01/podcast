from rest_framework.response import Response
from rest_framework.decorators import api_view

import requests


SOURCE_URL = 'https://rss.itunes.apple.com/api/v1/us/podcasts/top-podcasts/all/100/explicit.json'


@api_view(['GET'])
def podcast(request):
    data = requests.get(SOURCE_URL)
    return Response({'data': data.json()})
