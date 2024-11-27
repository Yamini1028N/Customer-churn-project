select Gender,count(Gender) as total_count,
count(gender) /(select count(*) from Customer_churn )as percentage
from Customer_churn
group by Gender

select Contract,count(Contract)  as Totalcontract ,
count(Contract)*100.0/(select count(*) from Customer_churn ) as Percentage
from Customer_churn
group by Contract

select  Customer_Status, count(Customer_Status) as TotalCount_status, sum(total_revenue) as TotalRevenue,
sum(total_revenue)/(select sum(total_revenue)from customer_churn) *100 as Revenuepercent
from Customer_churn
group by Customer_Status

select  top 5 state ,count(state) as totalCount_state,
count(State)*100.0/(select count(*) from Customer_churn) as percentage_state
from Customer_churn
group by State
order by percentage_state desc
-
select distinct Internet_Type from Customer_churn