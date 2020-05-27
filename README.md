**Kiwee devops:**

Clone this repo using below commnad:

`git clone --single-branch --branch dev git@gitlab.com:kiwee_core/kiwee_devops.git`

Enter inside the directory and run the startup script.

`sh start.sh`

Run the below command to collect the static files in volume.

`docker-compose exec kw-gui python manage.py collectstatic --no-input --clear`

Now the project can be accessed using the url at port 8080.



