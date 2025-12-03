SELECT * FROM breast_cancer.breast_cancer_dataset;
/*
id 
diagnosis  
radius_mean  
texture_mean  
perimeter_mean  
area_mean  
smoothness_mean  
compactness_mean  
concavity_mean  
concave points_mean  
symmetry_mean  
fractal_dimension_mean  
radius_se  
texture_se  
perimeter_se
area_se double 
smoothness_se  
compactness_se  
concavity_se  
concave points_se  
symmetry_se  
fractal_dimension_se  
radius_worst  
texture_worst  
perimeter_worst  
area_worst  
smoothness_worst  
compactness_worst  
concavity_worst  
concave points_worst  
symmetry_worst  
fractal_dimension_worst
*/
# updating diagnosis to malignant and benign
Update breast_cancer.breast_cancer_dataset
set diagnosis="malignant"
where diagnosis="M";
Update breast_cancer.breast_cancer_dataset
set diagnosis="benign"
where diagnosis="B";


# check for null values
select 
sum(Case when radius_mean is null then 1 else 0 end) as missing_radius_mean,
sum(Case when texture_mean is null then 1 else 0 end) as missing_texture_mean,
sum(Case when perimeter_mean is null then 1 else 0 end) as missing_perimeter_mean,
sum(Case when area_mean is null then 1 else 0 end) as missing_area_mean,
sum(Case when smoothness_mean is null then 1 else 0 end) as missing_smoothness_mean,
sum(Case when compactness_mean is null then 1 else 0 end ) as missing_compactness_mean,
sum(Case when concavity_mean is null then 1 else 0 end) as missing_concavity_mean,
sum(Case when `concave points_mean` is null then 1 else 0 end) as missing_concave_points_mean,
sum(Case when symmetry_mean is null then 1 else 0 end) as missing_symmetry_mean,
sum(Case when fractal_dimension_mean is null then 1 else 0 end) as missing_fractal_dimension_mean,
sum(Case when radius_se is null then 1 else 0 end) as missing_radius_se,
sum(Case when texture_se is null then 1 else 0 end) as missing_texture_se,
sum(Case when perimeter_se is null then 1 else 0 end) as missing_perimeter_se,
sum(Case when area_se is null then 1 else 0  end) as missing_area_se,
sum(Case when smoothness_se is null then 1 else 0 end) as missing_smoothness_se,
sum(Case when compactness_se is null then 1 else 0 end) as missing_compactness_se,
sum(Case when concavity_se is null then 1 else 0 end) as missing_concavity_se,
sum(Case when `concave points_se` is null then 1 else 0 end) as missing_concave_points_se,
sum(Case when symmetry_se is null then 1 else 0 end) as missing_symmetry_se,
sum(Case when fractal_dimension_se is null then 1 else 0 end) as missing_fractal_dimension_se,
sum(Case when texture_worst is null then 1 else 0 end) as missing_texture_worst,
sum(Case when perimeter_worst is null then 1 else 0  end) as missing_perimeter_worst,
sum(Case when area_worst is null then 1 else 0 end) as missing_area_worst,
sum(Case when smoothness_worst is null then 1 else 0 end) as missing_smoothness_worst,
sum(Case when compactness_worst is null then 1 else 0 end) as missing_compactness_worst,
sum(Case when concavity_worst is null then 1 else 0 end) as missing_concavity_worst,
sum(Case when `concave points_worst` is null then 1 else 0 end) as missing_concave_points_worst,
sum(Case when symmetry_worst is null then 1 else 0 end) as missing_symmetry_worst,
sum(Case when fractal_dimension_worst is null then 1 else 0 end) as missing_fractal_dimension_worst
from breast_cancer.breast_cancer_dataset;


# Check for Duplicates
select id, count(*) 
from breast_cancer.breast_cancer_dataset
group by id
Having count(*) >1;



# validating the values
select 
sum(Case when radius_mean < 0 then 1 else 0 end) as missing_radius_mean,
sum(Case when texture_mean < 0 then 1 else 0 end) as missing_texture_mean,
sum(Case when perimeter_mean < 0 then 1 else 0 end) as missing_perimeter_mean,
sum(Case when area_mean < 0 then 1 else 0 end) as missing_area_mean,
sum(Case when smoothness_mean < 0 then 1 else 0 end) as missing_smoothness_mean,
sum(Case when compactness_mean < 0 then 1 else 0 end ) as missing_compactness_mean,
sum(Case when concavity_mean < 0 then 1 else 0 end) as missing_concavity_mean,
sum(Case when `concave points_mean` < 0 then 1 else 0 end) as missing_concave_points_mean,
sum(Case when symmetry_mean < 0 then 1 else 0 end) as missing_symmetry_mean,
sum(Case when fractal_dimension_mean < 0 then 1 else 0 end) as missing_fractal_dimension_mean,
sum(Case when radius_se < 0 then 1 else 0 end) as missing_radius_se,
sum(Case when texture_se < 0 then 1 else 0 end) as missing_texture_se,
sum(Case when perimeter_se < 0 then 1 else 0 end) as missing_perimeter_se,
sum(Case when area_se < 0 then 1 else 0  end) as missing_area_se,
sum(Case when smoothness_se < 0 then 1 else 0 end) as missing_smoothness_se,
sum(Case when compactness_se < 0 then 1 else 0 end) as missing_compactness_se,
sum(Case when concavity_se < 0 then 1 else 0 end) as missing_concavity_se,
sum(Case when `concave points_se` < 0 then 1 else 0 end) as missing_concave_points_se,
sum(Case when symmetry_se < 0 then 1 else 0 end) as missing_symmetry_se,
sum(Case when fractal_dimension_se < 0 then 1 else 0 end) as missing_fractal_dimension_se,
sum(Case when texture_worst < 0 then 1 else 0 end) as missing_texture_worst,
sum(Case when perimeter_worst < 0 then 1 else 0  end) as missing_perimeter_worst,
sum(Case when area_worst < 0 then 1 else 0 end) as missing_area_worst,
sum(Case when smoothness_worst < 0 then 1 else 0 end) as missing_smoothness_worst,
sum(Case when compactness_worst < 0 then 1 else 0 end) as missing_compactness_worst,
sum(Case when concavity_worst < 0 then 1 else 0 end) as missing_concavity_worst,
sum(Case when `concave points_worst` < 0 then 1 else 0 end) as missing_concave_points_worst,
sum(Case when symmetry_worst < 0 then 1 else 0 end) as missing_symmetry_worst,
sum(Case when fractal_dimension_worst < 0 then 1 else 0 end) as missing_fractal_dimension_worst
from breast_cancer.breast_cancer_dataset;


