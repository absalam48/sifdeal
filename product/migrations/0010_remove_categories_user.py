# Generated by Django 2.1.3 on 2018-11-27 07:08

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0009_auto_20181127_1228'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='categories',
            name='user',
        ),
    ]