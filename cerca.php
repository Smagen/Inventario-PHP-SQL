<?php include 'funzioni.php'; ?>
<!DOCTYPE html>
<html>
<head>
	<title>Visualizza magazzino per tipologia</title>
</head>
<body>
<form action="cerca_go.php" method="get">
<p>
	<p>Quale categoria vuoi visualizzare?</p><br>
	<label for ="categoria" id ="categoria">Categoria: </label> 
	<select  name="categoria">
	<?php elenco_categorie($db); ?>
	<option id='categoria'>TUTTI I REPARTI</option>
	</select>
	<br>
	<input type="submit" value="Visualizza">
</p>
<?php mysql_close($connessione); ?>
</body>
