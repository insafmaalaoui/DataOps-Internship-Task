#  DataOps Internship Task Submission

This repository contains my complete submission for the DataOps internship preselection challenge. It includes both data transformation and graph modeling parts.

---

##  Part 1 – ETL Pipeline: OLTP to OLAP

###  What does the pipeline do?
- Loads and cleans raw student subscription data (OLTP)
- Transforms it into an OLAP-friendly format using Pandas
- Calculates key analytical fields: subscription progress, diploma status, churn, cohort grouping
- Outputs multiple CSVs for dashboarding and analysis

###  Visual Insights Produced
-  Subscription trend analysis by month
-  Churn rate by country and track
-  Cohort analysis by subscription start month, country, and module
-  Ready for Jypyter with matplotlyb and seaborn

###  Files
- `etl_task.ipynb` – Notebook containing full ETL pipeline
- `/data/` – Source and transformed CSV files
- `/docs/` – Plots and screenshots 

---

##  Part 2 – Graph Data Modeling with Neo4j

###  Graph Schema Design using A Markdown/text schema design
- Nodes:
  - `(:Student)` – student_id, name, email
  - `(:Session)` – session_id, date, instructor, module
- Relationships:
  - `(:Student)-[:ATTENDED]->(:Session)`

📄 See [`graph_schema.md`](graphs/graph_schema.md)

---

###  Cypher Query Challenge
Rewritten versions of Cypher queries that answer:
1. List sessions attended by “Alice”
2. Top 3 students by number of sessions attended
3. Count students per session
4. Unique students per module
5. Students who never attended any session

📄 See [`cypher_queries.cypher`](graphs/cypher_queries.cypher)

---

##  Bonus – SQL Translation

- A relational model equivalent to the graph schema
- PostgreSQL-compatible SQL versions of all 5 Cypher queries

📄 See [`sql_queries.sql`](graphs/sql_queries.sql)

---

##  Assumptions, Challenges & Design Decisions

- Churn was defined as: progress < 90% or subscription start date == subscription end date or hasdiploma = false
- Some sessions or modules may have no attendees (handled via `LEFT JOIN`)
- Kept the graph schema minimal and focused for clarity
- OLAP transformation emphasizes clean structure for Looker or Power BI

---



