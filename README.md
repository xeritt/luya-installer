# Luya Installer v1.0

## Need software

* git
* docker
* docker-compose
* make

Need opens ports 8080 and 43306.

## First step

```shell
git clone [path git]
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
You can now access your website in the browser under [https://localhost:8080](https://localhost:8080)

Default user [admin@admin.com] and password [admin]

### Official site LUYA 

[https://luya.io/](https://luya.io/)