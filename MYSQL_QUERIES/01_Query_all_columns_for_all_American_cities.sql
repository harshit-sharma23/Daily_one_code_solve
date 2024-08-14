--            Hacker Rant 01
-- Query all columns for all American cities in the CITY table with 
-- - populations larger than 100000. 
-- - The CountryCode for America is USA.
-- The CITY table is described as follows:

--     CITY
-- Field : Туре
-- ID : NUMBER
-- NAME: VARCHAR2(17)
-- COUNTRYCODE : VARCHAR2(3)
-- DISTRICT : VARCHAR2 (20)
-- POPULATION : NUMBER

--      DATA 
-- 3878 Scottsdale USA Arizona 202705 
-- 3965 Corona USA California 124966 
-- 3973 Concord USA California 121780 
-- 3977 Cedar Rapids USA Iowa 120758 
-- 3982 Coral Springs USA Florida 117549 

select
    ID,
    NAME,
    COUNTRYCODE,
    DISTRICT,
    POPULATION
from
    CITY
where
    POPULATION > 100000
    AND COUNTRYCODE = 'USA';