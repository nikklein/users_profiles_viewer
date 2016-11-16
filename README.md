# USER PROFILES VIEWER APP

This app is an implementation of an active model and associated controller to match the
users profiles viewer feature. The model scales to millions of records and still respond within an acceptable
time frame. It includes the users name, their geo location and their profile picture.

## EXPLAIN ANALYZE

EXPLAIN ANALYZE SELECT * FROM user_profiles WHERE longitude > 20 AND latitude > 0 ;
                                                QUERY PLAN
----------------------------------------------------------------------------------------------------------
 Seq Scan on user_profiles  (cost=0.00..72.20 rows=1 width=203) (actual time=0.333..0.333 rows=0 loops=1)
   Filter: ((longitude > '20'::double precision) AND (latitude > '0'::double precision))
   Rows Removed by Filter: 2147
 Planning time: 0.273 ms
 Execution time: 0.386 ms
