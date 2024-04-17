--SQL INTERMEDIATE QUESTIONS

SELECT a.id, ua.first_name, a.last_name, c.id, c.customer_name, COUNT(*)
FROM contact contacts
INNER JOIN customer c ON c.id=contacts.customer_id
INNER JOIN user_account a ON a.id=con.user_account_id
GROUP BY a.id, a.first_name, a.last_name, c.id, c.customer_name
HAVING COUNT(*)>1
ORDER BY a.id
