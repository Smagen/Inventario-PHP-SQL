<?php include 'funzioni.php'; ?>
<html>
<head>
	<title>Aggiungi un nuovo oggetto</title>
</head>
<body>
	<form action="inserisci.php" method="post">
		<p>
			<label for ="prodotto">Nome prodotto: </label> <input type="text" name="prodotto" id="prodotto"> 
		</p>
		<p>
			<label for ="categoria">Categoria: </label> 
			<select  name="categoria">
			<?php elenco_categorie($db); ?>
			</select>
		</p>
		<p>
			<label for ="quantita">Quantit&agrave;: </label> <input type="text" name="quantita" id="quantita"> 
		</p>
		<p>
			<input type="submit" name="Aggiungi">
		</p>
</body>

<?php mysql_close($connessione);?> 
</html>