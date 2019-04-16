## Installation

####### Go to your destination dir
    $ cd [destination_dir]
    IE: $ cd /var/www

####### Get the Latest Version
    $ curl https://www.getatom.xyz/downloads/latest -o atom.tar.gz

####### Extract Tar

    $ tar -xzf atom.tar.gz

### Step 1 - Installation with Dependencies

For this procedure we used a fresh installation of Ubuntu 18.04.1 - Server Edition, with standard LAMP stack installed through `tasksel`. This installation comes with GIT pre-installed

####### Python 2.7 

    $ sudo apt install python-pip python-ldap python-yaml python-mysql -y

####### Python 3.4+

    $ sudo apt install python-pip python-ldap python-yaml python-mysql -y

####### After version specific installs, next would be to install the PIP packages

	$ cd [PROJECT_ROOT] && sudo pip install -r requirements.txt

### Step 2 - Database
Here you should create a database and user for your project. In this example we created a MySQL database named `atom`, with user named `atom`, also having password `atom`.

####### It is recommended you pick more secure names and passwords

### Step 3 - Configure App
- The value for `[ENV]` should equal to the value of the `env` setting in [PROJECT_ROOT]/app/config/config.yml

####### From your root, copy the sample file
    $ cp app/config/parameters_sample.yml app/config/parameters_[ENV].yml

####### Now edit the new file
    $ vi app/config/parameters_[ENV].yml

####### Or

    $ nano app/config/parameters_[ENV].yml

Once you open the file for editing, please enter the correct information for your database under the corresponding section (tv_orm)

####### Optional - Create Database Schema
    $ cd [PROJECT_ROOT]
    $ ./bin/console.py schema create

### Step 4 - Configure Webserver
This is an example config for `Apache2`

####### Using `/var/www/atom` as the [PROJECT_ROOT]
```

	<VirtualHost *:80>
		ServerName  www.getatom.xyz
		ServerAlias getatom.xyz

		DocumentRoot /var/www/atom/web
		AccessFileName .htaccess
		<Directory /var/www/atom/web>
			Options +ExecCGI
			DirectoryIndex index.py
			AddHandler cgi-script .py .cgi

			AllowOverride All
			<IfModule mod_authz_core.c>
				Require all granted
			</IfModule>
			<IfModule !mod_authz_core.c>
				Order allow,deny
				Allow from All
			</IfModule>
		</Directory>

		ErrorLog /var/www/atom/var/logs/error.log
		CustomLog /var/www/atom/var/logs/access.log combined
	</VirtualHost>

```
