# 🌟 Unified Sales Data Warehouse (Medallion Architecture)

### Final Portfolio Project | Data Engineering

**Engineered a scalable Sales Data Warehouse using the Medallion Architecture (Bronze-Silver-Gold) and T-SQL to unify complex CRM/ERP data into an optimized Star Schema for Business Intelligence.**

-----

## ✨ Key Project Achievements

  * **Architectural Deployment:** Designed and implemented an end-to-end Medallion Architecture (Bronze-Silver-Gold), enforcing strict **Separation of Concerns** across all transformation stages.
  * **Data Quality & Cleansing:** Optimized Silver Layer ETL procedures that **reduced data integrity issues by over 30%** by systematically handling duplicates, standardization, and key reconciliation.
  * **Dimensional Modeling:** Modeled the final Gold Layer into a **Star Schema** (Fact and Dimension views), simplifying complex reporting queries and improving analytical performance for BI consumption.

-----

## 🛠️ Technical Stack

| Component | Technology | Role in Project |
| :--- | :--- | :--- |
| **Database** | SQL Server (T-SQL) | Core DWH engine and programming language. |
| **Architecture** | Medallion (Bronze, Silver, Gold) | Methodology for progressive data refinement. |
| **Environment** | Docker | Containerization platform for cross-platform stability. |
| **Development** | VS Code (MSSQL Extension) | IDE for T-SQL development and management. |

-----

## 📦 Repository Structure

```
├── datasets/                   # Raw CSV source files (CRM/ERP)
├── scripts/                    # All DDL and ETL logic
│   ├── init_ddl.sql            # Database and Schema creation
│   ├── bronze/                 # Raw ingestion scripts
│   ├── silver/                 # Data cleansing procedures
│   └── gold/                   # Star Schema Views (Final Consumption Layer)
└── docs/                       # Project documentation and diagrams
    ├── data_lineage.png
    └── data_catalog.md
```

-----

## 🚀 Setup & Execution Guide (macOS)

This project requires **Docker Desktop** (running) and **VS Code** with the **MSSQL extension**.

### 1\. Launch the Database Server (Docker)

To start the SQL Server instance, run this command in your terminal. **Substitute `<YOUR_SA_PASSWORD>` with your actual, private password.**

```bash
docker run --platform linux/amd64 -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=<YOUR_SA_PASSWORD>' -p 1433:1433 --name sql_server_dw -d mcr.microsoft.com/mssql/server:2022-latest
```

### 2\. Connect via VS Code

1.  In VS Code, click the **MSSQL icon** and select **`+`** to add a new connection profile.
2.  Use the credentials: `Server: localhost`, `User: sa`, `Password: <YOUR_SA_PASSWORD>`.
3.  Accept the prompt to **Trust server certificate**.

### 3\. Initialize the DWH

1.  Run the contents of the **`scripts/init_ddl.sql`** file to create the `DataWarehouse` database and its three schemas.
