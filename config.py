import os


class Config(object):
    TESTING = True
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'you-will-never-know'
    # Disable CSRF protection in the testing configuration
    WTF_CSRF_ENABLED = False