# creating range outlier
select Min(radius_mean),
max(radius_mean),
avg(radius_mean)
from breast_cancer.breast_cancer_dataset;

#Logical Consistency Check
select count(*) 
from breast_cancer.breast_cancer_dataset
where radius_worst<radius_mean;

# Diagnosis Distribution
select diagnosis, 
round(
count(*)*100.0/(select count(*) from breast_cancer.breast_cancer_dataset)
,2) as diagnosis_distribution
from breast_cancer.breast_cancer_dataset
group by diagnosis;


# Basic Statistics by Diagnosis
select diagnosis,
Avg(radius_mean),
Avg(texture_mean),
Avg(perimeter_mean),
Avg(area_mean),
Avg(smoothness_mean),
Avg(compactness_mean),
Avg(concavity_mean),
Avg(`concave points_mean`),
Avg(symmetry_mean),
Avg(fractal_dimension_mean)
from breast_cancer.breast_cancer_dataset
group by diagnosis;


# Quartile-Based Segmentation
select id, diagnosis,
NTILE(4) over (order by area_mean) as `Quartile Segmentation`
from breast_cancer.breast_cancer_dataset;

# What percentage of patients are diagnosed as Malignant vs Benign?
select diagnosis,
round(
count(*)*100.0/(select count(*) from breast_cancer.breast_cancer_dataset)
,2) as percentage_distribution
from breast_cancer.breast_cancer_dataset
group by diagnosis;


# What is the average, minimum, and maximum of radius_mean and area_mean?
select min(radius_mean),max(radius_mean),avg(radius_mean),
min(radius_mean),max(radius_mean),avg(radius_mean)
from breast_cancer.breast_cancer_dataset;


# Which variable shows the highest variation (spread)?
select
stddev(radius_mean),
stddev(texture_mean),
stddev(perimeter_mean),
stddev(area_mean),
stddev(smoothness_mean),
stddev(compactness_mean),
stddev(concavity_mean),
stddev(`concave points_mean`),
stddev(symmetry_mean),
stddev(fractal_dimension_mean)
from breast_cancer.breast_cancer_dataset;


# Which 5 patients have the largest mean area?
select id,diagnosis,area_mean
from breast_cancer.breast_cancer_dataset
order by area_mean desc
limit 5;

# Are “worst” features (e.g., radius_worst) significantly higher than their corresponding mean values
select 
Avg(radius_mean)-Avg(radius_worst),
Avg(texture_mean)-Avg(texture_worst),
Avg(perimeter_mean)-Avg(perimeter_worst),
Avg(area_mean)-Avg(area_worst),
Avg(smoothness_mean)-Avg(smoothness_worst),
Avg(compactness_mean)-Avg(compactness_worst),
Avg(concavity_mean)-Avg(concavity_worst),
Avg(`concave points_mean`)-Avg(`concave points_worst`),
Avg(symmetry_mean)-Avg(symmetry_worst),
Avg(fractal_dimension_mean) -Avg(fractal_dimension_worst)
from breast_cancer.breast_cancer_dataset;

# How do the mean values of size-related variables differ between M and B?
/*with cte1 as (
select diagnosis, radius_mean ,texture_mean,perimeter_mean,area_mean,smoothness_mean,compactness_mean,concavity_mean,`concave points_mean`,  
symmetry_mean,fractal_dimension_mean 
from breast_cancer.breast_cancer_dataset
where diagnosis ="malignant"
),
cte2 as (
select diagnosis, radius_mean ,texture_mean,perimeter_mean,area_mean,smoothness_mean,compactness_mean,concavity_mean,`concave points_mean`,  
symmetry_mean,fractal_dimension_mean 
from breast_cancer.breast_cancer_dataset
where diagnosis ="benign"
)
select 
round(Avg(cte1.radius_mean)-avg(cte2.radius_mean),4) as `radius_mean_diff (M-B)`,
round(Avg(cte1.texture_mean)-avg(cte2.texture_mean),4) as `texture_mean_diff (M-B)`,
round(Avg(cte1.perimeter_mean)-avg(cte2.perimeter_mean),4) as `perimeter_mean_diff (M-B)`,
round(Avg(cte1.area_mean)-avg(cte2.area_mean),4) as `area_mean_diff (M-B)`,
round(Avg(cte1.smoothness_mean)-avg(cte2.smoothness_mean),4) as `smoothness_mean_diff (M-B)`,
round(Avg(cte1.compactness_mean)-avg(cte2.compactness_mean),4) as `compactness_mean_diff (M-B)`,
round(Avg(cte1.concavity_mean)-avg(cte2.concavity_mean),4) as `concavity_mean_diff (M-B)`,
round(Avg(cte1.`concave points_mean`)-avg(cte2.`concave points_mean`),4) as `concave points_mean_diff (M-B)`,
round(Avg(cte1.symmetry_mean)-avg(cte2.symmetry_mean),4) as `symmetry_mean_diff (M-B)`,
round(Avg(cte1.fractal_dimension_mean)-avg(cte2.fractal_dimension_mean),4) as `fractal_dimension_mean_diff (M-B)`
from cte1,cte2;*/

