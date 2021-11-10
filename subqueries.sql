-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
select
*
from invoice
where invoice_id in (
  select
  invoice_id
  from invoice_line
  where unit_price > 0.99
  )
;
-- Get all playlist tracks where the playlist name is Music.
select
*
from playlist_track
where playlist_id in (
  select
  playlist_id
  from playlist
  where name = 'Music'
  )
;
-- Get all track names for playlist_id 5.
select
name
from track
where track_id in (
  select
  track_id
  from playlist_track
  where playlist_id = 5
  )
;

-- Get all tracks where the genre is Comedy.
select
*
from track
where genre_id in (
  select
  genre_id
  from genre
  where name = 'Comedy'
  )
;

-- Get all tracks where the album is Fireball.
select
*
from track
where album_id in (
  select
  album_id
  from album
  where title = 'Fireball'
  )
;

-- Get all tracks for the artist Queen ( 2 nested subqueries ).
select
*
from track
where album_id in (
  select
  album_id
  from album
  where artist_id = (
    	select
    	artist_id
    	from artist
    	where name = 'Queen'
    )
  )
;