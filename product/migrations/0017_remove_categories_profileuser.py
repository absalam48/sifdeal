# Generated by Django 2.1.3 on 2018-12-04 07:10

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0016_auto_20181204_1142'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='categories',
            name='profileuser',
        ),
    ]
