from django.test import TestCase
from django.urls import reverse
from django.db.models import Q

from rest_framework.test import APIClient
from rest_framework import status

from api.models import Podcast

import json

OLD_PODCAST_URL = reverse('api:old_podcast')
OLD_TOP_20_PODCAST_FILE = reverse('api:old_top20_file')
OLD_TOP_20_PODCAST = reverse('api:old_top20')

# New urls
PODCAST_URL = reverse('api:podcast-list')
TOP_20_PODCAST_FILE = reverse('api:top20-file')
TOP_20_PODCAST = reverse('api:top20')
LAST_20_PODCAST_FILE = reverse('api:last20-file')
LAST_20_PODCAST = reverse('api:last20')


class RetrieveDataTest(TestCase):

    def setUp(self):
        self.client = APIClient()
        self.podcast1 = Podcast.objects.create(
            id=1, artist_name='dialy revs', name='name', url='http://url.com')
        self.podcast2 = Podcast.objects.create(
            id=2, artist_name='revs', name='dialy', url='http://url.com')
        self.podcast3 = Podcast.objects.create(
            id=3, artist_name='revs', name='name', url='http://url.com')

    def test_podcast_filter_data(self):
        """Test that podcast retrieve the filtered data by name"""
        request = self.client.get(PODCAST_URL + '?search=daily')
        results = request.data
        # Verify status 200
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        filtered_data = Podcast.objects.filter(
            Q(name__icontains='daily') | Q(artist_name__icontains='daily')
        )
        self.assertEqual(len(results), len(list(filtered_data)))

    def test_retrieve_first_20_podcast(self):
        """Test that endpoint retrieves the top 20 podcast"""
        # Add more than 20 records
        for i in range(4, 30):
            Podcast.objects.create(
                id=i, artist_name='artist', name='name', url='http://url.com'
            )
        request = self.client.get(TOP_20_PODCAST)
        # verify HTTP 200 OK
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        # verify length is 20
        self.assertEqual(len(request.data), 20)
        # Verify data includes only the top 20
        request_ids = [d['id'] for d in request.data]
        db_ids = [p.id for p in Podcast.objects.all()[0:20]]
        self.assertListEqual(db_ids, request_ids)

    def test_retrieve_first_20_podcast_file(self):
        """Test that endpoint retrieves the top 20 podcast"""
        # Add more than 20 records
        for i in range(4, 30):
            Podcast.objects.create(
                id=i, artist_name='artist', name='name', url='http://url.com'
            )
        request = self.client.get(TOP_20_PODCAST_FILE)
        # verify HTTP 200 OK
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        # verify length is 20
        json_data = json.loads(request.content)
        self.assertEqual(len(json_data), 20)
        # Verify data includes only the top 20
        request_ids = [d['id'] for d in json_data]
        db_ids = [p.id for p in Podcast.objects.all()[0:20]]
        self.assertListEqual(db_ids, request_ids)

    def test_retrieve_last_20_podcast(self):
        """Test that endpoint retrieves the last 20 podcast"""
        # Add more than 20 records
        for i in range(4, 30):
            Podcast.objects.create(
                id=i, artist_name='artist', name='name', url='http://url.com'
            )
        request = self.client.get(LAST_20_PODCAST)
        # verify HTTP 200 OK
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        # verify length is 20
        self.assertEqual(len(request.data), 20)
        # Verify data includes only the top 20
        request_ids = [d['id'] for d in request.data]
        db_data = reversed(Podcast.objects.all())
        db_ids = [p.id for p in list(db_data)[0:20]]
        self.assertListEqual(db_ids, request_ids)

    def test_retrieve_last_20_podcast_file(self):
        """Test that endpoint retrieves the last 20 podcast"""
        # Add more than 20 records
        for i in range(4, 30):
            Podcast.objects.create(
                id=i, artist_name='artist', name='name', url='http://url.com'
            )
        request = self.client.get(LAST_20_PODCAST_FILE)
        # verify HTTP 200 OK
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        # verify length is 20
        json_data = json.loads(request.content)
        self.assertEqual(len(json_data), 20)
        # Verify data includes only the top 20
        request_ids = [d['id'] for d in json_data]
        db_data = reversed(Podcast.objects.all())
        db_ids = [p.id for p in list(db_data)[0:20]]
        self.assertListEqual(db_ids, request_ids)

    # Here begin the old test
    def test_old_podcast_filter_data_by_name(self):
        """Test that podcast retrieve the filtered data by name"""
        request = self.client.get(OLD_PODCAST_URL + '?name=daily')
        results = request.data
        # Verify status 200
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        filtered_data = filter(
            lambda val: 'daily' in val['name'].lower(),
            results
        )
        self.assertEqual(len(results), len(list(filtered_data)))

    def test_old_podcast_filter_data_by_artist_name_same_url(self):
        """Test if the same endpoint can filter for artist name by other query param"""
        request = self.client.get(OLD_PODCAST_URL + '?artist=npr')
        results = request.data
        # Verify status 200
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        filtered_data = filter(
            lambda val: 'npr' in val['artistName'].lower(),
            results
        )
        self.assertEqual(len(results), len(list(filtered_data)))

    def test_old_retrieve_first_20_podcast_file(self):
        """Test that endpoint retrieves the top 20 podcast"""
        request = self.client.get(OLD_TOP_20_PODCAST_FILE)
        # verify HTTP 200 OK
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        # verify length is 20
        json_data = json.loads(request.content)
        self.assertEqual(len(json_data), 20)

    def test_old_retrieve_first_20_podcast(self):
        """Test that endpoint retrieves the top 20 podcast"""
        request = self.client.get(OLD_TOP_20_PODCAST)
        # verify HTTP 200 OK
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        # verify length is 20
        self.assertEqual(len(request.data), 20)
