from pathlib import Path

from dagster import AssetExecutionContext, Definitions
from dagster_dbt import (
    DbtCliResource,
    DbtProject,
    build_schedule_from_dbt_selection,
    dbt_assets,
)

# Construct the absolute path to your dbt project directory
PROJECT_DIR = Path(__file__).parent.resolve()

my_project = DbtProject(
    project_dir=PROJECT_DIR,
)


@dbt_assets(manifest=my_project.manifest_path)
def my_dbt_assets(context: AssetExecutionContext, dbt: DbtCliResource):
    yield from dbt.cli(["build"], context=context).stream()


my_schedule = build_schedule_from_dbt_selection(
    [my_dbt_assets],
    job_name="materialize_dbt_models",
    cron_schedule="0 0 * * *",
    dbt_select="fqn:*",
)

defs = Definitions(
    assets=[my_dbt_assets],
    schedules=[my_schedule],
    resources={
        "dbt": DbtCliResource(project_dir=my_project),
    },
)