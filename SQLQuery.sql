select * from Bookings


Create View Bookings_Successful As 
select * from Bookings
where Booking_Status = 'Success';

select * from Bookings_Successful


Create view avg_distance As
select Vehicle_Type,avg(Ride_Distance) as avg_distance
from Bookings
group by Vehicle_Type

select* from avg_distance


Create View Canceled_by_Customer As
Select Count (*) from Bookings
where Booking_Status ='Canceled by Customer';

select * from Canceled_by_Customer


Create View top5_Customer As
SELECT top 5 Booking_ID,COUNT(Booking_ID) as total_rides
from bookings
group by Booking_ID
order by total_rides desc;

select * from top5_Customer



Create View Canceled_Rides_by_Driver As
Select Canceled_Rides_by_Driver, count(Canceled_Rides_by_Driver) as number_of_Canceled_rides
from Bookings
where Canceled_Rides_by_Driver = 'Personal & Car related issue'
group by Canceled_Rides_by_Driver

select * from Canceled_Rides_by_Driver



Create View max_min_as_Driver_ratings As
Select MAX (Driver_Ratings) as Max_rating,
MIN(Driver_Ratings) as Min_rating
from bookings where Vehicle_Type = 'Prime Sedan';

select * from max_min_as_Driver_ratings


Create View Payment_using_UPI As
select * from Bookings
where Payment_Method = 'UPI'

select * from  Payment_using_UPI


Create view customer_rating_per_vehicle_type As
Select Vehicle_Type,avg(customer_rating) AS Avg_Customer_Rating
from Bookings
group by Vehicle_Type


select* from customer_rating_per_vehicle_type



Create view total_successfully_value As
select sum(Booking_value) as total_successfully_value
from bookings
where Booking_Status = 'success';

select * from total_successfully_value




create view Incomplete_Rides_Reason as 
select Booking_ID ,Incomplete_Rides_Reason
from Bookings
where Incomplete_Rides = 1;

select * from Incomplete_Rides_Reason














