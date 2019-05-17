FROM fedora:latest
RUN dnf install python -y
RUN pip install boto3
RUN yum install httpd -y
COPY ./ /var/www/html
RUN chmod +x /var/www/html
RUN cp /var/www/html/index.htm /var/www/html/index.html
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
