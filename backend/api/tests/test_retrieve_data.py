from django.test import TestCase
from django.urls import reverse

from rest_framework.test import APIClient
from rest_framework import status


PODCAST_URL = reverse('api:podcast')


class RetrieveDataTest(TestCase):

    def setUp(self):
        self.client = APIClient()

    def test_podcast_filter_data_by_name(self):
        """Test that podcast retrieve the filtered data by name"""
        request = self.client.get(PODCAST_URL + '?name=daily')
        results = request.data['results']
        # Verify status 200
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        filtered_data = filter(
            lambda val: 'daily' in val['name'].lower(),
            results
        )
        self.assertEqual(len(results), len(list(filtered_data)))
