## Part 1
   - what service you installed & how
     - apache
     - sudo apt install apache2
   - what port it serves content over
     - 80
   - where site content exists
     - /var/www/html/index.html
   - any special configurations you did
     - I didn't do any special configurations or permissions
   - **screenshot** of your content being served (default content will not get credit)

![server screenshot](images/server.png)

## Part 2
   - How to generate a certificate
     - sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/apache2/ssl/apache.key -out /etc/apache2/ssl/apache.crt
     - (must create ssl directory, apache.key file, and apache.crt file beforehand)
   - Location for certs on system
     - /etc/apache2/ssl/apache.crt
   - Any file permissions that need to be noted for the cert
     -  -rw-r--r--

## Part 3
   - Enabling the service to use HTTPS
     - sudo a2enmod ssl
     - sudo a2ensite default-ssl.conf
     - sudo a2enmod rewrite (for rewrite method below)
   - Configuration changes to set:
     - the location of the public and private files of the certificate
       - /etc/ssl/certs
       - /etc/ssl/private
     - serving content over HTTPS
```
<VirtualHost *:443>
        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined

        SSLEngine on
        SSLCertificateFile /etc/apache2/ssl/apache2.crt
        SSLCertificateKeyFile /etc/apache2/ssl/apache2.key
</VirtualHost>
```
   - redirect HTTP requests to HTTPS
```
<VirtualHost *:80>
        RewriteEngine On
        RewriteCond %{HTTPS} !=on
        RewriteRule ^/?(.*) https://%{SERVER_NAME}/$1 [R=301,L]
</virtualhost>
```
   - Restarting the service after the config changes
     - sudo systemctl restart apache2
   - Proving that the changes work
     - In the URL address, it says https instead of http, which means that the site is secured using an TLS/SSL certificate
   - **screenshot** of site working with HTTPS

![https screenshot](images/server2.png)


Sources:
  - https://techexpert.tips/apache/enable-https-apache/
  - https://askubuntu.com/questions/629995/apache-not-able-to-restart
  - https://stackoverflow.com/questions/10144634/htaccess-invalid-command-rewriteengine-perhaps-misspelled-or-defined-by-a-m
