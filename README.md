Google Merchandise Store: Google Analytics Sample Data
----
Team Members: Fatema Soliman, Drucila LeFevre, Luana Caldeira, Mario Valadex, Xavier Granda

----
Tableau Visualization: 
---
https://public.tableau.com/profile/fatema.soliman#!/vizhome/shared/3MY5RJ2SP

Why E-commerce?
---
  E-commerce has made business more viable and profitable, and as a result, several new e-commerce businesses are starting every day.  Among the advantages of e-commerce are lower costs (including marketing cost), possibility of retargeting customers, and the ability to easily promote and ship products worldwide.
  
  On average, an e-commerce website has a conversion rate of 2% - 3%. Our team seeks to increase conversion rate by improving marketing strategies, using analysis and machine learning tools, for the Google Merchandise Store - a website that sells Google branded merchandise and ships worldwide.

Objective
---
- To understand the most important variables that drive sales in order to improve the
business. 

DataSet Description: 
----
- The dataset contains Google Analytics 360 data from the Google E-Commerce Merchandise Store from August 2016 to July 2017.

- Traffic Source: where visitors originate (i.e. organic traffic, paid search traffic).
- Content Data: information about the users’ behavior (i.e. pages visited, time on site).
- Transactional Data: information about the transactions that occur on the website (i.e.revenues, products purchased).

Products
---
- Nearly 90 different products were sold between Aug. 2016 and Jul. 2017. 

Revenue
---
- Total revenue for the analyzed period was $1.7 million.
- As a result of strong sales at the begging of the month, the highest daily average sales occurred in April.
- We would expect the summer months to be slower because potential customers could be out on vacation, but July, August, and December also seem to be strong months in terms of sales.

Marketing Funnel
----

- The Marketing Funnel describes a potential customer’s journey on the website.
- Lead Generation -> Browsing -> Intention to Buy -> Purchasing Stage

Drop Off Rates
---
Home Page: 714,167 ->  100%
Add to Cart: 5.58% -> 39,817
Checkout: 2.56% -> 18,280
Purchase: 1.40% -> 10,022

Modeling
---
Random Forest

Model 1: Marketing/Traffic Souce Focus
--
Time on Page and visit number : most featured

Model 2: Product Focus
---
Product Price and Hour : most featured

Market Basket Analysis:
---
- Association rules are used to find the relationship between items that are usually bought together.

- Items frequently bought together with Apriori Algorithm

Demand Forcasting 
---

- By doing a demand decomposition (removing weekday cyclical trend) we can see there is a positive trend going from $5900 to $6,000.
- Weekdays is basically when sales happen. Strangely, sales during the weekend are really low.

Conclusion 
---
1. First priority, increase traffic.
2. Suggest new item to be bought based on the items frequently bought together (basket analysis).
3. Retargeting: try to complete sales.
4. Partnerships with top referral webpages

Next Steps: 
---
▪ Build a marketing strategy based on a probability of purchase given by
the models to target people more likely to spend on the website
▪ Get information from marketing to understand how they are running
their campaigns and make recommendations
▪ Get costs from marketing to calculate the Return On Ad Spend



