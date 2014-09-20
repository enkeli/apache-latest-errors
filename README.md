##apache-latest-errors
====================

Get the latest errors from apache error logs in Ubuntu

###Installation:

Give the script execution perms:

```bash
chmod 775 getErrors.sh
```

and execute it:

```bash
./getErrors.sh
```
####Optional

You can install it globally:

```bash
sudo ln -s getErrors.sh /usr/bin/getErrors
```
and to execute it:

```bash
getErrors
```

###Usage:

If you execute it without arguments, it looks for the default location of apache error logs  
wich is:
```bash
/var/log/apache2/error.log
```

But if you pass the first argument **_dir_**, it will look into _/var/www/**dir**/logs/error.log_  
Meaning that you have created a virtual host with that file structure. 

####Example:

```bash
getErrors example.com
```

will look into:

```bash
/var/www/example.com/logs/error.log
```

####Output:

The default output file is:

```bash
$HOME/Develop/logs/latest_errors.log
```

In wich the latest 15 errors of original log are stored.

Also if you run the script in a terminal, you will see that 15 lines as a output.

You can use the file generated with another tools, i made this simple script to work with the **_File Watcher_** widget of KDE, and a few shorcuts for triggering the script for each virtualhost i have installed on my dev box. So i can see the latest errors of my development sites just with one click.




