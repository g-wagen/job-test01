# Bonial Job Interview
## SQL Tasks - Data Analyst
1. Create a View
    + The `sector_id` column in the `publisher` table has a wrong data format
    + Create a view called `v_publisher` that will have the same columns as the publisher table, but the format of `sector_id` column will change from `141091236.0 -> 141091236`
    + Use this view for the next tasks
    + :point_right: [01-sql_view.sql](./Scripts/01-sql_view.sql) :point_left:
2. CTR (Click Through Rate)
    + Compute the CTR on Sector level
    + :point_right: [02-click-through-rate.sql](./Scripts/02-click-through-rate.sql) :point_left:
3. Content Data
    + a) For the month of May 2021, how many brochures (use unique title) started (`pfrom`) per Sector
        + :point_right: [03a-brochures-sector-may2021.sql](./Scripts/03a-brochures-sector-may2021.sql) :point_left:
    + b) For the month of December 2020, which sector had the most active brochures (`pfrom` till `puntil`)
        + :point_right: [03b-brochures-activity-dec2020.sql](./Scripts/03b-brochures-activity-dec2020.sql) :point_left:

