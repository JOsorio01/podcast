from django.http import HttpResponse
from rest_framework.response import Response
from rest_framework.decorators import api_view

import requests
import json


SOURCE_URL = 'https://rss.itunes.apple.com/api/v1/' \
             'us/podcasts/top-podcasts/all/100/explicit.json'


def get_podcast_data():
    # Read data for manipulation
    data = requests.get(SOURCE_URL).json()
    # Raw data contains one key -> 'feed'
    # Data whom will be sorted is in 'results' key
    return data['feed']['results']  # This is all important data


@api_view(['GET'])
def podcast(request):
    """Read podcast data from url and retrieve"""
    name = request.query_params.get('name', '')
    artist = request.query_params.get('artist', '')
    results = get_podcast_data()
    # Filter results data and replace
    results = list(filter(
        lambda val:
            name.lower() in val['name'].lower()
            and artist.lower() in val["artistName"].lower(),
        results
    ))

    return Response(results)


@api_view(['GET'])
def first_20_podcast(request):
    """Return top 20 podcast"""
    data = get_podcast_data()[0:20]
    if '.json' in request.path:
        response = HttpResponse(json.dumps(data), content_type='application/json')
        response['Content-Disposition'] = 'attachment; filename="%s"' % 'top20podcast.json'
        return response
    return Response(data)
