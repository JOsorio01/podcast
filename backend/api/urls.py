from django.urls import path
from api import views

app_name = 'api'
urlpatterns = [
    path('podcast/', views.podcast, name='podcast'),
    path('podcast/top20.json', views.first_20_podcast, name='top20_file'),
    path('podcast/top20/', views.first_20_podcast, name='top20'),
]
