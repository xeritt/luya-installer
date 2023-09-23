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

## Install Generator Model/Form/Controller/Views

[https://github.com/schmunk42/yii2-giiant](https://github.com/schmunk42/yii2-giiant)

```shell
composer require schmunk42/yii2-giiant:"@stable"
```

Configure config.php

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

[http://localhost:8080/gii](http://localhost:8080/gii)