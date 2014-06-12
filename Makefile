MANAGE=venv/bin/python manage.py


test:
	$(MANAGE) test

run:
	$(MANAGE) runserver

build:
	[ -d venv ] || virtualenv venv --no-site-packages --python=python2
	venv/bin/pip install --upgrade -r requirements.txt
	$(MANAGE) syncdb --noinput
	$(MANAGE) migrate --noinput
	#PYTHONPATH=`pwd` DJANGO_SETTINGS_MODULE=django_test24.settings $(MANAGE) syncdb --noinput
