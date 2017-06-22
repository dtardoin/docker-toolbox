## Nginx Jump Host
This is intended to run for a short time to share a directory with a server/service/person that is remote from the current machine. 

A basic use case is having to one-time copy a file to a server that doesn't have scp/sftp access but does have access to curl.

### USAGE
Copy this Dockerfile into the directory that you want to share, build it, then run it making sure to bind the port. 
