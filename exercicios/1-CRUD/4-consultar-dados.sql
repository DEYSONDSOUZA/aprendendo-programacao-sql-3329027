-- Crie uma consulta que retorne apenas as colunas "Name", "Composer" e "AlbumId" da tabela "tracks"
SELECT 
  Name,
  Composer,
  AlbumId
FROM 
  tracks
-- Repita a consulta anterior e dessa vez filtre os registros para que retornem apenas as tracks com o atributo "AlbumId" igual a 1
WHERE 
  AlbumId = 1;