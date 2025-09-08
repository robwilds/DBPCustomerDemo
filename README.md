# Disclaimer

There's no support or warranty expressed or implied by utilizing this docker build. This is for illustrative purposes only!!

# Summary

This project includes an enterprise version of Alfresco with process services, ldap server and admin tool and email server. Alfresco and process services are configured with ldap sync and authentication

# Things to note

Alfresco data and postgres data is set to persist using docker bind mounts

The ldap and email server configurations persist data with volume mounts in the data/services directory

Dozzle container monitoring is included and an iframe showing the monitoring page is on the landing page. I use this just to get an idea of when the services "settle"

In order to log in to ldap admin, use cn=admin,dc=example,dc=com password: admin. You will see the OU and demo user already configured. You shouldn't have to do anything in admin but good to know what the admin login is!

To log in to rainloop email client, use demo/demo. Alfresco and Process services will send messages to this email box (as long as you login as demo into both systems) so this is the place to check email for the demo user

Out of Process Audit is configured to send audit data to elastic

# Getting started

After pulling this repo, perform chmod +x \*.sh at the root of the project to be sure you can run all sh scripts

Now execute the run.sh script which present a menu. pick the option that best fits your intent. When running directly after a pull from github, select start (option 1).

Once everything loads the landing page will launch automatically

<img width="983" height="543" alt="image" src="https://github.com/user-attachments/assets/f5344afa-b171-4ec7-a2e9-61a0ef36c2a7" />


Login to Share with demo/demo. Also you can login to process services with demo/demo; however, administrative functions will require login with admin@example.com/admin (such as applying a license). The process admin rest api endpoint is already configured so nothing to do there.

There are amps and jars ready to go but they need to be installed (I didn't bootstrap in order to keep things clean as possible on initial run). select the "install amps and jars" option on the run.sh menu and you will be able to execute http requests from a javascript declared in a rule and the option to select the Hyland theme in administration
