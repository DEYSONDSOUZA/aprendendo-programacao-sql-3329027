-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
WITH musicas AS (
SELECT
  tra.TrackId AS Id,
  tra.Name AS NomeMusica,
  alb.Title AS Album,
  art.Name AS Artista
FROM
  tracks as tra
  INNER JOIN albums AS alb ON alb.AlbumId = tra.AlbumId
  INNER JOIN artists AS art ON art.ArtistId = alb.ArtistId
)

SELECT
  Artista,
  COUNT(musicas) AS TotalMusicas
FROM musicas
WHERE Artista = 'Caetano Veloso'