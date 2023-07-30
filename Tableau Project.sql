SELECT SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths, SUM(new_deaths)/SUM(new_cases)*100 AS DeathPercentage
FROM PortfolioProject..Deaths
WHERE continent IS NOT NULL
ORDER BY 1,2

SELECT location, SUM(new_deaths) AS TotalDeathCount
FROM PortfolioProject..Deaths
WHERE continent is null 
AND location not in ('World', 'European Union', 'International')
GROUP BY location
ORDER BY TotalDeathCount DESC

SELECT Location, Population, MAX(total_cases) AS HighestInfectionCount,  Max((total_cases/population))*100 AS PercentPopulationInfected
From PortfolioProject..Deaths
GROUP BY Location, Population
ORDER BY PercentPopulationInfected DESC

SELECT Location, Population,date, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
FROM PortfolioProject..Deaths
Group by Location, Population, date
order by PercentPopulationInfected desc