from django.db.models import Q
from rest_framework import viewsets

from api.models import Podcast
from api.serializers import PodcastSerializer


class PodcastViewset(viewsets.ModelViewSet):
    serializer_class = PodcastSerializer
    queryset = Podcast.objects.all()

    def get_queryset(self):
        search = self.request.query_params.get('search', '')
        return self.queryset.filter(
            (Q(name__icontains=search) | Q(artist_name__icontains=search))
        )
