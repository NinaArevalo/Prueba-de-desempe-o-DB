## 📌 Project Overview

This project implements a hybrid backend architecture using:

- **Node.js** and **Express**
- **MySQL** for relational business data
- **MongoDB** for audit logging
- **Mongoose** for MongoDB schema validation

The purpose of this project is to demonstrate the integration of relational and non-relational databases within the same backend application.

Due to time constraints, the implementation focuses on database configuration, architecture structure, and partial API functionality.

---

## 🏗 Architecture

This project follows a hybrid database approach:

- **MySQL** → Stores structured business data (Products)
- **MongoDB** → Stores audit logs with schema validation
- **Express** → Handles API routing and middleware
- **dotenv** → Manages environment variables

Additionally, documentation files are included:
- Database diagrams
- MySQL structure documentation
- MongoDB structure documentation
- CSV file containing the dataset

---

## 📂 Project Structure

project/

│

├── config/

│   ├── mongo.js

│   └── mySQL.js

│

├── controllers/

│   └── product.controller.js

│

├── routes/

│   └── product.routes.js

│

├── docs/

│   ├── mysql-diagram

│   ├── mongo-diagram

│   └── documentation files

│

├── database.csv

├── .env

├── app.js

└── package.json

---

## ✅ What Was Implemented

### 1️⃣ Server Configuration
- Express server setup
- JSON middleware
- Environment variable configuration
- Modular structure

### 2️⃣ MySQL Integration
- MySQL connection using `mysql2/promise`
- Configured connection pool
- Database structure provided via documentation and CSV file

### 3️⃣ MongoDB Integration
- MongoDB connection using Mongoose
- `audit_logs` collection created
- JSON Schema validation implemented at database level

Required fields for audit logs:
- `entity`
- `entityId`
- `action`
- `timestamp`

### 4️⃣ Basic Routing
- `/products` route configured
- Controller structure prepared for product handling

---

## ⚠️ Partial Implementation

Due to time limitations, the following elements were not fully completed:

- Full CRUD operations for products
- Complete audit logging logic integration inside controllers
- Global error handling middleware
- Advanced validation or role-based access control

However, the database architecture, connections, and validation logic are properly configured and documented.

---

## 📊 Documentation Included

The project includes:

- 📄 MySQL database diagram
- 📄 MongoDB schema diagram
- 📄 Structural documentation
- 📄 CSV file with relational dataset

These documents describe the intended data relationships and structure, even where full API logic was not finalized.

---

## 🔧 Environment Variables

Example `.env` configuration:

PORT=3000


MYSQL_host = localHost
MySQL_USER= root
MYSQL_PASSWORD=1234
MYSQL_DATABASE= logitech

---

## 🎯 Project Objective

The main objective of this project is to demonstrate:

- Hybrid database architecture design
- Separation of concerns
- Structured backend organization
- MongoDB schema validation
- Integration of relational and NoSQL databases

---

## 🚀 Future Improvements

If extended, the project would include:

- Full CRUD operations
- Automated audit logging on CREATE/UPDATE/DELETE
- Centralized error handling
- Input validation
- Role-based middleware
- Deployment configuration

---
## How to into to the proyect

This could be dowload from moodle looking for my profile and there will find the zip to download. 
The other way is searching NinaArevalo profile, or click in the following link https://github.com/NinaArevalo/Prueba-de-desempe-o-DB.git.

## 📌 Final Notes

Although the API is partially implemented, the architectural design, database configuration, and validation structure are fully defined and documented.

This project reflects the implementation of a hybrid backend model combining relational and NoSQL databases within a single application environment.

