### Getting Started

> Starting is easy, let us show you

```bash
# go to your destination dir
$ cd [destination_dir]
# $ cd /var/www

# Get the Latest Version
$ curl https://atom.tobivision.co/downloads/latest -o atom.tar.gz

# extract tar
$ tar -xzf atom.tar.gz
```

> This is all the you have to do to have a working copy of the cde. Next would be to configure your webserver. If you are using `Apache` (`httpd`), you can use the example `conf` file included at `[ROOT]/app/conf/atom.apache.conf`, and adjust to suit your environment.

> That really is it, you can start coding inside the example bundle included, found at `[ROOT]/src/app/`, please also see the `[ROOT]/src/test` folder, it has some other examples that might come in handy.