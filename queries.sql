--  E-Commerce Data Analysis SQL Project

--  SECTION 1: BASIC ANALYSIS


-- Total Orders 
SELECT COUNT(*) AS total_orders 
FROM orders;
 
-- Total Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers 
FROM customers;

-- Order Status Distribution
SELECT 
  order_status,
  COUNT(*) AS total_orders
FROM orders
GROUP BY order_status;

-- Order Status Percentage
SELECT 
  order_status,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orders), 2) AS percentage
FROM orders
GROUP BY order_status;



--  SECTION 2: REVENUE ANALYSIS


-- Total Revenue
SELECT 
  SUM(payment_value) AS total_revenue
FROM payment;

-- Category-wise Revenue
SELECT 
  p.product_category_name,
  SUM(oi.price + oi.freight_value) AS revenue
FROM order_items oi
JOIN product p 
  ON p.product_id = oi.product_id
GROUP BY p.product_category_name
ORDER BY revenue DESC;

-- Top Payment Methods
SELECT 
  p.payment_type,
  COUNT(*) AS total_orders,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM orders o
JOIN payment p 
  ON o.order_id = p.order_id
GROUP BY p.payment_type
ORDER BY total_orders DESC;


--  SECTION 3: CUSTOMER ANALYSIS


-- Orders per Customer
SELECT 
  c.customer_unique_id,
  COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o 
  ON c.customer_id = o.customer_id
GROUP BY c.customer_unique_id;

-- Repeat Customers
SELECT 
  c.customer_unique_id,
  COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o 
  ON c.customer_id = o.customer_id
GROUP BY c.customer_unique_id
HAVING COUNT(o.order_id) > 1;

-- One-time Customers
SELECT *
FROM (
    SELECT 
        c.customer_unique_id,
        COUNT(o.order_id) AS total_orders
    FROM customers c
    LEFT JOIN orders o 
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
) t
WHERE total_orders = 1;

-- Inactive Customers  (last 6 months)

SELECT 
    COUNT(*) AS inactive_customers,
    ROUND(
        COUNT(*) * 100.0 / 
        (SELECT COUNT(DISTINCT customer_unique_id) FROM customers),
    2) AS inactive_percentage
FROM (
    SELECT c.customer_unique_id
    FROM customers c
    LEFT JOIN orders o 
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
    HAVING MAX(o.order_purchase_timestamp) < 
           (SELECT MAX(order_purchase_timestamp) FROM orders) - INTERVAL 6 MONTH
       OR MAX(o.order_purchase_timestamp) IS NULL
) AS t;


--  SECTION 4: PRODUCT ANALYSIS


-- Top Selling Categories
SELECT 
  p.product_category_name,
  COUNT(*) AS total_orders
FROM order_items oi
JOIN product p 
  ON p.product_id = oi.product_id
GROUP BY p.product_category_name
ORDER BY total_orders DESC;

-- Most Ordered Category
SELECT 
  p.product_category_name,
  COUNT(*) AS total_orders
FROM order_items oi
JOIN product p 
  ON p.product_id = oi.product_id
GROUP BY p.product_category_name
ORDER BY total_orders DESC
LIMIT 1;



--  SECTION 5: DELIVERY ANALYSIS


-- Average Delivery Time
SELECT 
  ROUND(AVG(DATEDIFF(order_estimated_delivery_date, order_purchase_timestamp))) 
  AS avg_delivery_days
FROM orders;


--  SECTION 6: ADVANCED ANALYSIS 

-- Customer Segmentation (RFM)
SELECT 
  segment,
  COUNT(*) AS total_customers,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM (
  SELECT *,
    CASE 
      WHEN recency <= 30 AND frequency >= 5 THEN 'Best Customers'
      WHEN recency <= 30 THEN 'Recent Customers'
      WHEN recency > 90 THEN 'Lost Customers'
      ELSE 'Regular Customers'
    END AS segment
  FROM (
    SELECT 
      c.customer_unique_id,
      DATEDIFF(
        (SELECT MAX(order_purchase_timestamp) FROM orders),
        MAX(o.order_purchase_timestamp)
      ) AS recency,
      COUNT(o.order_id) AS frequency,
      SUM(p.payment_value) AS monetary
    FROM customers c
    LEFT JOIN orders o 
      ON c.customer_id = o.customer_id
    LEFT JOIN payment p 
      ON p.order_id = o.order_id
    GROUP BY c.customer_unique_id
  ) t
) x
GROUP BY segment;


-- Ranking Customers by Spend
SELECT 
  c.customer_unique_id,
  SUM(p.payment_value) AS total_spent,
  RANK() OVER (ORDER BY SUM(p.payment_value) DESC) AS rank
FROM customers c
JOIN orders o 
  ON c.customer_id = o.customer_id
JOIN payment p 
  ON p.order_id = o.order_id
GROUP BY c.customer_unique_id;



--  SECTION 7: ORDER FUNNEL


SELECT 
  COUNT(*) AS total_orders,
  SUM(CASE WHEN order_status = 'approved' THEN 1 ELSE 0 END) AS approved,
  SUM(CASE WHEN order_status = 'shipped' THEN 1 ELSE 0 END) AS shipped,
  SUM(CASE WHEN order_status = 'delivered' THEN 1 ELSE 0 END) AS delivered,
  SUM(CASE WHEN order_status = 'canceled' THEN 1 ELSE 0 END) AS canceled
FROM orders;
