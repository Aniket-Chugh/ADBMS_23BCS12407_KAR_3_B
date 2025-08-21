/* Write your T-SQL query statement below */

select U.name  , sum(T.amount) as balance  from Transactions T 
Left join   
        Users U  on
        U.account = T.account    
Group by 
        U.name
Having 
        sum(T.amount) > 10000