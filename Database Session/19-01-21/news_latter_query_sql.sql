
/*
1.Get all the users who created in the last 15 days.
*/
select u.first_name,u.last_name
from user u
join address a
ON u.id=a.user_id
where a.created_at>NOW()- interval 15 day;

 /*
   only using three table
   2.Get all the users with their addresses who are active subscribers.
   */ 

select u.first_name,a.line1,a.line2,a.city
from 
user u
join
	address a
    ON u.id=a.user_id
    join subscriber s
    ON a.user_id=s.user_id
    where s.active=1;
    
   /*
   only using two table
   2.Get all the users with their addresses who are active subscribers.
   */ 
    select s.first_name,a.line1,a.line2,a.city
from 
subscriber s
join
	address a
    ON s.id=a.user_id
    where s.active=1;
/*
3.Get all the users who subscribed in the last 30 days and are active currently.
*/
select u.first_name,u.last_name
from user u
join subscriber s
ON u.id=s.user_id
where s.created_at>NOW()- interval 30 day AND s.active=1;



    
/*
4.Get all the users email who are currently in the active mailing list.
*/
 select s.email
 from 
 subscriber s
 join 
 mailing_list ml
 ON s.id=ml.subscriber_id
 where ml.active=1;
  
  
  
  
  
 /*
 5.Get all the users email and newsletter title for which newsletter triggered today.
 */   
 
 /*
 select u.email,nl.title
 from user u
 join 
 news_letter nl
 ON 
 u.id= nl.user_id
 join
 news_letter_trigger nlt
 ON nlt.news_letter_id=u.id
 where nlt.sent_at=now();
 
*/

SELECT 
    u.email, nl.title
FROM
    user u
        JOIN
    news_letter nl ON (u.id = nl.user_id)
WHERE
    nl.published_at>CURRENT_DATE();