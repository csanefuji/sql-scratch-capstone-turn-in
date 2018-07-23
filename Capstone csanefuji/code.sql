SELECT *
 FROM survey
 LIMIT 10;
 SElECT question, COUNT (response)
 FROM survey
 GROUP BY question;
 SELECT *
 FROM quiz
 LIMIT 5;
 SELECT *
 FROM home_try_on
 LIMIT 5;
 SELECT *
 FROM purchase
 LIMIT 5;
 
 SELECT DISTINCT quiz.user_id, CASE
 WHEN home_try_on.user_id IS NOT NULL THEN 'TRUE'
 ELSE 'FALSE'
 END AS 'is_home_try_on', home_try_on.number_of_pairs, 
 CASE 
 WHEN purchase.user_id IS NOT NULL 
 THEN 'TRUE'
 ELSE 'FALSE'
 END AS 'is_purchase'
 FROM quiz
 LEFT JOIN home_try_on
 ON quiz.user_id = home_try_on.user_id
 LEFT JOIN purchase
 ON purchase.user_id= quiz.user_id
 LIMIT 10;
 