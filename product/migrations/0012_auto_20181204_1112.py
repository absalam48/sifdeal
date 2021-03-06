# Generated by Django 2.1.3 on 2018-12-04 05:42

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('product', '0011_categories_userprofile'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='categories',
            name='userprofile',
        ),
        migrations.AddField(
            model_name='categories',
            name='user',
            field=models.ForeignKey(default=django.utils.timezone.now, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
            preserve_default=False,
        ),
    ]
