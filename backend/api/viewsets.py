from django.db.models import Q

from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated
from rest_framework.authentication import TokenAuthentication

from api.models import Podcast, Genre
from api.serializers import PodcastSerializer, GenreSerializer


class PodcastViewset(viewsets.ModelViewSet):
    serializer_class = PodcastSerializer
    queryset = Podcast.objects.all()
    permission_classes = [IsAuthenticated]
    authentication_classes = [TokenAuthentication]

    def get_queryset(self):
        search = self.request.query_params.get('search', '')
        return self.queryset.filter(
            (Q(name__icontains=search) | Q(artist_name__icontains=search))
        )


class GenreViewset(viewsets.ModelViewSet):
    serializer_class = GenreSerializer
    queryset = Genre.objects.all()
