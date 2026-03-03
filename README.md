# MegaStore Global – Database Modernization Project

## Overview

This project migrates a legacy flat Excel system into a scalable architecture using:

- PostgreSQL (Relational Data)
- MongoDB (Audit Logs)
- Node.js + Express (REST API)

---

## Justification

### Why SQL?

Transactional and structured data such as:
- Customers
- Orders
- Products
- Suppliers

Requires:
- Strong consistency
- Referential integrity
- ACID compliance

The schema was normalized up to Third Normal Form (3NF) to eliminate redundancy and ensure data integrity.

### Why MongoDB?

Used for audit logging because:

- Flexible schema
- High write performance
- Logs are event-based
- Embedding oldData simplifies retrieval

---

## Installation

### 1. Clone repository

```bash
git clone https://github.com/NinaArevalo/Prueba-de-desempe-o-DB.git

Create .env file:

PORT=3000
POSTGRES_URL=your_postgres_connection
MONGO_URL=your_mongo_connection
4. Run project
npm start
Mass Migration

Execute:

node scripts/importCSV.js

This script:

Reads CSV

Detects duplicates

Prevents entity duplication

Maintains idempotency

Available Endpoints
Products

GET /products

GET /products/:id

POST /products

PUT /products/:id

DELETE /products/:id (Logs in MongoDB)

Business Queries

Implemented using:

JOIN + GROUP BY in PostgreSQL

Aggregation Framework in MongoDB (for logs if needed)

Extra Features

Unique constraints

Schema validation in MongoDB

Error handling

Environment variables