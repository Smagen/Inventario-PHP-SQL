<html>
<?php
	include 'connessione.php';
	$prodotto = mysql_real_escape_string($_POST['prodotto'],$connessione);
	$quantita = mysql_real_escape_string($_POST['quantita'],$connessione);
	$categoria = mysql_real_escape_string($_POST['categoria'],$connessione);
	$categoria = str_replace(' ', '', $categoria);
	$prodotto = ucfirst(strtolower($prodotto)); //tutto minuscolo con la prima lettera maiuscola
	
	$sql = "INSERT INTO $db.`$categoria` (Prodotto, Quantita) VALUES ('$prodotto', '$quantita')";
	if (mysql_query($sql))
		echo "Inserito con successo";
	else
		echo "Errore" . mysql_error($connessione);
	mysql_close($connessione);
?>
</html>