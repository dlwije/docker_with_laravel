<p align="center"><h2>Laravel configuration on a Docker with NGINX server</h2> </p>

## About NGINX, Laravel implementation on Docker

This is a ready to build Docker template(image) to run PHP Laravel applications with NGINX web server environment. Feel free to change [MySQL](https://www.mysql.com), [NGINX](https://www.nginx.com) , [PHP](https://www.php.net) and [Laravel](https://laravel.com) versions according to your satisfaction.

### Few steps to follow to get it working
- Before proceed to below steps please consider to install [Docker or docker desktop](https://www.docker.com/products/docker-desktop) on your computer.
- Step 1:
  - Copy the 'docker-compose.yml' and put it on your root folder as shown in here.
- Step 2:
  - Get a copy of '.env' file and paste it by renaming '.env.prod' into root folder.
  - Copy the 'development' folder and paste it on your root folder.
- Step 3:
  - Go inside the 'development' folder.
  - From the 'app.dockerfile' you can change the PHP version you want to install in your application and other commands will install necessary libraries for the app.
  - From the 'web.dockerfile' will install the latest NGINX server. You can search the [Docker hub](https://hub.docker.com) for check other versions that you can install.
  - The 'vhost.conf' is the file which configure file path to the source file and php file for the web server. You don't need to change anything here.
- Step 4:
  - If above steps are completed:
    - Open any CMD and run
      <pre>docker compose up --build</pre>
      This will create docker image with according to given instruction on 'development' folder files.
  - Open the URL with given Port number on 'docker-compose.yml' under "The web server" assigned port. 

## what is Laravel?
Laravel is accessible, powerful, and provides tools required for large, robust applications.

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 1500 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.
