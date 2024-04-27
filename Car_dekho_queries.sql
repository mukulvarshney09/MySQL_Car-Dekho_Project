create database cars;
use cars;
-- 1. READ DATA
select * from car_dekho;

-- 2. Total Cars: To get count of total records
select count(*) from car_dekho;

-- 3. How many cars will be available in 2023?
select count(*) from car_dekho where year = 2023;

-- 4. How many cars are available in 2020,2021,2022?
select count(*) from car_dekho where year in (2020,2021,2022) group by year order by year asc;

-- 5. Show the count of cars by years.
select year, count(*) from car_dekho group by year order by year asc;

-- 6. How many diesel cars will there be in 2020?
select count(*) from car_dekho where fuel = "Diesel" and year = 2020;

-- 7. How many petrol cars will there be in 2020?
select count(*) from car_dekho where fuel = "Petrol" and year = 2020;

-- 8. Print all the fuel cars(petrol, diesel, CNG) come by all year
select year, fuel, count(*) from car_dekho where fuel in ("Petrol", "Diesel", "CNG")
group by year,fuel order by year asc;

-- 9. In which year, there were more than 100 cars?
select year, count(*) from car_dekho group by year having count(*)>100;

-- 10. All cars count details between 2015 and 2023.
select count(*) from car_dekho where year between 2015 and 2023;

-- 11. All cars details between 2015 and 2023.
select * from car_dekho where year between 2015 and 2023;

-- END



