# Generated by Django 2.1.3 on 2018-11-26 10:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0005_auto_20181126_1539'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='image',
            field=models.FileField(upload_to=''),
        ),
    ]
