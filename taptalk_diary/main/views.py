from django.shortcuts import render
from main.serializer import DiaryUserSerializer
from main.models import DiaryUser
from rest_framework import generics
from rest_framework.permissions import IsAuthenticated, AllowAny

# Create your views here.

class ListDiary(generics.ListAPIView):
    serializer_class = DiaryUserSerializer
    permission_classes = (IsAuthenticated, )
    def get_queryset(self):
        queryset = DiaryUser.objects.all()
        hyear = self.request.query_params.get('year', None)
        hquarter = self.request.query_params.get('quarter', None)
        queryset = queryset.filter(date_published__year=hyear, date_published__quarter=hquarter)
        return queryset
class DiaryCreate(generics.CreateAPIView):
    queryset = DiaryUser.objects.all()
    serializer_class = DiaryUserSerializer
    permission_classes = (IsAuthenticated, )