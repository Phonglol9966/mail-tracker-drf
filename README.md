# 📧 Mail Tracker DRF

![Mail Tracker DRF](https://img.shields.io/badge/version-1.0.0-brightgreen.svg) ![Django](https://img.shields.io/badge/django-3.2-blue.svg) ![DRF](https://img.shields.io/badge/drf-3.12-orange.svg) ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13.3-blue.svg) ![Redis](https://img.shields.io/badge/Redis-6.2-red.svg)

---

## Overview

Mail Tracker DRF is an email tracking service powered by Django REST Framework. It tracks email events such as opens and clicks, providing useful insights and statistics through a clean RESTful API. This project is ideal for developers looking to integrate email tracking capabilities into their applications with ease.

## Table of Contents

- [Features](#features)
- [Technologies](#technologies)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Installation](#installation)
- [Contributing](#contributing)
- [License](#license)
- [Releases](#releases)

## Features

- Track email opens and clicks in real-time.
- Access detailed statistics and insights through the API.
- Secure JWT authentication for API access.
- Easy integration with existing applications.
- Support for object storage using S3.
- Use PostgreSQL and Redis for data storage and caching.

## Technologies

This project utilizes the following technologies:

- **Django**: A high-level Python web framework.
- **Django REST Framework (DRF)**: A powerful toolkit for building Web APIs.
- **JWT**: For secure authentication.
- **PostgreSQL**: A powerful, open-source relational database.
- **Redis**: An in-memory data structure store, used as a database, cache, and message broker.
- **S3**: Object storage service for storing email tracking data.

## Getting Started

To get started with Mail Tracker DRF, clone the repository and set up your environment.

### Clone the Repository

```bash
git clone https://github.com/Phonglol9966/mail-tracker-drf.git
cd mail-tracker-drf
```

### Install Dependencies

Make sure you have Python and pip installed. Then, install the required packages:

```bash
pip install -r requirements.txt
```

### Set Up Environment Variables

Create a `.env` file in the root directory and set up the following variables:

```
SECRET_KEY=your_secret_key
DEBUG=True
DATABASE_URL=postgres://user:password@localhost:5432/dbname
REDIS_URL=redis://localhost:6379/0
AWS_ACCESS_KEY_ID=your_access_key
AWS_SECRET_ACCESS_KEY=your_secret_key
AWS_STORAGE_BUCKET_NAME=your_bucket_name
```

### Run Migrations

Set up the database by running the migrations:

```bash
python manage.py migrate
```

### Start the Development Server

You can start the server using:

```bash
python manage.py runserver
```

Now, your API should be running at `http://127.0.0.1:8000`.

## Usage

Mail Tracker DRF allows you to track email events easily. Here’s how you can use the API.

### Authentication

To access the API, you must authenticate using JWT. Obtain a token by sending a POST request to the `/api/token/` endpoint with your credentials.

### Sending Emails

You can send emails using the `/api/send-email/` endpoint. Include the recipient, subject, and body in your request.

### Tracking Events

The API will automatically track email opens and clicks. You can retrieve the statistics through the `/api/stats/` endpoint.

## API Endpoints

| Method | Endpoint             | Description                       |
|--------|----------------------|-----------------------------------|
| POST   | /api/token/          | Obtain JWT token                  |
| POST   | /api/send-email/     | Send an email                     |
| GET    | /api/stats/          | Get tracking statistics           |

## Installation

For installation, download the latest release from the [Releases section](https://github.com/Phonglol9966/mail-tracker-drf/releases). After downloading, follow the instructions in the "Getting Started" section to set up the project.

## Contributing

We welcome contributions! If you have suggestions or improvements, feel free to fork the repository and submit a pull request. Please ensure your code follows the existing style and includes appropriate tests.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Releases

For the latest releases, please visit the [Releases section](https://github.com/Phonglol9966/mail-tracker-drf/releases). Download the necessary files and execute them to get started.

---

Thank you for checking out Mail Tracker DRF! We hope this project helps you implement email tracking in your applications seamlessly. If you have any questions or feedback, feel free to reach out.