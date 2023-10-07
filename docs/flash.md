# Luya and Yii2 Flash
[Yii2 Flash-data](https://www.yiiframework.com/doc/guide/2.0/en/runtime-sessions-cookies#flash-data)

## Install Flash to you project
Go to Luya intall dir and [make install.flash]

## Need 

Flash file flash.php in to /views/layouts

In /views/layouts/main.php code to display flash

```shell
<?php echo $this->render("flash"); ?> 
```

Error message example

```shell
 \Yii::$app->session->setFlash('error', 'Erorr message');
```

Succcess example

```shell
 \Yii::$app->session->setFlash('success', 'Save done');
```
