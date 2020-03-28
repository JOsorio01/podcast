from django.test import TestCase
from django.urls import reverse

from rest_framework.test import APIClient
from rest_framework import status

from api.models import Genre, Podcast


GENRE_URL = reverse('api:genre-list')


class TestGenreEndpoints(TestCase):

    def setUp(self):
        self.client = APIClient()
        self.genre1 = Genre.objects.create(
            genre_id=1, name='name', url='http://sample.s')
        self.genre2 = Genre.objects.create(
            genre_id=2, name='name', url='http://sample.s')

    def test_podcast_are_grouped_by_genre(self):
        """Test that response contains al genres and genres contains their podcast"""
        # Create sample objects
        podcast1 = Podcast.objects.create(
            id=1, artist_name='dialy revs', name='name', url='http://url.com')
        podcast2 = Podcast.objects.create(
            id=2, artist_name='revs', name='dialy', url='http://url.com')
        # Asign genres to podcast
        podcast1.genres.add(self.genre1)
        podcast2.genres.add(self.genre1, self.genre2)

        request = self.client.get(GENRE_URL + '?search=daily')
        results = request.data
        # Verify status 200
        self.assertEqual(request.status_code, status.HTTP_200_OK)
        self.assertEqual(len(results), len(Genre.objects.all()))
        # index 0 is for genre1 it must contain 2 podcast
        podcast = results[0]['podcasts']
        self.assertEqual(len(podcast), 2)
