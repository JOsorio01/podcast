from django.test import TestCase
from django.urls import reverse

from rest_framework.test import APIClient
from rest_framework import status


PODCAST_URL = reverse('api:podcast')


class RoutesTest(TestCase):
    def setUp(self):
        self.client = APIClient()

    def test_podcast_route(self):
        """Test that podcast route response is HTTP_200_OK"""
        request = self.client.get(PODCAST_URL)
        self.assertEqual(request.status_code, status.HTTP_200_OK)
