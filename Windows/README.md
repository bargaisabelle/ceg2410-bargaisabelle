## Setup AD DC

- Configuring a Windows Server to be a Domain Controller
  - Install Active Directory Domain Services
  - Select 'Add Roles and Features' in the configuration menu, which will open the Wizard
  - Select 'Next' until you reach Server Roles
  - Ensure 'Active Directory Domain Services' is selected
  - Then you may proceed to Install (will most likely restart upon installation)
 
  - In the Active Directory Services Configuration Wizard, where you can promote the server into a Domain Controller
  - Select 'Add a new forest' and enter a root domain name
  - The other options are unneccessary and you may click 'Install'
  - Congrats! You made a AD DC.

- Domain Name: ad.barga.com
- Domain Controller Name: DC1
- Domain DNS IP: 10.0.0.208

## Create OUs

![ous](images/ou.png)

## Joining Users

![engineers users](images/eng.png)

![developers users](images/dev.png)

![finance users](images/fin.png)

![Hr users](images/hr.png)

## Joining Computers

First you need your server instances:
  - Create a Windows Server, WinServ1, on AWS. Do not auto assign a public IP and do not allow it to be reassigned.
  - Take note of the VPC and the private IP created.
  - Access the instance page and select WinServ1. Select 'Actions', from the drop-down select 'Security' and 'Get Windows Password'
  - On this page you will need to decrypt your Private key. This will output the user name 'Administrator' and a password used to access the domain server.
  - Similarly, create a second Windows Server, WinServ2, and decrypt the Windows Password.
  - Connect to each instance in WSL2.
Now that they both are set up, connect:
  - On WinServ2, you will need to access your Preferred DNS Server and update that to WinServ1's private IP.
  - This can be accessed be entering the servers File Explorer
  - Right click on 'This PC' and select 'Properties'
  - Select 'Change Settings' towards the bottom of the that page
  - Select 'Change' on the window that pops up
  - Enter the new computer name and the Domain you are trying to connect to
  - Select Okay and your computer will likely ask you to restart.

![add windows server](images/bananas.png)
![domain proof](images/domain_banana.png)