SELECT 
ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN radius_mean END) -AVG(CASE WHEN diagnosis = 'benign' THEN radius_mean END), 4) AS radius_mean_diff ,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN perimeter_mean END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN perimeter_mean END), 4) AS perimeter_mean_diff,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN area_mean END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN area_mean END), 4) AS area_mean_diff,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN smoothness_mean END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN smoothness_mean END), 4) AS smoothness_mean_diff,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN compactness_mean END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN compactness_mean END), 4) AS compactness_mean_diff,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN concavity_mean END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN concavity_mean END), 4) AS concavity_mean_diff,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN `concave points_mean` END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN `concave points_mean` END), 4) AS concave_points_diff,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN symmetry_mean END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN symmetry_mean END), 4) AS symmetry_mean_diff,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN fractal_dimension_mean END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN fractal_dimension_mean END), 4) AS fractal_dimension_diff
FROM breast_cancer.breast_cancer_dataset;


# What is the average mean radius per quartile of mean area?
with cte as(select id ,diagnosis,radius_mean,area_mean,ntile(4) over (order by area_mean asc) as quartile
from breast_cancer.breast_cancer_dataset)
select quartile,diagnosis,round(avg(radius_mean),4) as avg_radius_mean ,
round(avg(area_mean),4) as avg_area_mean,count(*) as number_of_patients
from cte 
group by quartile,diagnosis;

# Which feature contributes most to separating malignant vs benign groups?
SELECT 
ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN radius_mean END) -AVG(CASE WHEN diagnosis = 'benign' THEN radius_mean END), 4) AS radius_mean_diff ,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN perimeter_mean END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN perimeter_mean END), 4) AS perimeter_mean_diff,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN area_mean END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN area_mean END), 4) AS area_mean_diff,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN smoothness_mean END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN smoothness_mean END), 4) AS smoothness_mean_diff,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN compactness_mean END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN compactness_mean END), 4) AS compactness_mean_diff,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN concavity_mean END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN concavity_mean END), 4) AS concavity_mean_diff,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN `concave points_mean` END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN `concave points_mean` END), 4) AS concave_points_diff,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN symmetry_mean END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN symmetry_mean END), 4) AS symmetry_mean_diff,
  
  ROUND(AVG(CASE WHEN diagnosis = 'malignant' THEN fractal_dimension_mean END) -
        AVG(CASE WHEN diagnosis = 'benign' THEN fractal_dimension_mean END), 4) AS fractal_dimension_diff
FROM breast_cancer.breast_cancer_dataset;
/*  inital differentiating factors are area_mean, radius_mean and perimeter_mean */



#What is the correlation (or relationship) between radius_mean and area_mean?
select round(
sum((radius_mean-(select avg(radius_mean) from breast_cancer.breast_cancer_dataset))*(area_mean-(select avg(area_mean) from breast_cancer.breast_cancer_dataset)))/
(sqrt(sum(pow(radius_mean-(select avg(radius_mean) from breast_cancer.breast_cancer_dataset),2)))*sqrt(sum(pow(area_mean-(select avg(area_mean) from breast_cancer.breast_cancer_dataset),2))))
,4) 
as `correlation between radius_mean and area_mean`
from breast_cancer.breast_cancer_dataset;


# Are patients with above-average radius_mean more likely to have malignant diagnosis?
with cte as(
select id, diagnosis,radius_mean,
case when radius_mean>(select avg(radius_mean) from breast_cancer.breast_cancer_dataset) then "Above Average"
else "Below Average" end
as radius_group 
from breast_cancer.breast_cancer_dataset
)
select radius_group,avg(radius_mean),count(*) as total_patients,
sum(case when diagnosis="malignant" then 1 else 0 end) as malignant_patients,
sum(case when diagnosis="benign" then 1 else 0 end) as benign_patients,
sum(case when diagnosis="malignant" then 1 else 0 end) *100.0/count(*) as  malignant_distribution,
sum(case when diagnosis="benign" then 1 else 0 end) *100.0/count(*) as  benign_distribution
from cte
group by radius_group;
/*this shows that if the mean-Radius is above average then it is likely to be a malignant tumor*/


# 1. How many total patient records are there in the dataset?
select count(*) as total_patients
from breast_cancer.breast_cancer_dataset;

# 2. How many malignant and benign cases exist?
select diagnosis,count(*) as patients
from breast_cancer.breast_cancer_dataset
group by diagnosis;

# 3. What percentage of tumors are malignant vs benign?
select diagnosis,
round(count(*)*100.0/(select count(*) from breast_cancer.breast_cancer_dataset),3) as percentage_distribution
from breast_cancer.breast_cancer_dataset
group by diagnosis;

