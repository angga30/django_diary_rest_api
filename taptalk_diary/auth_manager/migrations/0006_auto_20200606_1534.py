# Generated by Django 3.0.7 on 2020-06-06 15:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('auth_manager', '0005_auto_20200605_1921'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='full_name',
            field=models.CharField(max_length=100),
        ),
    ]