from rest_framework import serializers

from api.models import Genre, Podcast


class PodcastSerializer(serializers.ModelSerializer):

    class Meta:
        model = Podcast
        fields = '__all__'
        depth = 1


class GenreSerializer(serializers.ModelSerializer):
    podcasts = serializers.SerializerMethodField()

    @staticmethod
    def get_podcasts(obj):
        return obj.genres.all().values()

    class Meta:
        model = Genre
        fields = ('genre_id', 'name', 'url', 'podcasts')