# 4. What are the minimum, maximum, and average values for radius_mean, area_mean, and perimeter_mean?
SELECT 
    ROUND(MIN(radius_mean), 2)    AS min_radius_mean,
    ROUND(MAX(radius_mean), 2)    AS max_radius_mean,
    ROUND(AVG(radius_mean), 2)    AS avg_radius_mean,

    ROUND(MIN(area_mean), 2)      AS min_area_mean,
    ROUND(MAX(area_mean), 2)      AS max_area_mean,
    ROUND(AVG(area_mean), 2)      AS avg_area_mean,

    ROUND(MIN(perimeter_mean), 2) AS min_perimeter_mean,
    ROUND(MAX(perimeter_mean), 2) AS max_perimeter_mean,
    ROUND(AVG(perimeter_mean), 2) AS avg_perimeter_mean
FROM breast_cancer.breast_cancer_dataset;

# Are there any missing or NULL values in the dataset?
select 
sum(Case when radius_mean is null then 1 else 0 end) as missing_radius_mean,
sum(Case when texture_mean is null then 1 else 0 end) as missing_texture_mean,
sum(Case when perimeter_mean is null then 1 else 0 end) as missing_perimeter_mean,
sum(Case when area_mean is null then 1 else 0 end) as missing_area_mean,
sum(Case when smoothness_mean is null then 1 else 0 end) as missing_smoothness_mean,
sum(Case when compactness_mean is null then 1 else 0 end ) as missing_compactness_mean,
sum(Case when concavity_mean is null then 1 else 0 end) as missing_concavity_mean,
sum(Case when `concave points_mean` is null then 1 else 0 end) as missing_concave_points_mean,
sum(Case when symmetry_mean is null then 1 else 0 end) as missing_symmetry_mean,
sum(Case when fractal_dimension_mean is null then 1 else 0 end) as missing_fractal_dimension_mean,
sum(Case when radius_se is null then 1 else 0 end) as missing_radius_se,
sum(Case when texture_se is null then 1 else 0 end) as missing_texture_se,
sum(Case when perimeter_se is null then 1 else 0 end) as missing_perimeter_se,
sum(Case when area_se is null then 1 else 0  end) as missing_area_se,
sum(Case when smoothness_se is null then 1 else 0 end) as missing_smoothness_se,
sum(Case when compactness_se is null then 1 else 0 end) as missing_compactness_se,
sum(Case when concavity_se is null then 1 else 0 end) as missing_concavity_se,
sum(Case when `concave points_se` is null then 1 else 0 end) as missing_concave_points_se,
sum(Case when symmetry_se is null then 1 else 0 end) as missing_symmetry_se,
sum(Case when fractal_dimension_se is null then 1 else 0 end) as missing_fractal_dimension_se,
sum(Case when texture_worst is null then 1 else 0 end) as missing_texture_worst,
sum(Case when perimeter_worst is null then 1 else 0  end) as missing_perimeter_worst,
sum(Case when area_worst is null then 1 else 0 end) as missing_area_worst,
sum(Case when smoothness_worst is null then 1 else 0 end) as missing_smoothness_worst,
sum(Case when compactness_worst is null then 1 else 0 end) as missing_compactness_worst,
sum(Case when concavity_worst is null then 1 else 0 end) as missing_concavity_worst,
sum(Case when `concave points_worst` is null then 1 else 0 end) as missing_concave_points_worst,
sum(Case when symmetry_worst is null then 1 else 0 end) as missing_symmetry_worst,
sum(Case when fractal_dimension_worst is null then 1 else 0 end) as missing_fractal_dimension_worst
from breast_cancer.breast_cancer_dataset;


# How many unique IDs exist? Any duplicates?
select id, count(*)
from breast_cancer.breast_cancer_dataset
group by id
having count(*) >1;
select count(*)
from breast_cancer.breast_cancer_dataset;


# What is the average area_mean by diagnosis type?
select diagnosis,round(avg(area_mean),3) as avg_area_mean
from breast_cancer.breast_cancer_dataset
group by diagnosis;


# What’s the median radius_mean? (If SQL supports percentile functions)
SELECT 
  AVG(radius_mean) AS median_radius_mean
FROM (
  SELECT 
    radius_mean,
    ROW_NUMBER() OVER (ORDER BY radius_mean) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM breast_cancer.breast_cancer_dataset
) ranked
WHERE rn IN (FLOOR(total_rows / 2), CEIL(total_rows / 2));


# How do the mean values of size-related variables differ between M and B?
select diagnosis,
round(Avg(radius_mean),3),
round(Avg(texture_mean),3),
round(Avg(perimeter_mean),3),
round(Avg(area_mean),3),
round(Avg(smoothness_mean),3),
round(Avg(compactness_mean),3),
round(Avg(concavity_mean),3),
round(Avg(`concave points_mean`),3),
round(Avg(symmetry_mean),3),
round(Avg(fractal_dimension_mean),3)
from breast_cancer.breast_cancer_dataset
group by diagnosis;


# 10. Which variable shows the highest variation (standard deviation)?
select
stddev(radius_mean),
stddev(texture_mean),
stddev(perimeter_mean),
stddev(area_mean),
stddev(smoothness_mean),
stddev(compactness_mean),
stddev(concavity_mean),
stddev(`concave points_mean`),
stddev(symmetry_mean),
stddev(fractal_dimension_mean)
from breast_cancer.breast_cancer_dataset;


# 11. Are “worst” features significantly higher than their corresponding mean values?
select 
Avg(radius_mean)-Avg(radius_worst),
Avg(texture_mean)-Avg(texture_worst),
Avg(perimeter_mean)-Avg(perimeter_worst),
Avg(area_mean)-Avg(area_worst),
Avg(smoothness_mean)-Avg(smoothness_worst),
Avg(compactness_mean)-Avg(compactness_worst),
Avg(concavity_mean)-Avg(concavity_worst),
Avg(`concave points_mean`)-Avg(`concave points_worst`),
Avg(symmetry_mean)-Avg(symmetry_worst),
Avg(fractal_dimension_mean) -Avg(fractal_dimension_worst)
from breast_cancer.breast_cancer_dataset;

