from django.urls import path
from main.views import ListDiary, DiaryCreate


app_name = "main"
urlpatterns = [
    path('list_diary', ListDiary.as_view(), name='list_diary'),
    path('add_diary', DiaryCreate.as_view(), name="create_diary"),
]