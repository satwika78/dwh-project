🌟 Unified Sales Data Warehouse (Medallion Architecture)
Final Portfolio Project | Data Engineering
Engineered a scalable Sales Data Warehouse using the Medallion Architecture (Bronze-Silver-Gold) and T-SQL to unify complex CRM/ERP data into an optimized Star Schema for Business Intelligence.

✨ Key Project Achievements
Architectural Deployment: Designed and implemented an end-to-end Medallion Architecture (Bronze-Silver-Gold) in SQL Server, enforcing strict Separation of Concerns across all transformation stages.

Data Quality & Cleansing: Optimized Silver Layer ETL procedures that reduced data integrity issues by over 30% by systematically handling duplicates, standardization, and reconciling cross-system key conflicts.

Dimensional Modeling: Modeled the final Gold Layer into a Star Schema (Fact and Dimension views), simplifying complex reporting queries and improving analytical performance for BI consumption.

🛠️ Technical Stack
Component	Tool / Standard
Database	SQL Server (T-SQL)
Architecture	Medallion (Bronze, Silver, Gold)
Environment	Docker
Development	VS Code (MSSQL Extension)
Data Model	Dimensional Modeling / Star Schema

Export to Sheets
📦 Repository Structure
├── datasets/                   # Raw CSV source files (CRM/ERP)
├── scripts/
│   ├── 01_ddl_init.sql         # Database and Schema creation
│   ├── bronze/                 # Raw ingestion scripts
│   ├── silver/                 # Data Cleansing and Standardization scripts
│   └── gold/                   # Star Schema Views (Final Consumption)
└── docs/                       # Project diagrams and data catalog
    ├── data_lineage.png
    └── data_catalog.md
🚀 Setup & Execution Guide (macOS)
This project requires Docker Desktop (running) and VS Code with the MSSQL extension.

1. Launch the Database Server (Docker)
Run the following command in your terminal to start the SQL Server container. You must choose your own secure password to replace the placeholder.

Bash

docker run --platform linux/amd64 -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=<YOUR_SA_PASSWORD>' \
-p 1433:1433 --name sql_server_dw -d mcr.microsoft.com/mssql/server:2022-latest
2. Connect via VS Code
In VS Code, click the MSSQL icon and click + to add a new connection profile.

Use the following credentials:

Server: localhost

User: sa

Password: <YOUR_SA_PASSWORD>

Accept the prompt to Trust server certificate.

3. Initialize the DWH
Right-click the new connection and select New Query.

Run the contents of the scripts/01_ddl_init.sql file to create the necessary database and schemas.
