from django.urls import path
from rest_framework_simplejwt import views as jwt_views
from auth_manager.views import UserCreate, MyTokenObtainPairView

app_name = "auth"
urlpatterns = [
    path('token', MyTokenObtainPairView.as_view(), name='get_token'),
    path('token/refresh', jwt_views.TokenRefreshView.as_view(), name='token_refresh'),
    path('register',UserCreate.as_view(), name="register"),
]