# Generated by Django 2.2.11 on 2020-03-28 15:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='podcast',
            name='release_date',
            field=models.DateField(blank=True, null=True),
        ),
    ]
