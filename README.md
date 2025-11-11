# Apps & Stacks SQL Examples

This repository contains **SQL database schemas**, **seed data**, and **queries** featured on [Apps & Stacks Blog](https://appsandstacks.com).

Our goal is to help developers **learn SQL through practical, project-based examples** — from designing schemas to writing real-world queries.

---

## Contents

| Folder | Description |
|---------|--------------|
| `/task-manager/` | MySQL schema and sample data for a Task Manager app |

---

## Task Manager Database Example

The **Task Manager App** example demonstrates:
- Users, Projects, and Tasks relationships
- Comments and Attachments
- Labels and many-to-many mappings

### Files:
| File | Description |
|------|--------------|
| `task_manager_schema.sql` | MySQL DDL script to create the schema |
| `task_manager_seed.sql` | Sample data inserts for testing |

### ER Diagram
 Visualize in DrawSQL → https://drawsql.app/appsandstacks/diagrams/task-manager

### Quick Setup
```bash
# Create the database
mysql -u root -p < task_manager_schema.sql

# Seed sample data
mysql -u root -p task_manager_db < task_manager_seed.sql
