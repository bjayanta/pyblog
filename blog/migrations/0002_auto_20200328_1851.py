# Generated by Django 3.0.2 on 2020-03-28 12:51

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='posts',
            name='content',
            field=ckeditor.fields.RichTextField(blank=True, null=True),
        ),
    ]