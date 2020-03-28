from django.test import TestCase
from django.urls import reverse

from rest_framework.test import APIClient
from rest_framework import status

import json


PODCAST_URL = reverse('api:podcast')
TOP_20_PODCAST_FILE = reverse('api:top20_file')
TOP_20_PODCAST = reverse('api:top20')


class RetrieveDataTest(TestCase):

    def setUp(self):
        self.client = APIClient()

    def test_podcast_filter_data_by_name(self):
        """Test that podcast retrieve the filtered data by name"""
        request = self.client.get(PODCAST_URL + '?name=daily')
        results = request.data
        # Verify status 200
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        filtered_data = filter(
            lambda val: 'daily' in val['name'].lower(),
            results
        )
        self.assertEqual(len(results), len(list(filtered_data)))

    def test_podcast_filter_data_by_artist_name_same_url(self):
        """Test if the same endpoint can filter for artist name by other query param"""
        request = self.client.get(PODCAST_URL + '?artist=npr')
        results = request.data
        # Verify status 200
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        filtered_data = filter(
            lambda val: 'npr' in val['artistName'].lower(),
            results
        )
        self.assertEqual(len(results), len(list(filtered_data)))

    def test_retrieve_first_20_podcast_file(self):
        """Test that endpoint retrieves the top 20 podcast"""
        request = self.client.get(TOP_20_PODCAST_FILE)
        # verify HTTP 200 OK
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        # verify length is 20
        json_data = json.loads(request.content)
        self.assertEqual(len(json_data), 20)

    def test_retrieve_first_20_podcast(self):
        """Test that endpoint retrieves the top 20 podcast"""
        request = self.client.get(TOP_20_PODCAST)
        # verify HTTP 200 OK
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        # verify length is 20
        self.assertEqual(len(request.data), 20)
