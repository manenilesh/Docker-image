    ## This is My First Docker File
   
    FROM centos:7
    
    LABEL Developer="Nilesh"

    RUN yum install httpd -y

    RUN echo "<h1> Here is My First Docker File" > /var/www/html/index.html

    EXPOSE 80

    CMD  httpd -DFOREGROUND
