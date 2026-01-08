# 📊 Digital Marketing Audit & Performance Insights

## 🎯 What is this project about?
Coming from a **Digital Finance Operations** background at one of the biggest media company, I’ve seen firsthand how messy marketing data can get. This project is my way of showing how we can take raw, unorganized campaign data and turn it into clear, strategic decisions using SQL. 

I didn't just write code; I built a workflow to audit spend efficiency and find out where the money is actually being made.

## 🛠️ The "Behind the Scenes" (Technical Workflow)
Marketing data is rarely ready for analysis right out of the box. Here’s how I handled it:
* **Cleaning the Mess:** I used SQL `CAST` functions to fix data types—turning text into numbers so we can actually do some math.
* **No-Error Logic:** I implemented `NULLIF` to make sure my formulas didn't break if a campaign had zero orders (a common headache in media reporting).
* **Smart Mapping:** I mapped the raw system columns (`c1` to `c11`) into business terms like **Spend, Revenue, and Orders** to make the data readable for stakeholders.

## 💡 What did the data tell me? (Business Insights)
After running the analysis, a few things stood out that would immediately change how I’d manage this budget:

* **The Clear Winner:** The `youtube_blogger` campaign is a goldmine. It delivered the highest volume (**1,914 orders**) and has the best "bang for buck" with a CAC of only **2,120.13**.
* **Scalability:** `facebook_retargeting` is also very efficient (CAC: **2,467.28**). If I were managing this budget today, I’d look into increasing spend here.
* **The Red Flag:** We need to talk about `facebook_lal`. With a CAC of **8,986.19**, it’s costing us 4x more to get a customer there than on YouTube. This is where the budget is being wasted.

## 📂 What's inside?
* `/SQL_Scripts`: My step-by-step logic for cleaning and analyzing the data.
* `Marketing.csv`: The raw campaign dataset.
  

---
* 📊 Interactive Dashboard: View My Full Analysis on Tableau Public https://public.tableau.com/views/Media_Marketing_Analysis/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

**Let's connect!**
If you’re interested in media auditing or data-driven marketing, feel free to reach out via www.linkedin.com/in/busrasenoglu
