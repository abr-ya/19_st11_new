rm /etc/nginx/sites-available/default
ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-available/default
/etc/init.d/nginx restart
ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
/etc/init.d/gunicorn restart
gunicorn -c /home/box/web/etc/hello.py hello:app &