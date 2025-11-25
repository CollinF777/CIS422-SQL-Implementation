# CIS422-SQL-Implementation
Keeping track of all SQL commands for the CIS 422 Database Management Systems final project.

## Project Overview
This repository contains all SQL scripts used in the CIS 422 course final project. It includes database creation scripts, table definitions, triggers, views, data insertion, example queries, and clean-up scripts. These files are organized to allow easy setup, usage, and teardown of the project database.

---

## Repository Structure

- **create-db.sql** — creates or selects the database  
- **create-tables.sql** — defines tables and schema  
- **create-triggers.sql** — defines triggers  
- **create-views.sql** — defines views  
- **insert-data.sql** — inserts sample/seed data  
- **queries.sql** — contains example queries  
- **drop-tables.sql**, **drop-triggers.sql**, **drop-views.sql** — cleanup scripts  

---

## Getting Started

### Prerequisites / Environment
- SQL server (MySQL, PostgreSQL, or equivalent)
- SQL client or command-line interface capable of running `.sql` scripts
- User permissions to create databases and tables

### Installation & Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/CollinF777/CIS422-SQL-Implementation.git
   cd CIS422-SQL-Implementation
   ```
2. Run the setup scripts in this order:

- ```create-db.sql```

- ```create-tables.sql```

- ```create-triggers.sql```

- ```create-views.sql```

- ```insert-data.sql```

3. (Optional) Run additional queries from:

- ```queries.sql```

4. Cleanup when finished:

- ```drop-views.sql```

- ```drop-triggers.sql```

- ```drop-tables.sql```

### Usage Instructions

- Use queries.sql to test your schema and explore relationships.

- Add more SQL files if you need stored procedures, functions, or additional features.

- Commit changes frequently to track database evolution.

## SQL Modules & Files – Quick Reference

| File                | Purpose                                |
|---------------------|------------------------------------------|
| create-db.sql       | Creates/selects the project database     |
| create-tables.sql   | Defines all tables                       |
| create-triggers.sql | Creates triggers for business logic      |
| create-views.sql    | Defines views                            |
| insert-data.sql     | Inserts sample data                      |
| queries.sql         | Contains test queries                    |
| drop-views.sql      | Removes views                            |
| drop-triggers.sql   | Removes triggers                         |
| drop-tables.sql     | Removes all tables                       |

---

## Contact

**Authors:** Collin Fair, Liam Callahan, James Homan, Nathan Amidon  
**GitHub:** https://github.com/CollinF777  
**Course:** CIS 422 – Database Management Systems

