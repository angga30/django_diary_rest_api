from django.db import models
from django.contrib.auth.models import AbstractUser, UserManager, BaseUserManager
from django.utils import timezone

class UserManager(BaseUserManager):
    use_in_migrations = True

    def _create_user(self, username, email, password, **extra_fields):
        """
        Create and save a user with the given username, email, and password.
        """
        if not username:
            raise ValueError('The given username must be set')
        email = self.normalize_email(email)
        username = self.model.normalize_username(username)
        user = self.model(username=username, email=email, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, username, email=None, password=None, **extra_fields):
        return self._create_user(username, email, password, **extra_fields)

class User(AbstractUser):
    username = models.CharField(max_length=60, unique=True) 
    first_name = None
    last_name = None
    date_joined = None
    full_name = models.CharField(max_length=100)
    email = models.EmailField(unique=True, db_index=True)
    birthday = models.DateTimeField(blank=True, null=True)
    is_active = models.BooleanField(
        default=True,
        help_text=(
            'Designates whether this user should be treated as active. '
            'Unselect this instead of deleting accounts.'
        ),
    )
    is_staff = None
    is_superuser = None
    groups = None
    user_permissions = None

    EMAIL_FIELD = 'email'
    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['email']

    objects = UserManager()

class LoggedInUser(models.Model):
    user = models.OneToOneField(User, related_name='logged_in_user', on_delete=models.CASCADE)
    # Session keys are 32 characters long
    session_key = models.CharField(max_length=1000, null=True, blank=True)

    def __str__(self):
        return self.user.username