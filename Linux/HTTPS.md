## Part 1
   - what service you installed & how
     - apache
     - sudo apt install apache2
   - what port it serves content over
     - 80
   - where site content exists
     - /var/www/html/index.html
   - any special configurations you did
     - changed permissions?
     - changed default locations for where content is served?
   - **screenshot** of your content being served (default content will not get credit)

![server screenshot](images/server.png)

## Part 2
   - How to generate a certificate
     - sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/apache2/ssl/apache.key -out /etc/apache2/ssl/apache.crt
     - (must create ssl directory, apache.key, and apache.crt beforehand)
   - Location for certs on system
     - /etc/apache2/ssl/apache.crt
   - Any file permissions that need to be noted for the cert
     -  -rw-r--r--

## Part 3
   - Enabling the service to use HTTPS
   - Configuration changes to set:
     - the location of the public and private files of the certificate
     - serving content over HTTPS
     - redirect HTTP requests to HTTPS
   - Restarting the service after the config changes
   - Proving that the changes work
     - Think, "What are you doing to test?"
   - **screenshot** of site working with HTTPS
