<?php include 'funzioni.php' ?>
<!DOCTYPE html>
<html>
<head>
	<title>Scegli la categoria e l'operazione da eseguire:</title>
</head>
<body>
<form action="aggiorna.php" method="post">
<p>
	<label for ="categoria" id ="categoria">Categoria: </label> 
	<select  name="categoria">
	<?php elenco_categorie($db); ?>
	</select>
</p>
<p>
	<label for ="password" id ="password">Password docente: </label>
	<input type="password" name="password" id ="password">
</p>
<p>
	<input type="radio" name="carico" id="carico"> Carico
	<input type="radio" name="scarico" id="scarico"> Scarico
</p>
<p>
	<input type="submit" value="Esegui">
</p>
<?php mysql_close($connessione); ?>
</body>

</body>
</html>