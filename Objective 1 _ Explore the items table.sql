-- Objective 1: Explore the items table
-- 1.1 View the menu_items table and write a query to find the number of items on the menu
SELECT * FROM menu_items;
SELECT COUNT(*) FROM menu_items;

-- 1.2 What are the least and most expensive items on the menu?
SELECT * FROM menu_items
	ORDER BY price;

SELECT * FROM menu_items
	ORDER BY price DESC;

-- 1.3 How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?
SELECT COUNT(*) AS quantity
FROM menu_items
    WHERE category='Italian';
    
SELECT * FROM menu_items
	WHERE category='Italian'
		ORDER BY price;
        
-- 1.4 How many dishes are in each category? What is the average dish price within each category?
SELECT
	category,
    COUNT(menu_item_id) AS quantity,
    AVG(price) AS the_avg_price
FROM menu_items
    GROUP BY category;