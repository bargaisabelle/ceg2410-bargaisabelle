## Setup AD DC

- Configuring a Windows Server to be a Domain Controller
  - Create a Windows Server, WinServ1, on AWS. Do not auto assign a public IP and do not allow it to be reassigned.
  - Take note of the VPC and the private IP created.
  - Access the instance page and select WinServ1. Select 'Actions', from the drop-down select 'Security' and 'Get Windows Password'
  - On this page you will need to decrypt your Private key. This will output the user name 'Administrator' and a password used to access the domain server.
  - Similarly, create a second Windows Server, WinServ2, and decrypt the Windows Password.
  - Connect to each instance in WSL2.
- On WinServ2, you will need to access your Preferred DNS Server and update that to WinServ1's private IP.
  - This can be accessed be entering the servers File Explorer
  - Right click on 'This PC'
- Domain Name: ad.barga.com
- Domain Controller Name: DC1
- Domain DNS IP: 10.0.0.208