# 12 What is the average radius_mean and area_mean for each diagnosis type?
select diagnosis, round(avg(radius_mean),3),round(avg(area_mean),3)
from breast_cancer.breast_cancer_dataset
group by diagnosis;


# 13 What is the ratio of malignant to benign cases per quartile of area_mean?
with cte as (
select id , diagnosis, area_mean,
ntile(4) over(order by area_mean asc) as area_quartile
from breast_cancer.breast_cancer_dataset
)
select area_quartile,
round(sum(case when diagnosis="malignant" then 1 else 0 end),3) as malignant_count,
round(sum(case when diagnosis="benign" then 1 else 0 end),3) benign_count,
round(sum(case when diagnosis="malignant" then 1 else 0 end)/
sum(case when diagnosis="benign" then 1 else 0 end),3)  as malignant_to_benign_ratio
from cte
group by area_quartile
order by malignant_to_benign_ratio;


# 14 Which diagnosis type has higher average texture_mean and concavity_mean?
select diagnosis,avg(texture_mean),avg(concavity_mean)
from breast_cancer.breast_cancer_dataset
group by diagnosis;


# 15 What is the average mean_radius per quartile of mean_area?
with cte as (
select id , diagnosis, radius_mean,area_mean,
ntile(4) over(order by area_mean asc) as quartile
from breast_cancer.breast_cancer_dataset
)
select diagnosis, quartile,avg(radius_mean),avg(area_mean),
round(avg(radius_mean)/avg(area_mean),3) as average_radius_per_area
from cte
group by diagnosis, quartile
order by diagnosis;



# 16 What is the distribution of area_mean (e.g., using quartiles or buckets)?
with cte as (
select id , diagnosis, radius_mean,area_mean,
ntile(4) over(order by area_mean asc) as quartile
from breast_cancer.breast_cancer_dataset
)
select diagnosis, quartile, round(count(*)*100.0/(select count(*) from breast_cancer.breast_cancer_dataset ),2) as percentage_distribution
from cte
group by diagnosis,quartile
order by diagnosis, quartile;

# 17 What is the proportion of malignant cases in the top 25% of radius_mean values?
with cte as (select diagnosis,radius_mean,row_number() over (order by radius_mean desc) as row_numbers,
ntile(4) over (order by radius_mean desc) as quartile
from breast_cancer.breast_cancer_dataset
order by radius_mean desc),
 cte2 as(
select diagnosis,quartile,row_numbers
from cte
where row_numbers<= (select count(*)*0.25 from breast_cancer.breast_cancer_dataset))
select diagnosis,quartile, round(count(*)*100.0/(select count(*) from cte2),3) as percentage_distribution
from cte2
group by diagnosis;

# 18 What is the average area_mean for patients with radius_mean above dataset average?
select avg(area_mean)
from breast_cancer.breast_cancer_dataset
where radius_mean>(select avg(radius_mean) from breast_cancer.breast_cancer_dataset);

# 19 How many tumors have radius_mean greater than 20?
select count(*) as `patients with greater than 20`
from breast_cancer.breast_cancer_dataset
where radius_mean>20;


# 20 Which quartile of area_mean has the highest proportion of malignant tumors?
with cte as (select diagnosis,area_mean,
ntile(4) over (order by area_mean desc) as quartile
from breast_cancer.breast_cancer_dataset
)
select quartile,round(avg(area_mean),3) as avg_area_mean, 
round(sum(case when diagnosis="malignant" then 1 else 0 end)*100.0/(count(*) ),2) as malignant_percentage
from cte
group by quartile
order by malignant_percentage desc;


# 21 What is the correlation between radius_mean and area_mean?
select 
round(
sum((radius_mean-(select avg(radius_mean) from breast_cancer.breast_cancer_dataset))*(area_mean-(select avg(area_mean) from breast_cancer.breast_cancer_dataset)))/
(sqrt(sum(pow(radius_mean-(select avg(radius_mean) from breast_cancer.breast_cancer_dataset),2)))*sqrt(sum(pow(area_mean-(select avg(area_mean) from breast_cancer.breast_cancer_dataset),2))))
,3)
as `correlation between radius_mean and area_mean`
from breast_cancer.breast_cancer_dataset; 


# 22 What is the correlation between perimeter_mean and area_mean?

select 
round(
sum((perimeter_mean-(select avg(perimeter_mean) from breast_cancer.breast_cancer_dataset))*(area_mean-(select avg(area_mean) from breast_cancer.breast_cancer_dataset)))/
(sqrt(sum(pow(perimeter_mean-(select avg(perimeter_mean) from breast_cancer.breast_cancer_dataset),2)))*sqrt(sum(pow(area_mean-(select avg(area_mean) from breast_cancer.breast_cancer_dataset),2)))
)
,3) as `correlation between perimeter_mean and area_mean`
from breast_cancer.breast_cancer_dataset; 


# 23 Do patients with above-average radius_mean have higher probability of malignancy?
with cte as(select diagnosis,id,
case when radius_mean >(select avg(radius_mean) from breast_cancer.breast_cancer_dataset) 
then 'Above Average' else 'Below Average' end as average_group
from breast_cancer.breast_cancer_dataset)
select average_group,round(sum(case when diagnosis='malignant' then 1 else 0 end )*100.0/count(*),2) as malignant_percentage_distribution,
round(sum(case when diagnosis='benign' then 1 else 0 end )*100.0/count(*),2) as benign_percentage_distribution
from cte
group by average_group ; 


