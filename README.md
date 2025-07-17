# IT Service Desk Performance Dashboard

### [View the Live, Interactive Dashboard on Tableau Public](https://public.tableau.com/app/profile/daniele.vaccarella/viz/VaccarellaTechDashboardServiceDesk/Dashboard1)

---

### Project Overview

This project is an end-to-end business intelligence solution designed to analyze the operational performance of a simulated IT service desk for a fictional company, "Vaccarella Tech Solutions." The goal was to build a comprehensive dashboard that provides actionable insights for management, helping them understand team workload, customer satisfaction, and overall efficiency.

The entire data pipeline was developed from the ground up, starting with the creation of normalized data tables, followed by data preparation and joining using SQL, and culminating in the development of a dynamic, interactive dashboard in Tableau.

---

### Tools & Technologies Used

*   **Database:** SQLite (Used DB Browser for SQLite for management)
*   **Data Analysis & Transformation:** SQL
*   **Data Visualization & Dashboarding:** Tableau Public

---

### Project Features

#### Data Engineering:
*   **Relational Database:** Designed and built a relational database from scratch, consisting of 5 normalized tables (Tickets, Technicians, Services, Customers, Users).
*   **Data Preparation with SQL:** Authored a single, comprehensive SQL query to perform `LEFT JOIN` operations across all 5 tables. This created a clean, unified master dataset ready for analysis, ensuring no data was lost in the process.

#### Business Intelligence Dashboard:
*   **Dynamic KPIs:** The dashboard leads with key performance indicators, including Total Open Tickets, High-Priority Open Tickets, and Tickets Closed in the Last 7 Days.
*   **Technician Performance Analysis:** A central chart visualizes the current open workload for each technician, broken down by ticket priority, allowing for quick identification of workload balance.
*   **Interactive Filtering:** The dashboard is fully interactive. Clicking on a technician, service type, or using the global filters allows a manager to dynamically drill down into the data to answer specific questions.
*   **Satisfaction & Trend Analysis:** A dual-axis chart tracks customer satisfaction scores against ticket volume over time, helping to identify potential correlations and long-term trends.

---

### Repository Structure

*   **/data:** Contains all source `.csv` files used to populate the database, as well as the final `master_data.csv` exported from the SQL query.
*   **/sql:** Contains the master `.sql` file with the final, commented query used for data preparation.
*   **IT_Service_Desk.db:** The central SQLite database file containing all the raw, relational data.
