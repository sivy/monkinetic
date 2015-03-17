Title: 'Docker, Openstack, testing followup'
Date: 2014-08-01 18:06

Last week I wrote about an issue I was having with Docker and running mysql (among other things):

>The issue I'm on right now is that mysql-server won't start. I tried starting (and restarting) it manually in my Dockerfile with `RUN service mysql start` after mysql is installed but always get a policy-rc.d error.

What I finally learned (after some research and some helpful folks in the #docker IRC) is that Docker is really designed to run a single process in a limited jail-like environment. It's not a virtual machine, which is why containers are smaller and way faster to start.

If you need to run an app with access to a variety of processes, it seems that current best practice is to boot multiple docker containers running the various services, and use [docker container linking](https://docs.docker.com/userguide/dockerlinks/) to have the services talk to each other.

As for my particular use case, I decided that I did not need a complete Openstack install in order to run my unit tests. I stripped back my provisioning script to only install the base debian packages and the Openstack Dashboard packages, which installs the dashboard unit testing frameworks and mock data that my tests depend on. I can thenn run my tests and pull out the results for processing.