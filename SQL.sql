create table author (ID int, Name varchar (40), Birth_Year int, Death_Year int)
select * from author 
Insert into author (Id, Name, Birth_Year, Death_Year) values (1, 'Marcella Cole',1983, null)
Insert into author (Id, Name, Birth_Year, Death_Year) values (2, 'Lisa Mullins', 1891, 1950)
Insert into author (Id, Name, Birth_Year, Death_Year) values (3, 'Dennis Stokes', 1935,1994)
Insert into author (Id, Name, Birth_Year, Death_Year) values (4, 'Randolph Vasquez', 1957, 2004)
Insert into author (Id, Name, Birth_Year, Death_Year) values (5,'Daniel Branson', 1965,1990)

/* can you insert the Book table data like the author table above? */
Create table book (id int,authorid int, Title varchar (50), Publish_Year int, Publishing_house varchar (50), rating float)
select * from book 
Insert into book (id,authorid,Title,Publish_Year,Publishing_house,rating) values (1,null,'Soulless girl', 2008, 'Golden Albatros',4.3)
Insert into book (id,authorid,Title,Publish_Year,Publishing_house,rating) values (2,null,'Weak Heart',1980,'Diarmud Inc.',3.8)
insert into book (id,authorid,Title,Publish_Year,Publishing_house,rating) values (3,4,'Faith Of Light',1995,'White Cloud Press',4.3)
Insert into book (id,authorid,Title,Publish_Year,Publishing_house,rating) values (4,null,'Memory Of Hope',2000,'Rutis Enterprises',2.7)
Insert into book (id,authorid,Title,Publish_Year,Publishing_house,rating) values (5,6,'Warrior Of Wind',2005,'Maverick',4.6)

/* Now insert the other  remaining tables - adaptation and book_review table same as above */
create table adaptation (book_id int, type varchar (10),title varchar (50),release_year int,rating float)
select * from adaptation 
Insert into adaptation (book_id,type,title,release_year,rating) values (1,'movie','Gone With The Wolves: The Beginning',2008,3)
Insert into adaptation (book_id,type,title,release_year,rating) values (3, 'movie','Companions Of  Tomorrow',2001,4.2)
Insert into adaptation (book_id,type,title,release_year,rating) values (5,'movie','Homeless Warrior',2008,4)
Insert into adaptation (book_id,type,title,release_year,rating) values (2,'movie','Blacksmith With Silver',2014,4.3)
Insert into adaptation (book_id,type,title,release_year,rating) values (4,'movie','Patron And Bearers',2004,3.2)

Create table book_review (bookid int,review varchar (150),author varchar (40))
select * from book_review
Insert into book_review (bookid,review,author) values (1,'An incredible book','Sylvia Jones')
Insert into book_review (bookid,review,author) values (1,'Great, although it has some flaws','Jessica Parker')
Insert into book_review (bookid,review,author) values (2,'Dennis Stokes takes the reader for a ride full of emotions','Thomas Green')
Insert into book_review (bookid,review,author) values (3,'Incredible craftmanship of the author','Martin Freeman')
Insert into book_review (bookid,review,author) values (4,'Not the best book by this author','Jude Faith')
Insert into book_review (bookid,review,author) values (5,'Claudia Johnson at her best!','Joe Marqiz')
Insert into book_review (bookid,review,author) values (6,'I cannot recall more captivating plot','Alexander Durham')


/* Exercise 1: List all the books with their writer name and publish year */

select Name as AuthorName ,Title as BookTitle ,Publish_Year as Publication from author join book on author.Id =book.id 

/* Exercise 2: List Authors and Books published after 2005 */
select Name as AuthorName ,Title as BookTitle ,Publish_Year as Publication from author join book on author.Id =book.id where Publish_Year >2005 

/* Exercise 3: List all the books with their adaptation */ 
select book.Title as BookTitle,type as adaptation , Publish_Year as PublishYear from book join adaptation on book.id=adaptation.book_id 