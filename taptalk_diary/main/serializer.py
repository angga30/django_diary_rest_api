from rest_framework import serializers
from main.models import DiaryUser
from datetime import date

class DiaryUserSerializer(serializers.ModelSerializer):
    date_published = serializers.DateField(read_only=True)
    user_id = serializers.CharField(read_only=True)
    def create(self, validated_data):
        diary = None
        try:
            diary = DiaryUser.objects.get(
                user_id=str(self.context["request"].user.id),
                date_published=date.today(),
            )
            diary.title = validated_data['title']
            diary.body_content = validated_data["body_content"]
        except DiaryUser.DoesNotExist:
            diary = DiaryUser.objects.create(
                title=validated_data['title'],
                body_content=validated_data['body_content'],
                date_published=date.today(),
                user_id=str(self.context["request"].user.id),
            )
        diary.save()
        return diary
    class Meta:
        model = DiaryUser
        fields = ( "title", "body_content", "date_published","user_id" )