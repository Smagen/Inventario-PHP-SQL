<?php include 'funzioni.php' ?>
<!DOCTYPE html>
<html>
<head>
	<title>Scegli la categoria e l'operazione da eseguire:</title>
</head>
<body>
<form action="scarico.php" method="post">
<p>
	<label for ="categoria" id ="categoria">Categoria: </label> 
	<select  name="categoria">
	<?php elenco_categorie($db); ?>
	</select>
</p>
<p>
	<label for ="username" id ="username">Username docente: </label>
	<input type="username" name="username" id ="username">

	<label for ="password">Password docente: </label>
	<input type="password" name="password" id ="password">
</p>
<p>
	<input type="submit" value="Vai alla categoria">
</p>
<?php mysql_close($connessione); ?>
</body>

</body>
</html>