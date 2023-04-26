#!/bin/bash
#This bash script is used to reformat the permissions to production level

#change owners
chown www-data:root .editorconfig
chown www-data:root .env
chown www-data:root .env.example
chown root:root .git
chown www-data:root .gitattributes
chown www-data:root .gitignore
chown www-data:root README.md
chown www-data:root app -R
chown root:root app/View -R
chown www-data:root artisan
chown www-data:root bootstrap -R
chown www-data:root composer.json
chown www-data:root composer.lock
chown www-data:root config -R
chown www-data:root database -R
chown root:root jsconfig.json
chown www-data:root lang -R
chown root:root node_modules -R
chown root:root package-lock.json
chown root:root package.json
chown www-data:root phpunit.xml
chown root:root postcss.config.js
chown www-data:root public -R
chown www-data:root resources -R
chown www-data:root routes -R
chown www-data:root storage -R
chown root:root tailwind.config.js
chown www-data:root tests -R
chown www-data:root vendor -R
chown root:root vite.config.js

#change permissions
chmod 744 .editorconfig
chmod 744 .env
chmod 744 .env.example
chmod 755 .git

#.git children
chmod 644 .git/COMMIT_EDITMSG
chmod 644 .git/FETCH_HEAD
chmod 644 .git/HEAD  
chmod 644 .git/ORIG_HEAD
chmod 644 .git/COMMIT_EDITMSG
chmod 755 .git/branches

#branches children

#back to .git
chmod 644 .git/config
chmod 644 .git/description
chmod 755 .git/hooks

#hooks children
chmod 755 .git/hooks -R

#back to .git
chmod 644 .git/index
chmod 755 .git/info

#info children
chmod 644 .git/info/exclude

#back to .git
chmod 755 .git/logs

#logs children
chmod 644 .git/logs/HEAD  
chmod 755 .git/logs/refs

#.git/logs/ref children
chmod 755 .git/logs/refs -R

#back to .git
chmod 755 .git/objects -R
chmod 755 .git/refs -R

#back to top
chmod 744 .gitattributes
chmod 744 .gitignore
chmod 744 README.md
chmod 755 app

#into app
chmod 755 app/Console -R
chmod 755 app/Exceptions -R
chmod 755 app/Http -R
chmod 755 app/Models -R
chmod 755 app/Providers -R

#back to top
chmod 644 artisan
chmod 755 bootstrap  

#into bootstrap
chmod 644 bootstrap/app.php
chmod 755 bootstrap/cache

#back to top
chmod 644 composer.json
chmod 644 composer.lock
chmod 755 config

#config children
chmod 644 config/ -R

#back to top
chmod 755 database

#database children
chmod 644 database/.gitignore
chmod 754 database/factories -R
chmod 754 database/migrations -R
chmod 754 database/seeders -R

#back to top
chmod 644 jsconfig.json
chmod 755 lang

#lang children
chmod 755 lang/en

#en children
chmod 644 lang/en -R
chmod 644 lang/en/* -R

#back to top
chmod 755 node_modules -R
chmod 644 package-lock.json
chmod 644 package.json
chmod 644 phpunit.xml
chmod 644 postcss.config.js
chmod 755 public

#public children
chmod 644 public/.htaccess
chmod 644 public/favicon.ico
chmod 644 public/index.php
chmod 644 public/robots.txt
chmod 755 public/build

#public/build children
chmod 644 public/build/manifest.json
chmod 755 public/build/assets
chmod 644 public/build/assets/* -R

#back to top
chmod 755 resources  

#resources children
chmod 755 resources/* -R

#resources/css children
chmod 644 resources/css/* -R

#resources/images children
chmod 644 resources/images/* -R

#resources/js children
chmod 644 resources/js/* -R
chmod 755 resources/js/Components
chmod 644 resources/js/Components/* -R
chmod 755 resources/js/Layouts
chmod 755 resources/js/Layouts/* -R
chmod 755 resources/js/Pages
chmod 755 resources/js/Pages/* -R

#back to top
chmod 755 routes

#routes children
chmod 644 routes/* -R

#back to top
chmod 755 storage

#storage children
chmod 755 storage/* -R

#back to top
chmod 644 tailwind.config.js
chmod 755 tests

#tests children
chmod 644 tests/* -R

#back to top
chmod 755 vendor

#vendor children
chmod 755 vendor/* -R
chmod 644 vendor/autoload.php

#back to top
chmod 644 vite.config.js
