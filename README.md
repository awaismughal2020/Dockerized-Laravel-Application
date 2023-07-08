# Dockerized Laravel Application

This repository provides a Dockerized setup for running a Laravel application using PHP version 8.2 with phpMyAdmin and a local MySQL database.

## Prerequisites

Make sure you have the following dependencies installed on your system:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

Follow these steps to get the Dockerized Laravel application up and running:

1. Clone this repository to your local machine:

   ```
   git clone <repository-url>
   ```

2. Navigate to the cloned directory:

   ```
   cd <repository-directory>
   ```

3. Build and start the Docker containers:

   ```
   docker-compose up -d --build
   ```

   This command will build the Docker image for the Laravel application, create and start the containers for the application, the database, and phpMyAdmin.

4. Wait for the containers to start up. You can monitor the logs using the following command:

   ```
   docker-compose logs -f
   ```

   You should see the logs for the containers appearing in the terminal. Once you see messages indicating that the Laravel application and phpMyAdmin are ready, you can proceed to the next step.

5. Access the Laravel application:

   Open a web browser and visit [http://localhost:8333](http://localhost:8333) to access the Laravel application.

6. Access phpMyAdmin:

   Open a web browser and visit [http://localhost:8383](http://localhost:8383) to access phpMyAdmin. Use the following credentials to log in:

    - **Server:** `database`
    - **Username:** `laravel`
    - **Password:** `secret`

   From phpMyAdmin, you can manage the local MySQL database used by the Laravel application.

## Customization

You can customize the Docker setup according to your specific needs. Here are a few areas you may consider modifying:

- **Application Code:** Place your Laravel application code in the root directory of this repository. You can replace the existing code with your own or modify it as required.

- **Database Configuration:** Update the MySQL database configuration in the Laravel application code to connect to the local database. The default configuration can be found in the `.env` file within your Laravel application.

- **Ports:** If the default ports `8000` and `8080` are already in use on your system, you can modify the `docker-compose.yml` file to use different ports for the Laravel application and phpMyAdmin.

- **PHP Version:** If you encounter issues with the PHP version specified in the `Dockerfile`, you can modify it to use a different PHP version that is compatible with your application.

- **Additional Dependencies:** If your Laravel application requires additional PHP extensions or other dependencies, you can add the necessary installation commands to the `Dockerfile` before the `composer install` command.

## Cleaning Up

To stop and remove the Docker containers, run the following command from the root directory of this repository:

```
docker-compose down
```

This will stop and remove the containers, but your application code and database data will be preserved.


## IMPORTANT

Feel free to modify and use this Dockerized Laravel application setup according to your needs.

If you have any questions or encounter any issues, please don't hesitate to contact at [awaiskhanmughal1995@gmail.com](mailto:awaiskhanmughal1995@gmail.com).

Enjoy your Dockerized Laravel application!
