# hello-php-jenkins-x

A simple example of php running in kuberntes with jenkins-x
  
Watch pipeline activity via:  

    jx get activity -f hello-php-jenkins-x -w

Browse the pipeline log via:

    jx get build logs consultorprofissional/hello-php-jenkins-x/master

You can list the pipelines via: 

    jx get pipelines

When the pipeline is complete:

    jx get applications

To promotion to production environment run:

    jx promote --app hello-php-jenkins-x --version v0.0.3 --env production

