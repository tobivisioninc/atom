### Database

> Atom offers the use of a database, but can run without. If you do operate a database, we currently support:
	- MySQL
	- PostgreSQL

> To start you will have to configure your database in your parameters.

```yaml
mysql: 
    user: "[USER]"
    password: "[PASSWORD]"
    host: "[HOST]"
    database: "[DATABASE_NAME]"
```
or
```yaml
postgresql: 
    user: "[USER]"
    password: "[PASSWORD]"
    host: "[HOST]"
    database: "[DATABASE_NAME]"
```

> After configuring your database, you can install your schema through the console command.
```bash
$ ./bin/console.py schema create
```
> This will create your tables. It will not dump any tables and will skip when error, to continue, allowing any existing data to remain.

##### This is all there is to the database, the rest (table definitions) comes from Models, see that doc for more information.