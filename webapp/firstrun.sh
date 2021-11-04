#!/bin/bash

if [ ! -f /var/www/html/sites/default/settings.php ]; then

	echo "Copy default config... "

        cp -dpR /var/www/html/sites.ORIG/* /sites
        cp /mysettings/settings.php sites/default/settings.php
	
	chmod 777 /sites
        chown -R www-data.www-data /sites
        chown -R www-data.www-data /sites/default
        chown www-data.www-data /sites/default/settings.php
fi

TABLES=`mysql -hmariadb -udrupal -pdrupal drupal -e 'show tables' | awk '{ print $1}' | grep -v '^Tables'`
i=`wc -l <<<"$TABLES"`
echo "found $i tables"

if [ "$i" -lt 2 ]; then
        drush si standard --yes --db-url=mysql://drupal:drupal@mariadb:3306/drupal --site-name=Example --account-pass=admin -vvv

        drush -y config-set system.performance css.preprocess 0
        drush cr
else
        echo "no need to create new db"
fi

/usr/local/bin/docker-php-entrypoint -D FOREGROUND
