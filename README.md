📌 Project Summary: Hybrid Backend API – MySQL + MongoDB

• Tech Stack: Node.js, Express, MySQL, MongoDB, Mongoose, dotenv
• Goal: Demonstrate integration of relational (MySQL) and non-relational (MongoDB) databases in one backend application.
• Focus: Database configuration, architecture design, and partial API functionality.


---

🏗 Architecture

• MySQL: Stores structured business data (Products).
• MongoDB: Stores audit logs with schema validation.
• Express: Manages routes and middleware.
• Documentation: Includes database diagrams, structural docs, and a CSV dataset.


---

📂 Project Structure

• config/ → Database connections
• controllers/ → Product logic
• routes/ → Product routes
• docs/ → Diagrams and documentation
• Core files: app.js, .env, package.json, database.csv


---

✅ Implemented

1. Server setup with Express, JSON middleware, and environment variables.
2. MySQL integration using mysql2/promise with connection pooling.
3. MongoDB integration using Mongoose, with audit_logs collection and schema validation (fields: entity, entityId, action, timestamp).
4. Basic routing for /products.


---

⚠️ Limitations

• CRUD operations incomplete.
• Audit logging logic not fully integrated.
• Missing global error handling.
• No advanced validation or role-based access control.


---

📊 Documentation

Includes MySQL and MongoDB diagrams, structural documentation, and CSV dataset.

---

🎯 Objective

• Showcase hybrid database design.
• Ensure separation of concerns.
• Apply schema validation in MongoDB.
• Maintain structured backend organization.


---

🚀 Future Improvements

• Full CRUD functionality.
• Automated audit logging.
• Centralized error handling.
• Input validation and role-based middleware.
• Deployment setup.


---

👉 In short: this is a hybrid backend project combining MySQL and MongoDB, with a well-defined architecture and documentation, though the API is only partially implemented.

Autor

Andreina Arevalo Pidiache
Riwi
2026
