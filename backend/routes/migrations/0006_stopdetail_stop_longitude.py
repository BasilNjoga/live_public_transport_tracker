# Generated by Django 4.2.5 on 2023-11-04 21:19

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("routes", "0005_rename_stop_stopdetail_stop_id_and_more"),
    ]

    operations = [
        migrations.AddField(
            model_name="stopdetail",
            name="stop_longitude",
            field=models.IntegerField(default=0),
        ),
    ]