# 24 Compare the average concavity_mean for malignant vs benign tumors.
select diagnosis,round(avg(concavity_mean),5) as avg_concavity_mean
from breast_cancer.breast_cancer_dataset
group by diagnosis;


# 25 Are radius_worst, area_worst, and perimeter_worst highly correlated?
select
round(
sum((radius_worst-(select avg(radius_worst) from breast_cancer.breast_cancer_dataset))*(area_worst-(select avg(area_worst) from breast_cancer.breast_cancer_dataset)))/
(sqrt(sum(pow(radius_worst-(select avg(radius_worst) from breast_cancer.breast_cancer_dataset),2)))*sqrt(sum(pow(area_worst-(select avg(area_worst) from breast_cancer.breast_cancer_dataset),2))))
,4) as `correlation between radius_worst and area_worst`,
round(
sum((area_worst-(select avg(area_worst) from breast_cancer.breast_cancer_dataset))*(perimeter_worst-(select avg(perimeter_worst) from breast_cancer.breast_cancer_dataset)))/
(sqrt(sum(pow(area_worst-(select avg(area_worst) from breast_cancer.breast_cancer_dataset),2)))*sqrt(sum(pow(perimeter_worst-(select avg(perimeter_worst) from breast_cancer.breast_cancer_dataset),2))))
,4) as `correlation between area_worst and perimeter_worst`,
round(
sum((radius_worst-(select avg(radius_worst) from breast_cancer.breast_cancer_dataset))*(perimeter_worst-(select avg(perimeter_worst) from breast_cancer.breast_cancer_dataset)))/
(sqrt(sum(pow(radius_worst-(select avg(radius_worst) from breast_cancer.breast_cancer_dataset),2)))*sqrt(sum(pow(perimeter_worst-(select avg(perimeter_worst) from breast_cancer.breast_cancer_dataset),2))))
,4) as `correlation between radius_worst and perimeter_worst`
from breast_cancer.breast_cancer_dataset;


# 27 What proportion of tumors with radius_mean above average are malignant?
with cte as (select
diagnosis,id,radius_mean,
case when radius_mean >(select avg(radius_mean) from breast_cancer.breast_cancer_dataset) then 'Above Average radius_mean' 
else 'Below Average radius_mean' end as avg_radius_mean_group
from breast_cancer.breast_cancer_dataset)
select avg_radius_mean_group,round(sum(case when diagnosis='malignant' then 1 else 0 end)*100.0/(count(*)),2) as malignant_distribution,
round(sum(case when diagnosis='benign' then 1 else 0 end)*100.0/(count(*)),2) as benign_distribution
from cte
group by avg_radius_mean_group;


# 28 What is the malignancy rate among the top 10% of area_mean values?
with cte as (select diagnosis,id,area_mean,
ntile(10) over (order by area_mean desc) as area_quartile
from breast_cancer.breast_cancer_dataset
)
select sum(case when diagnosis='malignant' then 1 else 0 end) as malignant_count, sum(case when diagnosis='malignant' then 1 else 0 end) *100.0/count(*) as malignant_percentage
from cte
where area_quartile=1
;


# 29 Which features contribute most to separating malignant vs benign groups?

select diagnosis,
Avg(radius_mean),
Avg(texture_mean),
Avg(perimeter_mean),
Avg(area_mean),
Avg(smoothness_mean),
Avg(compactness_mean),
Avg(concavity_mean),
Avg(`concave points_mean`),
Avg(symmetry_mean),
Avg(fractal_dimension_mean)
from breast_cancer.breast_cancer_dataset
group by diagnosis;


# 30 What percentage of malignant cases have above-average values in both area_mean and perimeter_mean?
with cte as (select diagnosis,id, area_mean,perimeter_mean, 
case 
when (perimeter_mean>(select Avg(perimeter_mean) from breast_cancer.breast_cancer_dataset)
and 
area_mean>(select avg(area_mean) from breast_cancer.breast_cancer_dataset
)
)then 'Above Average' else 'Below Average' end
as value_group
from breast_cancer.breast_cancer_dataset)
select value_group, round(sum(case when diagnosis='malignant' then 1 else 0 end)*100.0/count(*),2) as malignant_distribution,
round(sum(case when diagnosis='benign' then 1 else 0 end)*100.0/count(*),2) as benign_distribution
from cte 
group by value_group;


# 32 Rank all features by their difference in mean values between M and B.

