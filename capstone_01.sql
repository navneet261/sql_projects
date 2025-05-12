-- Plateform used: mode.com
-- Table used: tutorial.flights
-- Date: 12th May'25


-- Q1: List all flights with a departure delay greater than 30 minutes.
   select *                        -- Multiple column selection
   from tutorial.flights
   where departure_delay>30;       -- Departure delay more than 30 mins

 -- Q2: Count the number of flights per destination city. Sort the result by highest flight count first. 
   select destination_city, count(*) as flight_count
   from tutorial.flights 
   group by destination_city
   order by flight_count desc;  -- Highest flight count 

-- Q3: Find flights that arrived early (arrival delay < 0).
   select *               -- Multiple column selection
   from tutorial.flights
   where arrival_delay<0;   -- Arrival delay <0

-- Q4: Calculate the average flight distance.
   select avg(distance) as avg_distance  
   from tutorial.flights;

-- Q5: List the top 5 origin airports by flight count.
  select  origin_airport, count(*) as flight_count 
  from tutorial.flights
  group by origin_airport 
  order by flight_count desc
  limit 5 ;               -- Top 5 origin airport

-- Q6: Find flights with air traffic control delays.
   select *
   from tutorial.flights
   where air_traffic_delay>0;  -- Flights with air control delays

-- Q7: Calculate the total actual flight time for all flights.
   select sum (actual_flight_time) as total_flight_time
   from tutorial.flights;

-- Q8: List flights with a distance less than 500 miles.
   select *
   from tutorial.flights
   where distance<500;   -- Distance <500 miles

-- Q9: Find the flight with the longest actual flight time.
   select *              -- Using subquery
   from tutorial.flights
   where actual_flight_time = (select max(actual_flight_time) from tutorial.flights);

-- Q10: Count flights by destination state.
   select destination_state, count(*) as flights_count
   from tutorial.flights
   group by destination_state;
