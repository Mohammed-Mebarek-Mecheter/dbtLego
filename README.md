# Exploring the History of Lego

## Overview

This repository is part of the [Exploring the History of Lego project](https://mebarek.pages.dev/exploring-the-history-of-lego), The aim of this repository is to make data transformation of my Snowflake lego database into a dbt models that can be used for analytical purposes.

In this repository, we have implemented data transformation using dbt (Data Build Tool). dbt is a powerful tool that allows us to transform and model our data in a modular and version-controlled manner. We have set up our dbt project locally on the JetBrains Dataspell IDE.

Additionally, we have integrated Dagster into our project to manage and schedule our dbt transformations. Dagster provides an orchestration layer that allows us to easily schedule, monitor, and manage our data workflows.

## Project Structure

The dbt project follows a specific directory structure to organize the different components of the data transformation process. Here's an overview of the project directory:

```
dbtLego/
├── dbt_project.yml
├── packages.yml
├── analyses/
├── macros/
├── seeds/
├── snapshots/
├── target/
├── tests/
├── models/
│   ├── staging/
│   ├── aggregations/
│   ├── transformation/
│   ├── errors/
│   ├── analysis/
│   └── schema.yml
├── README.md
├── profiles.yml
└── definitions.py

```

- `dbt_project.yml`: The main configuration file for the dbt project.
- `packages.yml`: Configuration file for dbt packages (external dependencies).
- `analyses/`: Directory for storing analysis files.
- `macros/`: Directory for custom macros (reusable SQL functions).
- `seeds/`: Directory for seed data files (e.g., static data, lookups).
- `snapshots/`: Directory for snapshot files (capturing data at a specific point in time).
- `target/`: Directory where the compiled SQL files and documentation are generated.
- `tests/`: Directory for storing data tests.
- `models/`: Directory containing the main dbt models organized into subdirectories.
  - `staging/`: Models for staging raw data.
  - `aggregations/`: Models for aggregating data.
  - `transformation/`: Models for transforming and enriching data.
  - `errors/`: Models for handling errors and data quality issues.
  - `analysis/`: Models for performing advanced analyses.
  - `schema.yml`: Configuration file for defining the model schema.
- `README.md`: The project's README file.
- `profiles.yml`: Configuration file for defining database connections and credentials.
- `definitions.py`: Dagster configuration file.

## Features

The dbt project provides several powerful features for data transformation and modeling:

- **Data Modeling**: Organize and structure the Lego dataset into meaningful models for analysis.
- **Data Transformation**: Implement complex transformations and calculations to derive insights from the data.
- **Documentation**: Automatically generate documentation for the data models, transformations, and tests.
- **Testing**: Ensure data integrity and accuracy with automated tests.
- **Version Control**: Manage changes to the data models and transformations using version control systems like Git.
- **Scalability**: Scale to handle large datasets and complex analyses.

## Integration with Dagster

Dagster is integrated into the project to schedule and manage the data workflows. This allows for the automation of data transformations, ensuring that the data is always up-to-date and ready for analysis.

### How it Works

1. **Setup:** Installed Dagster and configured it to work with the dbt project.
2. **Scheduling:** Set up a schedule to run the dbt models daily at midnight.
3. **Execution:** Dagster manages the execution of dbt models, allowing for easy monitoring and troubleshooting.


## Conclusion

This project showcases the effective use of dbt and Dagster for data transformation and workflow management, combined with Power BI for data visualization. It provides a comprehensive analysis of the Lego dataset, demonstrating the power of modern data tools in uncovering valuable insights.



