# app-templates

Community-contributed templates for Databricks demo apps.

## Shiny Employee Directory Chatbot

The `shiny-chatbot-app` template now includes:

- `employees_table.sql` – reusable Databricks SQL script that creates and seeds an `employees` table for an employee-directory Q&A experience.
- `employee_directory_chatbot.ipynb` – Databricks notebook that wires a chat model (via Model Serving) to Databricks SQL so that natural-language questions are translated into safe SQL over the directory.

**How to use the notebook**

1. Import the notebook into your Databricks workspace.
2. Configure the widgets for catalog/schema/table plus the target Model Serving endpoint name.
3. (Optional) Run the setup cell to create the table if you have not already executed the SQL script.
4. Execute the helper cells and use `ask_employee_bot()` to answer HR questions such as "Who works in Data Analytics?".

Refer to `shiny-chatbot-app/app.py` if you want to present the same experience in a Shiny for Python UI hooked up to the same serving endpoint.
