<?php include 'funzioni.php' ?>
<!DOCTYPE html>
<html>
<body>
<form action="carico.php" name=from1 method="post">
	<h1>Scegli la categoria:</h1><br>
<div>
	<br>
	<p>
		<label for ="categoria" id ="categoria">Categoria: </label> 
		<select  name="categoria">
		<?php elenco_categorie($db); ?>
		</select>
	</p><br>
	<p>
		<label for ="username">Username docente:<br></label>
		<input type="text" name="username" id ="username" required/>
		<br>
		<label for ="password">Password docente:<br></label>
		<input type="password" name="password" id ="password" required/>
	</p><br>
	<p>
		<input type="submit" value="Vai alla categoria">
	</p>
</div>
<?php mysql_close($connessione); ?>
</html>