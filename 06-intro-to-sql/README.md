## What is SQL?
- Structured Query Language
- Domain Specific Language (like HTML)

## Why do we need it?
- It's needed to persist our data

## What is a relational database?
- A relation is the relation between the "heading" (attributes/columns) and "body" (rows) of a table

## What kinds of operations can we do in SQL?
Create
    Row: Insert
    Table: Create
Read
    Row: Select
    Table: Schema
Update
    Row: Update
    Table: Alter
Delete
    Row: Delete
    Table: Drop

## Instructions

1. Install the SQLite Browser if you haven't already [here](http://sqlitebrowser.org/)
2. Open the SQLite Browser and click 'File -> Open DataBase'
3. Choose the `chinook.db` file from this repo. This database is open source and maintained by Microsoft (SQL is no fun if you don't have any data)
4. Click the tab that says 'Execute SQL'. Type SQL queries in the box above. Press the play button. See the results of that query in the box below

## Challenges

1. Write the SQL to return all of the rows in the artists table?

```SQL
select * from artists;
```

2. Write the SQL to select the artist with the name "Black Sabbath"

```SQL
SELECT * FROM artists
WHERE artists.name = "Black Sabbath"
```

3. Write the SQL to create a table named 'fans' with an autoincrementing ID that's a primary key and a name field of type text

```sql
create table fans (
	id integer primary KEY,
	name TEXT
)
```

4. Write the SQL to alter the fans table to have a artist_id column type integer?

```sql
alter table fans add column artist_id integer
```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas? ArtistId **169**

```sql
insert into fans (name, artist_id) values ("Shannon", 169);
```

6. Check out the [Faker gem](https://github.com/stympy/faker). `gem install faker`, open up irb, run `require 'faker'` and then generate a fake name for yourself using `Faker::Name.name`. How would you update your name in the fans table to be your new name?

   ```sql
    update fans set name = "Matteo" where name = "Shannon"
   ```

7. Write the SQL to return fans that are not fans of the black eyed peas.

```sql
    select * from fans where artist_id is not 169
```

8. Write the SQL to display an artists name next to their album title

```sql
    select artists.name, albums.title from artists
    join albums on albums.artist_id = artists.id
```

9. Write the SQL to display artist name, album name and number of tracks on that album

```sql
    select artists.name, count(tracks.name), albums.title from artists
    join albums on albums.artist_id = artists.id
    join tracks on tracks.album_id = albums.id
    group by albums.id
```

10. Write the SQL to return the name of all of the artists in the 'Pop' Genre

```sql
    select distinct artists.name from artists
    join albums on albums.artist_id = artists.id
    join tracks on tracks.album_id = albums.id
    join genres on tracks.genre_id = genres.id
	where genres.name = "Pop"
```

## BONUS (very hard)

11. I want to return the names of the artists and their number of rock tracks
    who play Rock music
    and have move than 30 tracks
    in order of the number of rock tracks that they have
    from greatest to least

```sql
    select artists.name, count(tracks.id) from tracks
    join albums on tracks.genre_id = 5
	join artists on artists.id = albums.artist_id
	group by artists.id
	having count(tracks.id) > 30
	order by count(tracks.id) desc
```
