from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated

from rest_framework_simplejwt.serializers import TokenObtainSlidingSerializer
from rest_framework_simplejwt.views import TokenObtainSlidingView
from auth_manager.models import LoggedInUser, User
from auth_manager.serializer import UserSerializer
from rest_framework import generics
from rest_framework.permissions import AllowAny

class MyTokenObtainPairSerializer(TokenObtainSlidingSerializer):
    @classmethod
    def get_token(cls, user):
        token = super().get_token(user)
        obj = None
        token['name'] = user.username
        try:
            obj = LoggedInUser.objects.get(user=user)
        except LoggedInUser.DoesNotExist:
            obj = LoggedInUser(user=user)
        if obj is not None:
            obj.session_key = token
            obj.save()
        return token

class MyTokenObtainPairView(TokenObtainSlidingView):
    serializer_class = MyTokenObtainPairSerializer



class UserCreate(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = (AllowAny, )