with cte as (
select 'radius_mean' as features,
avg(case when diagnosis='malignant' then radius_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then radius_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'texture_mean' as features,
avg(case when diagnosis='malignant' then texture_mean else 0 end) ,
avg(case when diagnosis='benign' then texture_mean else 0 end) 
from breast_cancer.breast_cancer_dataset 
union all
select 'perimeter_mean' as features,
avg(case when diagnosis='malignant' then perimeter_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then perimeter_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'area_mean' as features,
avg(case when diagnosis='malignant' then area_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then area_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'smoothness_mean' as features,
avg(case when diagnosis='malignant' then smoothness_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then smoothness_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'compactness_mean' as features,
avg(case when diagnosis='malignant' then compactness_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then compactness_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'concavity_mean' as features,
avg(case when diagnosis='malignant' then concavity_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then concavity_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'concave points_mean' as features,
avg(case when diagnosis='malignant' then `concave points_mean` else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then `concave points_mean` else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'symmetry_mean' as features,
avg(case when diagnosis='malignant' then symmetry_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then symmetry_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'fractal_dimension_mean' as features,
avg(case when diagnosis='malignant' then fractal_dimension_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then fractal_dimension_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset )
select features,
round(malignant_mean,4) as malignant_mean,
round(benign_mean,4) as  benign_mean,
round(malignant_mean-benign_mean,4) as mean_difference ,
round(abs(malignant_mean-benign_mean),4) as abs_mean_difference
from cte
order by abs_mean_difference desc
;

# 33 Identify top 3 patients with highest area_worst.
select id,diagnosis,area_worst
from breast_cancer.breast_cancer_dataset
order by area_worst desc
limit 3;


# 34 Which patients fall in top 5% of both radius_mean and area_mean?
with cte as (select id, diagnosis,radius_mean,area_mean,
ntile(20) over (order by radius_mean desc) as radius_tile,
ntile(20) over (order by area_mean desc) as area_tile
from breast_cancer.breast_cancer_dataset)
select id, diagnosis,radius_mean,area_mean 
from cte
where radius_tile=1 and area_tile=1
order by radius_mean desc,area_mean desc;


# 35 Create bins (low, medium, high) for radius_mean and find malignancy rates across bins.
with cte as (select id, diagnosis, radius_mean,
ntile(3) over (order by radius_mean) as bin_1
from breast_cancer.breast_cancer_dataset),
cte2 as (
select id, diagnosis, radius_mean, case when bin_1=1 then 'Low' 
when bin_1=2 then 'Medium'
when bin_1=3 then 'High'
end as radius_mean_group
from cte)
select radius_mean_group, round(sum(case when diagnosis='malignant' then 1 else 0 end)*100.0/count(*) ,2)as malignant_distribution,
round(sum(case when diagnosis='benign' then 1 else 0 end)*100.0/count(*) ,2)as benign_distribution
from cte2
group by radius_mean_group;


# 36 Validate data consistency — are there any cases where radius_worst < radius_mean?

select count(*)
from breast_cancer.breast_cancer_dataset
where radius_worst < radius_mean;


# 38 Compare the average values of all _worst features by diagnosis.

select diagnosis,
Avg(radius_worst),
Avg(texture_worst),
Avg(perimeter_worst),
Avg(area_worst),
Avg(smoothness_worst),
Avg(compactness_worst),
Avg(concavity_worst),
Avg(`concave points_worst`),
Avg(symmetry_worst),
Avg(fractal_dimension_worst)
from breast_cancer.breast_cancer_dataset
group by diagnosis;


# 39 Which feature has the largest difference between its mean and worst measurement overall?
with cte as(select 'radius_mean & radius_worst' as features,Avg(radius_mean),Avg(radius_worst),abs(Avg(radius_mean)-Avg(radius_worst)) as mean_worst_diff 
from breast_cancer.breast_cancer_dataset 
union all
select 'texture_mean & texture_worst' as features,Avg(texture_mean),Avg(texture_worst),abs(Avg(texture_mean)-Avg(texture_worst)) as mean_worst_diff 
from breast_cancer.breast_cancer_dataset 
union all
select 'perimeter_mean & perimeter_worst' as features,Avg(perimeter_mean),Avg(perimeter_worst),abs(Avg(perimeter_mean)-Avg(perimeter_worst)) as mean_worst_diff 
from breast_cancer.breast_cancer_dataset 
union all
select 'area_mean & area_worst' as features,Avg(area_mean),Avg(area_worst),abs(Avg(area_mean)-Avg(area_worst)) as mean_worst_diff 
from breast_cancer.breast_cancer_dataset 
union all
select 'smoothness_mean & smoothness_worst' as features,Avg(smoothness_mean),Avg(smoothness_worst),abs(Avg(smoothness_mean)-Avg(smoothness_worst)) as mean_worst_diff 
from breast_cancer.breast_cancer_dataset 
union all
select 'compactness_mean & compactness_worst' as features,Avg(compactness_mean),Avg(compactness_worst),abs(Avg(compactness_mean)-Avg(compactness_worst)) as mean_worst_diff 
from breast_cancer.breast_cancer_dataset 
union all
select 'concavity_mean & concavity_worst' as features,Avg(concavity_mean),Avg(concavity_worst),abs(Avg(concavity_mean)-Avg(concavity_worst)) as mean_worst_diff 
from breast_cancer.breast_cancer_dataset 
union all
select 'concave points_mean & concave points_worst' as features,Avg(`concave points_mean`),Avg(`concave points_worst`),abs(Avg(`concave points_mean`)-Avg(`concave points_worst`)) as mean_worst_diff 
from breast_cancer.breast_cancer_dataset 
union all
select 'symmetry_mean & symmetry_worst' as features,Avg(symmetry_mean),Avg(symmetry_worst),abs(Avg(symmetry_mean)-Avg(symmetry_worst)) as mean_worst_diff 
from breast_cancer.breast_cancer_dataset 
union all
select 'fractal_dimension_mean & fractal_dimension_worst' as features,Avg(fractal_dimension_mean),Avg(fractal_dimension_worst),abs(Avg(fractal_dimension_mean)-Avg(fractal_dimension_worst)) as mean_worst_diff 
from breast_cancer.breast_cancer_dataset )
select * from cte
order by mean_worst_diff  desc limit 1
;


# 40 Compute z-scores (standardized values) for radius_mean and area_mean for top 5 patients.
with stat as(select avg(radius_mean) as avg_radius_mean,stddev(radius_mean) as std_radius_mean,avg(area_mean) as avg_area_mean,stddev(area_mean) as std_area_mean
from breast_cancer.breast_cancer_dataset),
cte as (
select id,
        diagnosis,
        radius_mean,
        area_mean,
        (radius_mean-s.avg_radius_mean)/s.std_radius_mean as z_radius_mean,
        (area_mean-s.avg_area_mean)/s.std_area_mean as z_area_mean
        from breast_cancer.breast_cancer_dataset,stat s
)
select *
from cte
order by radius_mean desc,area_mean desc
limit 5
;

# 41 Are malignant tumors characterized more by size or texture-related features?

with cte as (
select 'radius_mean' as features,
avg(case when diagnosis='malignant' then radius_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then radius_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'texture_mean' as features,
avg(case when diagnosis='malignant' then texture_mean else 0 end) ,
avg(case when diagnosis='benign' then texture_mean else 0 end) 
from breast_cancer.breast_cancer_dataset 
union all
select 'perimeter_mean' as features,
avg(case when diagnosis='malignant' then perimeter_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then perimeter_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'area_mean' as features,
avg(case when diagnosis='malignant' then area_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then area_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'smoothness_mean' as features,
avg(case when diagnosis='malignant' then smoothness_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then smoothness_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'compactness_mean' as features,
avg(case when diagnosis='malignant' then compactness_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then compactness_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'concavity_mean' as features,
avg(case when diagnosis='malignant' then concavity_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then concavity_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'concave points_mean' as features,
avg(case when diagnosis='malignant' then `concave points_mean` else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then `concave points_mean` else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'symmetry_mean' as features,
avg(case when diagnosis='malignant' then symmetry_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then symmetry_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset 
union all
select 'fractal_dimension_mean' as features,
avg(case when diagnosis='malignant' then fractal_dimension_mean else 0 end) as malignant_mean,
avg(case when diagnosis='benign' then fractal_dimension_mean else 0 end) as benign_mean
from breast_cancer.breast_cancer_dataset
)
select features,
round(malignant_mean,4) as malignant_mean,
round(benign_mean,4) as  benign_mean,
round(malignant_mean-benign_mean,4) as mean_difference ,
round(abs(malignant_mean-benign_mean),4) as abs_mean_difference
from cte
order by abs_mean_difference desc;



# 42 What thresholds of radius_mean or area_mean could separate M from B effectively?
SELECT 
    diagnosis,
    ROUND(AVG(radius_mean),4) AS avg_radius_mean,
    ROUND(AVG(area_mean),4)   AS avg_area_mean
FROM breast_cancer.breast_cancer_dataset
GROUP BY diagnosis;



# 43 Do malignant cases have higher variation (standard deviation) in measurements?
select diagnosis,
stddev_samp(radius_mean),
stddev_samp(texture_mean),
stddev_samp(perimeter_mean),
stddev_samp(area_mean),
stddev_samp(smoothness_mean),
stddev_samp(compactness_mean),
stddev_samp(concavity_mean),
stddev_samp(`concave points_mean`),
stddev_samp(symmetry_mean),
stddev_samp(fractal_dimension_mean)
from breast_cancer.breast_cancer_dataset
group by diagnosis;



# 46 How much larger (in %) are malignant tumors on average compared to benign ones?
SELECT feature, 
       ROUND(mean_mal, 6) AS mean_malignant,
       ROUND(mean_ben, 6) AS mean_benign,
       ROUND(100.0 * (mean_mal - mean_ben) / NULLIF(mean_ben,0), 4) AS pct_larger_m_vs_b
FROM (
  SELECT 'radius_mean' AS feature,
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='malignant' THEN radius_mean END) AS mean_mal,
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='benign'    THEN radius_mean END) AS mean_ben
  FROM breast_cancer.breast_cancer_dataset

  UNION ALL
  SELECT 'area_mean',
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='malignant' THEN area_mean END),
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='benign'    THEN area_mean END)
  FROM breast_cancer.breast_cancer_dataset

  UNION ALL
  SELECT 'perimeter_mean',
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='malignant' THEN perimeter_mean END),
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='benign'    THEN perimeter_mean END)
  FROM breast_cancer.breast_cancer_dataset

  UNION ALL
  SELECT 'texture_mean',
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='malignant' THEN texture_mean END),
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='benign'    THEN texture_mean END)
  FROM breast_cancer.breast_cancer_dataset

  UNION ALL
  SELECT 'smoothness_mean',
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='malignant' THEN smoothness_mean END),
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='benign'    THEN smoothness_mean END)
  FROM breast_cancer.breast_cancer_dataset

  UNION ALL
  SELECT 'compactness_mean',
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='malignant' THEN compactness_mean END),
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='benign'    THEN compactness_mean END)
  FROM breast_cancer.breast_cancer_dataset

  UNION ALL
  SELECT 'concavity_mean',
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='malignant' THEN concavity_mean END),
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='benign'    THEN concavity_mean END)
  FROM breast_cancer.breast_cancer_dataset

  UNION ALL
  SELECT 'concave_points_mean',
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='malignant' THEN `concave points_mean` END),
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='benign'    THEN `concave points_mean` END)
  FROM breast_cancer.breast_cancer_dataset

  UNION ALL
  SELECT 'symmetry_mean',
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='malignant' THEN symmetry_mean END),
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='benign'    THEN symmetry_mean END)
  FROM breast_cancer.breast_cancer_dataset

  UNION ALL
  SELECT 'fractal_dimension_mean',
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='malignant' THEN fractal_dimension_mean END),
         AVG(CASE WHEN LOWER(TRIM(diagnosis))='benign'    THEN fractal_dimension_mean END)
  FROM breast_cancer.breast_cancer_dataset
) t
ORDER BY ABS(pct_larger_m_vs_b) DESC;

























