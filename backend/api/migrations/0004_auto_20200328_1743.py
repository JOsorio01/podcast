# Generated by Django 2.2.11 on 2020-03-28 17:43

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0003_auto_20200328_1620'),
    ]

    operations = [
        migrations.RenameField(
            model_name='podcast',
            old_name='genre',
            new_name='genres',
        ),
    ]