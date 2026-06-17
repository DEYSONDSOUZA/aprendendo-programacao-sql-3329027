-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"
SELECT
  tra.trackid AS id,
  tra.name AS nome,
  alb.title AS album,
  art.name AS artista
FROM 
  tracks AS tra
  INNER JOIN albums AS alb ON alb.albumid = tra.albumid
  INNER JOIN artists AS art ON art.artistid = alb.artistid
WHERE 
  art.name LIKE '%Nação%' AND alb.title != 'Da Lama Ao Caos';