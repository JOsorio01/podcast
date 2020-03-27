from django.urls import path
from api.views import podcast

app_name = 'api'
urlpatterns = [
    path('podcast/', podcast, name='podcast'),
]
