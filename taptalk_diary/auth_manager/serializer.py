from rest_framework import serializers
from django.contrib.auth import get_user_model
import re 
SpecialSym = ['!','@','#'] 
UserModel = get_user_model()


class UserSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True)
    birthday = serializers.DateTimeField(format='%m/%d/%Y %H:%M:%S')

    def validate(self, data):
        if not (len(data["password"]) <= 32 and len(data["password"]) >= 6):
            raise serializers.ValidationError("panjang karakter harus antara 6-32")
        elif re.search('[0-9]',data["password"]) is None:
            raise serializers.ValidationError("password harus memiliki numerik")
        elif re.search('[A-Z]',data["password"]) is None:
            raise serializers.ValidationError("password harus harus memiliki capital")
        elif re.search('[a-z]',data["password"]) is None:
            raise serializers.ValidationError("password harus harus memiliki lowercase")
        elif not any(char in SpecialSym for char in data["password"]):
            raise serializers.ValidationError("password harus memiliki spesial karakter (! ,@, #)")
        return data
    def create(self, validated_data):
        user = UserModel.objects.create(
            username=validated_data['username'],
            full_name=validated_data['full_name'],
            email=validated_data['email'],
            birthday=validated_data['birthday'],
        )
        user.set_password(validated_data['password'])
        user.save()
        return user
    class Meta:
        model = UserModel
        fields = ( "id", "username", "password", "full_name", "email", "birthday" )