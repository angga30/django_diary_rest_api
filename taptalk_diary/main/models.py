from django.db import models
from auth_manager.models import User

# Create your models here.

class DiaryUser(models.Model):
    title = models.CharField(max_length=255)
    body_content = models.TextField()
    date_published = models.DateField(null=False)
    user_id = models.ForeignKey(User, on_delete=models.CASCADE)

    def get_title(self):
        return self.title