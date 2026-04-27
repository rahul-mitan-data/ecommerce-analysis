  # E-Commerce Data Analysis Project
  
  ## Project Overview
  
  This project focus on analyzing an e-commerce dataset using SQL,Power Bi,Excel to extract meaningful business insights.
  The goal is to understand customer behavior, sales performance, and operational efficiency.
  
  ## Objectives
 * Identify top-selling product categories
 * Analyze customer purchase behavior
 * Calculate total revenue and growth trends
 * Find repeat customers
 * To analyze delivery performance 

  
  ##  Dataset Information
  * source : kaggle 
  The dataset contains the following tables:
  
  * **customers** : customer details
  * **orders** : order information & status
  * **order_items** : product-level order data
  * **payment** : payment transactions
  * **product** : product & category details
 
  ##  Tools & Technlogy Used
  
  * SQL (MySQL)
  * Power bi
  * GitHub
  * Ms-Excel 
    
  ##  Business Problems Solved
  
  ### 1. Overall Performance Analysis
  
  * Total number of orders
  * Total customers
  * Order status distribution
  * Delivery performance
  * Average order value
  
  ### 2. Revenue Analysis
  
  * Category-wise revenue
  * Month-wise revenue trend
  * Top revenue-generating categories
  * Payment method contribution
  
  ### 3. Customer Analysis
  
  * Repeat customers
  * Customer segmentation using RFM (Recency, Frequency, Monetary)
  * active customers 
  
  ### 4. Product Analysis
  
  * Top selling categories
  * Revenue contribution by category
  
  ### 5. Advanced SQL Analysis 
  
  * Customer segmentation using CASE statements
  * Percentage contribution using window functions
  * Order funnel analysis (approved → shipped → delivered)

### 6. Delivery Analysis
  
  * Average Estimated delivery time
  * Avg approval time
  
  ---
  
  ##  Project Files
  
  * queries.sql : All SQL queries used in analysis
  * data folder : CSV Files of  e-commerce dataset
    

##  Dashboard Overview
 Power BI Dashboard file is available in the repository (dashboard.pbix)

### Page 1
![Dashboard Page 1](images/dashboard page-1.png)

### Page 2
![Dashboard Page 2](images/dashboard page-2.png)
  
  ---
   ##  Key Insights
  
  *  A small group of repeat customers contributes a large portion of total revenue
  *  Certain payment methods dominate order volume
  *  Delivered orders are high, but cancellations still impact business
  *  Average estimated delivery time indicates potential logistics improvement
  *  Some product categories generate significantly higher revenue
  No repeat customers found → indicates low customer retention
📊 A few categories contribute to the majority of revenue
💳 Credit card is the most preferred payment method
📦 Most orders are successfully delivered, but a small percentage are canceled

Around 90% customers fall into the Lost segment
This is influenced by the dataset timeline (2016–2018), where older customers naturally appear inactive
However, it still highlights a low repeat purchase behavior in the dataset
recommendation
Focus on improving repeat purchase behavior
Convert recent and new customers into loyal customers
Implement retention strategies like loyalty programs and offers

A significant number of customers (67,580) are inactive for more than 6 months
This indicates a high customer churn rate
A large portion of users are not returning after initial purchase
💡 Business Recommendation (IMPRESS 🔥)

👉 Add this:

Re-engagement campaigns should be implemented (email/SMS offers)
Discounts and personalized offers can help bring back inactive customers
Focus on improving customer retention strategies


Revenue Trend Insight
Revenue shows a consistent upward trend throughout the year
Peak revenue observed in November–December
Indicates seasonal demand (festive effect)

👉 Meaning:

Business grows steadily + peak season important hai
2️⃣ Top Categories Insight
Categories like bed_bath_table, health_beauty, sports_leisure generate highest revenue
These categories contribute major share of total sales

👉 Meaning:

Revenue heavily dependent on few categories
3️⃣ Customer Behavior Insight
Repeat Customer Rate = 2.85% (very low)
Majority customers are one-time buyers

👉 Meaning:

Customer retention weak hai
Business new customers par dependent hai
4️⃣ Order Status Insight
82.9% orders completed successfully
Small percentage orders are failed or in-progress

👉 Meaning:

Operations mostly smooth hain but improvement possible hai
5️⃣ Payment Behavior Insight
Credit card dominates (~82%)
Other payment methods ka usage very low hai

👉 Meaning:

Customers prefer fast & easy payment methods
6️⃣ Delivery Performance Insight
Avg Delivery Time ≈ 25 days
On-time delivery high hai

👉 Meaning:

Delivery reliable hai but speed improve ho sakti hai
🚀 Business Recommendations
1️⃣ Customer Retention Improve karo
Loyalty programs introduce karo
Discount / coupon repeat customers ke liye

👉 Impact:

Repeat purchase increase hoga
Revenue stable hoga
2️⃣ Top Categories par focus badhao
High demand categories me:
Ads increase karo
Inventory strong rakho

👉 Impact:

Revenue fast grow karega
3️⃣ Low performing categories optimize karo
Identify slow categories
Discount / bundling strategy use karo

👉 Impact:

Dead inventory reduce hoga
4️⃣ Delivery time reduce karo
Logistics optimize karo
Faster shipping introduce karo

👉 Impact:

Customer satisfaction ↑
Repeat customers ↑
5️⃣ Payment options improve karo
Wallets / UPI promote karo
Cashback offers introduce karo

👉 Impact:

Conversion rate increase hoga
6️⃣ Peak season strategy banao
November–December me:
Heavy marketing
Stock ready

👉 Impact:

Maximum profit capture hoga
  ---
  
  ##  Business Recommendations
  
  *  Focus on **repeat customers** with loyalty programs to increase retention
  *  Improve **delivery time** to enhance customer satisfaction
  *  Promote **high-performing payment methods** for smoother transactions
  *  Reduce cancellations by improving order confirmation & logistics
  *  Invest more in **top-performing categories** to maximize revenue
  ---
  ##  Conclusion
  
  This project demonstrates how raw data can be transformed into actionable business insights using SQL, Power Bi.
  It highlights the importance of data-driven decision-making in e-commerce.
  
  ---
  
  ##  Author
  
  **Rahul Mitan**
  Aspiring Data Analyst
