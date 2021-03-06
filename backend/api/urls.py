from django.urls import path, include
from rest_framework.routers import DefaultRouter

from api import views, viewsets

router = DefaultRouter()
router.register('podcast', viewsets.PodcastViewset, 'podcast')
router.register('genre', viewsets.GenreViewset, 'genre')

app_name = 'api'
urlpatterns = [
    # Podcast urls
    path('podcast/top20/', views.PodcastTop20View.as_view(), name='top20'),
    path('podcast/top20.json', views.PodcastTop20View.as_view(), name='top20-file'),
    path('podcast/last20/', views.PodcastLast20View.as_view(), name='last20'),
    path('podcast/last20.json', views.PodcastLast20View.as_view(), name='last20-file'),
    # Viewsets
    path('', include(router.urls)),
    # Old Urls
    path('old/podcast/', views.podcast, name='old_podcast'),
    path('old/podcast/top20.json', views.first_20_podcast, name='old_top20_file'),
    path('old/podcast/top20/', views.first_20_podcast, name='old_top20'),
    # Create db url 'use only once if db tables are empty'
    path('createdb/', views.init_db),
]
