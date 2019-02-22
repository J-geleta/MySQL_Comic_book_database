#number of issues per publisher
use comic_book_database;
select publisher_name, count(issueID) as "number of issues released"
from publisher_data_2017 
join comic_book_sales_2017 on publisher_data_2017.idPublisher=comic_book_sales_2017.idPublisher
group by publisher_name 
order by count(issueID) desc;

#creators worked on two series
use comic_book_database;
#cbs=comic_book_series, crea=Creators, junct=comic_book_series_has_creators
SELECT concat(first_name," ",last_name) as "Creator Name", count(junct.idCreators) as "Number of series Creators have worked on"
FROM comic_book_series_has_creators junct
JOIN creators crea ON junct.idCreators = crea.idCreators
JOIN comic_book_series cbs ON junct.comic_series_id = cbs.comic_series_id
group by  junct.idCreators
having count(junct.idCreators) > 1
order by count(junct.idCreators) desc;

#series with highest value of issues
use comic_book_database;
select sum(issue_price) as "total sum of all issues in series", series_title
from comic_book_sales_2017
join comic_book_series on comic_book_sales_2017.comic_series_id=comic_book_series.comic_series_id
group by series_title
order by sum(issue_price) desc;

#number of power appearances in superheroes
use comic_book_database;
select power_name as "Power Name", count(superheroes.power_id) as "Number of Power Appearances in Superheroes"
from hero_powers
join superheroes on hero_powers.power_id= superheroes.power_id
group by power_name
having count(superheroes.power_id) > 1 
order by count(superheroes.power_id) desc;

#heroes with movies grossing over 1,000,000,000
use comic_book_database;
select hero_name from superheroes
where superhero_id in 
	(select superhero_id
	from superhero_movies
	where box_office_earnings > 1000000000);