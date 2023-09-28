--Part 1
Select * From Owners o
    FULL OUTER JOIN vehicles v 
        on o.id=v.owner_id

--Part 2
Select first_name, last_name,
    COUNT(owner_id) FROM owners o
    JOIN vehicles v on o.id=v.owner_id
    GROUP BY (first_name, last_name)
ORDER BY first_name

--Part 3
Select
    first_name, last_name,
    ROUND(AVG(price)) as average_price,
    COUNT(owner_id)
FROM owners o
JOIN vehicles v on o.id=v.owner_id
GROUP BY (first_name, last_name)
HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 1000
ORDER BY first_name DESC;