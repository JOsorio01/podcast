from django.urls import path, include
from rest_framework.routers import DefaultRouter

from api import views, viewsets

router = DefaultRouter()
router.register('podcast', viewsets.PodcastViewset, 'podcast')

app_name = 'api'
urlpatterns = [
    path('old/podcast/', views.podcast, name='old_podcast'),
    path('old/podcast/top20.json', views.first_20_podcast, name='old_top20_file'),
    path('old/podcast/top20/', views.first_20_podcast, name='old_top20'),
    path('', include(router.urls)),
    path('createdb/', views.init_db),
]
