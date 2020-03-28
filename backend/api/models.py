from django.db import models


class Genre(models.Model):
    genre_id = models.IntegerField(primary_key=True, db_column='genre_id')
    name = models.CharField(max_length=250)
    url = models.URLField()


class Podcast(models.Model):
    """Model for podcast, removed some non common fields (for test purposes)"""
    id = models.IntegerField(primary_key=True, db_column='id')
    artist_name = models.CharField(max_length=250)
    release_date = models.DateField(blank=True, null=True)
    name = models.CharField(max_length=250)
    copyright = models.TextField(blank=True, null=True)
    genres = models.ManyToManyField(Genre, related_name='genres')
    url = models.URLField()
