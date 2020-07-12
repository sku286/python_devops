**Devops:**

Clone this repo using below commnad:
`git clone --single-branch --branch master https://github.com/sku286/python_devops.git`


Run the below command to collect the static files in volume.
`docker-compose exec <Project1 repo> python manage.py collectstatic --no-input --clear`
`docker-compose exec <Project2 repo> python manage.py collectstatic --no-input --settings=kiwee_dashboard_api.settings.production`

Now the project can be accessed using the url at port 8080.



