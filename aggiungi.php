<?php include 'funzioni.php'; ?>
<html>
<head>
	<title>Aggiungi un nuovo oggetto</title>
</head>
<body>
	<form action="aggiungi_go.php" method="post">
		<p>
			<label for ="prodotto">Nome prodotto: </label><br><input type="text" name="prodotto" id="prodotto" placeholder="Prodotto(Unit&agrave; di misura)" required/> 
		</p>
		<p>
			<label for ="categoria">Categoria:<br></label> 
			<select  name="categoria">
			<?php elenco_categorie($db); ?>
			</select>
		</p>
		<p>
			<label for ="quantita">Quantit&agrave;:<br></label> <input type="text" name="quantita" id="quantita" placeholder="Utilizza la virgola per i decimali" required> 
		</p>
		<p>
			<input type="submit" name="Aggiungi">
		</p>
	</form>
</body>

<?php mysql_close($connessione);?> 
</html>