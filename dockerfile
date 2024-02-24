   ## Create HTTPD Application
#   
#    FROM centos:7
#    
#    LABEL Developer="Nilesh"
#
#    RUN yum install httpd -y
#
#    RUN echo "<h1> Here is My First Docker File" > /var/www/html/index.html
#
#    EXPOSE 80
#
#    CMD  httpd -DFOREGROUND
#

    ##Create Tomcat Application 

#    FROM centos:7
#    LABEL Author="Nilesh"
#    
#    RUN yum install java-11-openjdk -y
#    
#    ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.99/bin/apache-tomcat-8.5.99.tar.gz /opt/
#    
#    RUN tar -xvf /opt/apache-tomcat-8.5.99.tar.gz -C /opt/
#    
#    EXPOSE 8080
#    
#    WORKDIR /opt/apache-tomcat-8.5.99
#    
#    ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war webapps/
#    
#    CMD sh bin/catalina.sh run


    ## Create Node JS Application


    FROM ubuntu:22.04

    LABEL Owner="Nilesh"

    RUN apt update

    RUN apt install git -y

    RUN git clone https://github.com/shubhamkalsait/devops-fullstack-app.git  /opt

    ADD https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh  /opt/devops-fullstack-app/frontend/

    WORKDIR /opt/devops-fullstack-app/frontend/

    EXPOSE 3000

    RUN  source ~/.bashrc

    RUN apt install nmv --lts

    #COPY package*.json ./
    
    RUN  apt install npm -y
    
    CMD [ "npm", "start" ]

