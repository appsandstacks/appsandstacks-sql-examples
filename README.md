# Apps & Stacks SQL Examples

This repository contains **SQL database schemas**, **seed data**, and **DBML diagrams** featured on [Apps & Stacks Blog](https://appsandstacks.com).

Our goal is to help developers **learn SQL through practical, project-based examples** — from designing schemas to writing real-world queries.

---

## Contents

| Folder           | Description                                                 |
|------------------|-------------------------------------------------------------|
| `/task-manager/` | MySQL schema and sample data for a Task Manager app         |
| `/event-ticket/` | MySQL schema and sample data for a Event Ticket app |

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

### Quick Setup
```bash
# Create the database
mysql -u root -p < task_manager_schema.sql

# Seed sample data
mysql -u root -p task_manager_db < task_manager_seed.sql
```

---

## Event Ticket Management Database Example

The **Event Ticket App** example demonstrates:

- Users, Organizers, and Venues relationships
- Event creation and categorization
- Ticket types, purchases, and payments
- Attendees and event reviews
- 
### Files:
| File                      | Description |
|---------------------------|--------------|
| `event_ticket_schema.sql` | MySQL DDL script to create the schema |
| `event_ticket_seed.sql`   | Sample data inserts for testing |

### Quick Setup
```bash
# Create the database
mysql -u root -p < event_ticket_schema.sql

# Seed sample data
mysql -u root -p event_ticket_management_db < event_ticket_seed.sql
```
---