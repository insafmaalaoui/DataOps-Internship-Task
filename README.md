# DataOps Internship Task

## Part 1: ETL Pipeline – OLTP to OLAP

### What the pipeline does
- Loads and cleans transactional subscription data
- Transforms it to OLAP-friendly format (date parsing, progress, churn, etc.)
- Outputs CSVs for dashboarding

### Visual Insights
- Subscription trend per month
- Churn rate per country and track
- Cohort analysis by start month and module

---

## Part 2: Graph Modeling with Neo4j

### Graph Schema
Nodes:
- Student
- Session

Relationships:
- ATTENDED

See [graph_schema.md](graph_schema.md)

---

## Cypher Queries
- Q1: List sessions attended by Alice
- Q2: Top 3 most active students
- Q3: Student count per session
- Q4: Unique students per module
- Q5: Students who never attended

[See `cypher_queries.cypher`](cypher_queries.cypher)

---

##  SQL Model and Queries
- Equivalent relational schema
- Translated queries for PostgreSQL

[See `sql_queries.sql`](sql_queries.sql)

---

##  Assumptions & Challenges
- Some students attended no sessions
- Churn defined by progress < 90%
- Graph schema kept minimal for clarity
