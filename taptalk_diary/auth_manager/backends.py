from django.contrib.auth.backends import ModelBackend
from django.contrib.auth.models import User

from auth_manager.models import User

class UserAuthenticationBackend(ModelBackend):

    def authenticate(self, request, **kwargs):
        username = kwargs['username']
        password = kwargs['password']
        if '@' in username:
            kwargs = {'email': username}
        else:
            kwargs = {'username': username}
        
        try:
            user = User.objects.get(**kwargs)
            if user.check_password(password) is True:
                return user
        except User.DoesNotExist:
            return None