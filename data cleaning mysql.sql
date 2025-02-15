-- Data cleaning 

select *
from layoffs;

-- 1. remove duplicates
-- 2. standardize the data
-- 3. null values or blank values 
-- 4. remove any columns 




create table layoffs_staging
like layoffs;


select *
from layoffs_staging;

insert layoffs_staging
select *
from layoffs;


select *,
row_number() over(
partition by company, industry, total_laid_off, percentage_laid_off, 'date')  as row_num
from layoffs_staging;

with duplicate_cte as
(
select *,
row_number() over(
partition by company, location,
 industry, total_laid_off, percentage_laid_off, `date`, stage,
 country, funds_raised_millions)  as row_num
from layoffs_staging
)
select * 
from duplicate _cte
where row_num > 1;






with duplicate_cte as
(
select *,
row_number() over(
partition by company, location,
 industry, total_laid_off, percentage_laid_off, `date`, stage,
 country, funds_raised_millions)  as row_num
from layoffs_staging
)
delete
from duplicate _cte
where row_num > 1;




CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `Row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


select *
from layoffs_staging2
where row_num > 1;

insert into layoffs_staging2
select *,
row_number() over(
partition by company, location,
 industry, total_laid_off, percentage_laid_off, `date`, stage,
 country, funds_raised_millions)  as row_num
from layoffs_staging;


delete
from layoffs_staging2
where row_num > 1;

select *
from layoffs_staging2;


-- standardizing data

select company, trim(company)
from layoffs_staging2;

update layoffs_staging2
set company = trim(company);

select distinct industry
from layoffs_staging2
where industry like 'crypto%';


update layoffs_staging2
set industry = 'crypto'
where industry like 'crypto%';


select distinct country, trim
from layoffs_staging2
order by 1;

update layoffs_stagings
set country = trim(trailing '-' from country)
where country like 'united states%';

select `date`,
str_to_date(`date`,'%m/%d/%Y')
from layoffs_stagings;


update layoffs_staging2
set `date` = str_to_date(`date`, '%m/%d/%Y');


select * 
from layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null;


select distinct industry
from layoffs_staging2;


