-- Objective 3: Analyze customer behavior
-- 3.1 Combine the menu_items and order_details tables into a single table
SELECT * FROM order_details od
	LEFT JOIN menu_items mi
		ON od.item_id = mi.menu_item_id;
    
-- 3.2 What were the least and most ordered items? What categories were they in?
SELECT
    item_name,
    category,
    COUNT(order_details_id) AS ordered_quantity
FROM order_details od
	LEFT JOIN menu_items mi
		ON od.item_id = mi.menu_item_id
	GROUP BY item_id
    ORDER BY ordered_quantity DESC;
        
-- 3.3 What were the top 5 orders that spent the most money?
SELECT
	order_id,
    SUM(price) AS total_spend
FROM order_details od
	LEFT JOIN menu_items mi
		ON od.item_id = mi.menu_item_id
	GROUP BY order_id
    ORDER BY total_spend DESC
    LIMIT 5;

-- 3.4 View the details of the highest spend order. Which specific items were purchased?
SELECT * FROM order_details od
	LEFT JOIN menu_items mi
		ON od.item_id = mi.menu_item_id
	WHERE order_id = 440;
    
-- 3.5 BONUS: View the details of the top 5 highest spend orders
SELECT * FROM order_details
	LEFT JOIN menu_items
		ON order_details.item_id = menu_items.menu_item_id
	WHERE order_id IN(440,2075,1957,330,2675);