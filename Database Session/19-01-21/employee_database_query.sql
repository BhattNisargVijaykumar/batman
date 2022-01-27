 
 /*
 Employess Database
 */
 
 /*
 1.Get the users which are having permission id assigned as 2.
 */

SELECT 
    u.*
FROM
    user u
        JOIN
    role r
        JOIN
    role_permission rp ON (u.role_id = r.id)
WHERE
    (rp.role_id = r.id AND permission_id = 2); 
    
    
/*
2.Get a list of users who are working in organization id 1 along with organization title..
*/

select u.*,o.title
from user u
join 
organization o
ON u.id=o.id
where o.id=1;


/*
3.Get all the employee emails who are created in the last two dates and have permission id 1.
*/

select u.email
from user u
join employee em
ON u.id=em.user_id
join role r
ON r.id=em.role_id
join role_permission rp
ON r.id=rp.role_id
where
em.created_at>now()-interval 2 day  AND  rp.permission_id=1;


/*
4.Get the active count of employees working in organization id 1.
wrong OUTPUT
*/

select COUNT(r.active)
from role r 
join
employee em 
ON 
r.id=em.role_id
join organization o
ON em.organization_id=o.id
where o.id=1;

/*
5.Get all the employee emails who were working last year.
*/

SELECT u.email
FROM user u
JOIN
employee em 
ON u.id = em.user_id
WHERE
    YEAR(em.starts_at) = YEAR(CURRENT_DATE()) - 1;