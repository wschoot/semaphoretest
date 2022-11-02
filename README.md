# Semaphore

This is largely a condensed copy/paste of the mediocre documentation at https://docs.ansible-semaphore.com/administration-guide/installation

`sudo snap install semaphore`

* No default user exists, so lets create one
```bash
sudo semaphore user add --admin \
--login user \
--name=user \
--email=foo@bar \
--password=XYZ

sudo snap start semaphore
```

* http://10.10.10.123:3000/auth/login

* Create keys at the [keys](http://10.10.10.123:3000/project/1/keys) page, i.e. an _ssh_ key or a _login_password_ (and a _None-key_ for public repo’s ; every repo you create in semaphore needs an accesstoken)

* Create an (empty) environment (i.e. `{}`) on the [environment](http://10.10.10.123:3000/project/1/environment) page as every task template needs an environment

* Create an inventory on the [inventory](http://10.10.10.123:3000/project/1/inventory) page, containing your servers
