from rest_framework import serializers

from api.models import Genre, Podcast


class GenreSerializer(serializers.ModelSerializer):

    class Meta:
        model = Genre
        fields = '__all__'


class PodcastSerializer(serializers.ModelSerializer):

    class Meta:
        model = Podcast
        fields = '__all__'
        depth = 1
