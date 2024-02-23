    ## This is My First Docker File
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

