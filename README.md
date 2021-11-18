# Bonial Job Interview
## SQL Tasks - Data Analyst
1. Create a View
    + The `sector_id` column in the `publisher` table has a wrong data format
    + Create a view called `v_publisher` that will have the same columns as the publisher table, but the format of `sector_id` column will change from `141091236.0 -> 141091236`
    + Use this view for the next tasks

2. CTR (Click Through Rate):
    + Compute the CTR on Sector level

3. Content Data:
    + a) For the month of May 2021, how many brochures (use unique title) started (`pfrom`) per Sector
    + b) For the month of December 2020, which sector had the most active brochures (`pfrom` till `puntil`)
