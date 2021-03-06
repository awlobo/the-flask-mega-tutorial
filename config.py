import os
from dotenv import load_dotenv


basedir = os.path.abspath(os.path.dirname(__file__))
load_dotenv(os.path.join(basedir, '.env'))


class Config(object):
    ADMINS = ['your-email@example.com']
    ELASTICSEARCH_URL = os.environ.get('ELASTICSEARCH_URL')
    LANGUAGES = ['en', 'es']
    MAIL_PASSWORD = os.environ.get('MAIL_PASSWORD')
    MAIL_PORT = int(os.environ.get('MAIL_PORT') or 25)
    MAIL_SERVER = os.environ.get('MAIL_SERVER')
    MAIL_USE_TLS = os.environ.get('MAIL_USE_TLS') is not None
    MAIL_USERNAME = os.environ.get('MAIL_USERNAME')
    MS_TRANSLATOR_KEY = os.environ.get('MS_TRANSLATOR_KEY')
    POSTS_PER_PAGE = 5
    REDIS_URL = os.environ.get('REDIS_URL') or 'redis://'
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'you-will-never-know'
    SQLALCHEMY_DATABASE_URI = os.environ.get(
        'DATABASE_URL') or 'sqlite:///' + os.path.join(basedir, 'app.db')
    SQLALCHEMY_TRACK_MODIFICATIONS = False
