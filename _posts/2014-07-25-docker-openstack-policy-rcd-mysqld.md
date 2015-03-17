Title: 'Docker, Openstack, policy-rc.d, mysqld'
Date: 2014-07-25 18:46

I'm working on building a [Docker](http://docker.io) image that I can use with [Jenkins](http://jenkins-ci.org) to run tests on some code. That code interacts with an Openstack install in the container to run the tests.

I'm using a variation of this [cloudgear install script](https://github.com/ilearnstack/cloudgear) to install Openstack, an approach that seems to work well on Vagrant VMs, but it's failing wildly in a Docker container.

The issue I'm on right now is that mysql-server won't start. I tried starting (and restarting) it manually in my Dockerfile with `RUN service mysql start` after mysql is installed but always get a policy-rc.d error.

> invoke-rc.d: policy-rc.d denied execution of start.

I dug in and found that Docker's ubuntu includes a `policy-rc.d` file that simply returns 101 (not allowed) for any service that tries to start/restart after installation.

    #!/bin/sh
    exit 101

So... not sure why this is set up this way but I'll go with it. I changed my Dockerfile to rewrite the `policy-rc.d` file:

    RUN echo "#!/bin/sh\nexit 0" > /usr/sbin/policy-rc.d

The `0` return code is basically a heard-coded "yes" for installed services to run. I tried re-building my image with this new file, and while I am no longer getting the "denied execution" errors mysql still is not starting (confirmed with a couple of test operations that run after the install):

    RUN apt-get install mysql-server python-mysqldb mysql-client-5.5 -y
    RUN ps aux | grep mysql
    RUN mysql -uroot -p<pwd> -e "show databases;"

Which return:

    Step 10 : RUN ps aux | grep mysql
    ---> Running in c68790f9b090
    root        10  0.0  0.0   4408   320 ?        R    18:56   0:00 /bin/sh -c ps aux | grep mysql
     ---> 884cb443fb98
    Removing intermediate container c68790f9b090
    Step 11 : RUN mysql -uroot -p<pwd> -e "show databases;"
     ---> Running in 1631e5c2edee
    ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' (2)
    2014/07/25 18:56:28 The command [/bin/sh -c mysql -uroot -p<pwd> -e "show databases;"] returned a non-zero code: 1

I'm pretty much out of ideas now. If you've got any, please ping me at <steveivy@gmail.com> or on Twitter [@steveivy](http://twitter.com/steveivy).