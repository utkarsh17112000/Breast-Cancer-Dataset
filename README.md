# 📌 Project Overview

This project analyzes the Breast Cancer Diagnostic Dataset using Excel, SQL, and Tableau.
The goal is to identify patterns that distinguish malignant and benign tumors using statistical analysis, real-world analytics techniques, and visualization best practices.

The dataset includes tumor measurement features such as:

-radius_mean

-area_mean

-perimeter_mean

-concavity_mean

-texture_mean

-worst-case measurements

-diagnosis (Malignant / Benign)

Dataset Used: Breast_cancer_dataset.csv (attached in repo)

## 🟦 1. Excel Analysis

This section contains all Excel-based exploratory, statistical, and analytical questions used to derive insights from the dataset.

### 🔍 Basic Excel Questions

-How many total records are in the dataset?

-Count of Malignant vs Benign patients

-Average radius_mean for each diagnosis

-Which feature has the highest correlation with diagnosis?

-Which patient has the highest mean area?

### 📊 Intermediate Excel Questions

-Average texture_mean per diagnosis

-Top 10 patients by largest perimeter_mean

-Min, Max, and Average of smoothness_mean

-Features most correlated with radius_mean

-Pivot Table summary:

-Rows → Diagnosis

-Columns → Avg radius_mean, area_mean, smoothness_mean

### 💡 Advanced Excel Questions

-Relationship between radius_mean and area_mean

-Variables differing the most between Malignant and Benign

-Can diagnosis be predicted using top correlated variables?

-Average radius_mean per quartile of area_mean

-Select the 3 most important predictive features and justify them

-Excel files, pivot tables & charts included in /excel/ folder (if you add them).

## 🟧 2. SQL Analysis (50 SQL Interview-Level Questions)

SQL analysis was performed using MySQL, covering descriptive stats, correlations, segmentation, risk analysis, and predictive modeling.

### 🧩 1️⃣ Basic SQL Exploration

-Total patient records

-Malignant vs Benign count

-Percentage distribution

-Min, Max, Avg of radius_mean, area_mean, perimeter_mean

-NULL value check

-Duplicate ID check

-Avg area_mean by diagnosis

-Median radius_mean

### 🧮 2️⃣ Group Comparisons

-Compare mean size variables

-Highest standard deviation

-Are "worst" features > mean features?

-Avg radius & area by diagnosis

-Malignant/Benign ratio by quartiles

-Which diagnosis has higher texture_mean & concavity_mean?

-Avg radius_mean per quartile of area_mean

### 📈 3️⃣ Distribution Analysis

-Distribution of area_mean by buckets

-% malignant in top 25% radius_mean

-Avg area_mean for above-avg radius_mean

-Tumors with radius_mean > 20

-Quartile with highest malignancy rate

### 🔗 4️⃣ Relationship & Correlation

-Correlation: radius_mean ↔ area_mean

-Correlation: perimeter_mean ↔ area_mean

-Above-average radius_mean → malignancy likelihood

-Concavity_mean comparison

-Correlation among worst features



### ⚙️ 6️⃣ Advanced SQL

-Rank features by difference in means

-Top 3 area_worst patients

-Patients in top 5% radius_mean & area_mean

-Create radius_mean bins & compute malignancy rate

-Check data consistency: radius_worst < radius_mean

-Diagnosis correlation with mean features

-Compare all worst features

-Feature with largest mean–worst difference



## 🟩 3. Tableau Dashboards

Tableau was used to build interactive dashboards for clinical-grade visualization and risk analysis.

### ⭐ 1. Diagnostic Summary Dashboard

Includes:

KPI cards: Total Patients, % Malignant

Average radius_mean & area_mean (M vs B)

Malignant vs Benign bar chart

Boxplots for radius, area, perimeter

Scatterplot: radius_mean vs area_mean

- Insights:

Malignant tumors significantly larger

Clear cluster separation

Strong diagnostic thresholds

### ⭐ 2. Tumor Size & Shape Explorer

Visuals:

Scatterplot matrix

Bubble chart:

X = radius_mean

Y = area_worst

Size = perimeter_mean

Color = diagnosis

Parallel coordinates plot

Purpose:

Compare multiple features

Detect shape-driven risks

Identify outliers

### ⭐ 3. Risk Stratification Dashboard

Visuals:

Histogram (area_mean by diagnosis)

Quartile bar chart (% malignant per quartile)

Risk Score Gauge:

(radius_mean + area_mean + perimeter_mean) / 3


Rule-Based Classifier Zone:

radius_mean > X → High risk  
area_mean > Y → High risk  


Insights:

Quartile 4 = high cancer risk

Simple rule-based model performs well

Effective for medical storytelling

Tableau Workbook (.twb/.twbx) in /tableau/ folder.

## 📚 Skills Demonstrated

Exploratory Data Analysis (EDA)

Excel Pivot Tables, Statistical Formulas, Correlation

SQL Analytics: CTEs, Window Functions, Aggregations

Predictive reasoning using SQL

Tableau Dashboards for BI and storytelling

Medical data interpretation (tumor size/shape analysis)
