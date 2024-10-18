-- Exploratory Data Analysis Layoffs - Project

-- Now I will start exploring the data to find trends and patterns or even outliers 

-- First we will preview the data 

SELECT *
FROM world_layoffs.layoffs_staging2;   

-- Looking at the highest total layoffs and the highet percentage of layoffs
SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM world_layoffs.layoffs_staging2;

-- looking at the highest and lowest percentage in layoffs 
SELECT MAX(percentage_laid_off), MIN(percentage_laid_off) 
FROM world_layoffs.layoffs_staging2;

-- we found values 1 = 100% as the highest laid off - which is 100% of the company was laid off
SELECT *
FROM world_layoffs.layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY total_laid_off DESC ; -- ordered by total_laid_off to see which company laid off the most 

SELECT *
FROM world_layoffs.layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;  -- ordered by funds raised millions to see how big the companies were
-- Britishvolt had the highest funds raised like 2 billion dollard and had 100% laid off 


-- Companies with the Most total_laid_off

SELECT company, SUM(total_laid_off) as total_layoffs
FROM world_layoffs.layoffs_staging2
GROUP BY company
ORDER BY 2 DESC; 

-- Industry that had most layoffs
SELECT industry, SUM(total_laid_off) as total_layoffs
FROM world_layoffs.layoffs_staging2
GROUP BY industry
ORDER BY 2 DESC; -- Consumer and Retail industries had the most layoffs 

-- Countries with the most layoffs
SELECT country,  SUM(total_laid_off) AS total_layoffs
FROM world_layoffs.layoffs_staging2
GROUP BY country 
ORDER BY 2 DESC; 
-- United States and India are on top of the results  

-- Locations with the most Layoffs
SELECT location,  SUM(total_laid_off) AS total_layoffs
FROM world_layoffs.layoffs_staging2
GROUP BY location
ORDER BY 2 DESC; 

-- Date range of this data = 2020 - 2023
SELECT MIN(date), MAX(date) 
FROM world_layoffs.layoffs_staging2; 

-- Yearly Layoffs
SELECT YEAR(date), SUM(total_laid_off)
FROM world_layoffs.layoffs_staging2
GROUP BY 1
ORDER BY 1 DESC;

-- Layoffs by Companies Stage
SELECT stage, SUM(total_laid_off)
FROM world_layoffs.layoffs_staging2
GROUP BY 1
ORDER BY 2 DESC;


-- Rolling total layoffs Per Month / i yused a CTE so that i can make the calculation and query off of it.

WITH Rolling_Monthly_Total AS (  
	SELECT SUBSTRING(date, 1,7) AS dates, SUM(total_laid_off) As total_layoffs
	FROM world_layoffs.layoffs_staging2
	WHERE SUBSTRING(date, 1, 7) IS NOT NULL
	GROUP BY 1
	ORDER  BY 1 ASC
)
SELECT  dates,
		total_layoffs,
		SUM(total_layoffs) OVER(ORDER BY dates) as Rolling_total
FROM rolling_monthly_total;


-- Ranking companies with the highest total yearly layoffs

WITH company_year (company, years, total_layoffs) AS (
	SELECT company, YEAR(`date`), SUM(total_laid_off) AS total_layoffs
    FROM world_layoffs.layoffs_staging2
    GROUP BY 1, 2
), Company_yearly_rank as (
SELECT *, 
	   DENSE_RANK() OVER(PARTITION BY years ORDER BY total_layoffs DESC) As ranking
FROM company_year
WHERE years IS NOT NULL
)
SELECT company, years, total_layoffs, ranking
FROM company_yearly_rank 
WHERE ranking <= 5;

