# Generated by Django 2.1.3 on 2018-11-27 06:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0006_auto_20181126_1554'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofileinfo',
            name='address',
            field=models.CharField(default='', max_length=50),
        ),
        migrations.AddField(
            model_name='userprofileinfo',
            name='city',
            field=models.CharField(default='', max_length=60),
        ),
        migrations.AddField(
            model_name='userprofileinfo',
            name='country',
            field=models.CharField(default='', max_length=50),
        ),
        migrations.AddField(
            model_name='userprofileinfo',
            name='name',
            field=models.CharField(default='', max_length=30),
        ),
        migrations.AddField(
            model_name='userprofileinfo',
            name='state_province',
            field=models.CharField(default='', max_length=30),
        ),
    ]
