
select * from referendum.final_project_referendum;

-- SUM() function 
SELECT SUM(Votes_Cast) from referendum.final_project_referendum;

-- COUNT total rows and name 'amount of rows'
Select count(*) as 'amount of rows'  from referendum.final_project_referendum;

 -- GET THE AVERAGE OF PEOPLE WHO VOTED REMAIN and name row
 Select AVG(REMAIN) as 'Average number of people who wanted to remain in EU' FROM referendum.final_project_referendum;
 -- Get the average percentage turn out 
 select AVG(Percent_turnout) as 'Average % turnout' from referendum.final_project_referendum;
 
-- Get the amount of valid votes (mmin and max) in each region and group this by region, also count region 
Select region,sum(valid_votes), min(valid_votes), max(valid_votes),count(region) from referendum.final_project_referendum Group by region;

-- Filter to show area where valid votes percentage is greater than 70%
select area, valid_votes from referendum.final_project_referendum where percent_turnout > 70;

-- filter data to find high and low votes in areas and regions if greater than 5500 chnage to high, or else if lower change to low
 Select region, Area, valid_votes, case when valid_votes > 55500 then 'high' else 'low' END 
 from referendum.final_project_referendum order by valid_votes;
 
