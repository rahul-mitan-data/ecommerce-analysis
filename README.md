  # E-Commerce Data Analysis Project
  
  ## Project Overview
  
  This project focus on analyzing an e-commerce dataset using SQL,Power Bi,Excel to extract meaningful business insights.
  The goal is to understand customer behavior, sales performance, and operational efficiency.
  The analysis covers ₹16.01M revenue, 99K+ orders and 96K+ customers and converts raw transactional data into business-focused insights and recommendations.
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
 Dataset period: September 2016 to August 2018, with partial coverage in 2016 and 2018.
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
  * RFM Revenue by Segment
  
  ### 3. Customer Analysis
  
  * Repeat customers
  * Customer segmentation using RFM (Recency, Frequency, Monetary)
  * Customer type (one time , Repeat Customer) wise revenue %
  
  ### 4. Product Analysis
  
  * Top selling categories
  * Revenue contribution by category
  
  ### 5. Advanced SQL Analysis 
  
  * Customer segmentation using CASE statements
  * Percentage contribution using window functions
  * Order funnel analysis (approved → shipped → delivered)

### 6. Delivery Analysis
  
  * Average delivery time
  * Avg approval time
  * Avg Review Score gap analysis
  
  ---
  
  ##  Project Files
  
  * queries.sql : All SQL queries used in analysis
  * data folder : CSV Files of  e-commerce dataset
    

##  Dashboard Overview
 Power BI Dashboard file is available in the repository (dashboard.pbix)

### Page 1
![Dashboard Page-1](images/dashboard page-1.png)

### Page 2
![Dashboard Page-2](images/dashboard page-2.png)
  
  ---
   ##  Key Insights
  *  Credit card is the most preferred payment method
  * RFM-based segmentation classified **90.04% of customers as Lost** based on a 90+ day recency threshold.
  *  A significant number of customers (67,580) are inactive for more than 6 months. This indicates a high customer churn
     rate. A large portion of users are not returning after initial purchase
  *  Repeat customers represented only **3.12% of the customer base**.They contributed **5.90% of total revenue**.
  *  **One-time customers contributed 94.10% of revenue**. This highlights the importance of understanding customer retention and repeat-purchase behavior.
  *  Delayed deliveries had a lower average review score than on-time deliveries. The dashboard identified a **1.73-point gap** between the average review scores of the two delivery-status groups.
  *  Top 5 product categories contributed 40.79% of total revenue.



  ---
  
  ##  Business Recommendations

*  Focus on improving **customer retention** by introducing loyalty programs, rewards, and special offers for repeat customers  
    Impact: Increases repeat purchase rate and long-term revenue stability  

*  Convert **new and recent customers** into loyal customers through personalized offers  
    Impact: Improves customer lifetime value (CLV)  

*  Implement **re-engagement campaigns** (email/SMS, discounts, personalized recommendations) to bring back inactive customers  
    Impact: Recovers lost customers and boosts overall sales  

*  Optimize and reduce **delivery time** by improving logistics and shipping processes  
    Impact: Enhances customer satisfaction and increases repeat purchases  

*  Promote alternative payment methods (wallets/UPI equivalents) with cashback and offers to reduce dependency on credit cards  
    Impact: Diversifies payment risk and improves user flexibility  

*  Reduce **order cancellations** by improving order confirmation, communication, and logistics coordination  
    Impact: Increases successful order completion rate  

*  Invest more in **top-performing product categories** through marketing and inventory planning  
    Impact: Maximizes revenue and business growth  


  ---
  ##  Conclusion
  
  This project demonstrates how raw data can be transformed into actionable business insights using SQL, Power Bi.
  It highlights the importance of data-driven decision-making in e-commerce.
  
  ---
  
  ##  Author
  
  **Rahul Mitan**
  Aspiring Data Analyst
