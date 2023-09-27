# Luya Installer v1.0

## Need software

* git
* docker
* docker-compose
* make

Need opens ports 8080 and 43306.

## First step

```shell
git clone https://github.com/xeritt/luya-installer
```
## Second step
Open Makefile and rename project_name.

project_name:=luya-kickstarter

If you want change docker image PHP_VERSION.

php8.1.3 php8.2.10 [Docker image wyveo/nginx-php-fpm](https://hub.docker.com/r/wyveo/nginx-php-fpm)

yii2php8.2.4 [Docker image yiisoftware/yii2-php:8.2-fpm-nginx](https://github.com/yiisoft/yii2-docker/tree/master)


## Next step 

```text
make
cd [project_name]
make istall
make setup
```
You can now access your website in the browser under [http://localhost:8080](http://localhost:8080/)

Default user [admin@admin.com] and password [admin]

### Official site LUYA 

[https://luya.io/](https://luya.io/)

## Stop docker

```shell
make docker.stop
```

## Start docker

```shell
make docker.start
```

## Create new module

```shell
make module
```

## Config you project name and language

Configure configs/config.php

```shell
'siteTitle' => 'My Project',
'defaultRoute' => 'cms',
'language' => 'ru-RU',
```

## Install Generator Model/Form/Controller/Views

[https://github.com/schmunk42/yii2-giiant](https://github.com/schmunk42/yii2-giiant)

```shell
composer require schmunk42/yii2-giiant:"@stable"
```

Configure configs/config.php

Add to components

```shell
'i18n' => [
	'translations' => [
		'*' => [
		'class'          => 'yii\i18n\PhpMessageSource',
		],
	]
]
```

```shell
'user' => [
	'identityClass' => 'common\models\User',
	'enableAutoLogin' => true,
	'identityCookie' => ['name' => '_identity-frontend', 'httpOnly' => true],
]
```

[http://localhost:8080/gii](http://localhost:8080/gii)


## Add you crud template to generator Model/Form/Controller/Views

Configure configs/config.php

```shell
    $config->module('gii', [
        'class' => 'yii\gii\Module',
        'allowedIPs' => ['*'],
        'generators' => [
            'giiant-crud' => [
                'class' => 'schmunk42\giiant\generators\crud\Generator',
                'templates' => [
                    'zbs' => '@app/generators/crud/zbs',
                ],                
            ]
        ],        
    ]);
```

## Add kartik GridView and etc. to crud generator

```shell
composer require kartik-v/yii2-grid "dev-master"
```

Configure configs/config.php add to modules

```shell
'gridview' => [
	'class' => '\kartik\grid\Module'
]
```
