from rest_framework.response import Response
from rest_framework.decorators import api_view

import requests


SOURCE_URL = 'https://rss.itunes.apple.com/api/v1/' \
             'us/podcasts/top-podcasts/all/100/explicit.json'


@api_view(['GET'])
def podcast(request):
    """Read podcast data from url and retrieve"""
    name = request.query_params.get('name', '')
    # Read data for manipulation
    data = requests.get(SOURCE_URL).json()
    # Raw data contains one key -> 'feed'
    data = data['feed']  # This is all important data
    # Data whom will be sorted is in 'results' key
    results = data['results']
    # Filter results data and replace
    data['results'] = list(filter(
        lambda val: name.lower() in val['name'].lower(),
        results
    ))

    return Response(data)
