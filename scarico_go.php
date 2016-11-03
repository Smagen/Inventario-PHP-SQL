<!DOCTYPE html>
<html>
<body>
<?php
	include 'funzioni.php';
	$categoria_parsed = mysql_real_escape_string($_POST['categoria']);
	$prodotto = mysql_real_escape_string($_POST['prodotto']);
	$prodotto = str_replace('(', '%', str_replace(')', '%', str_replace(' ', '%',$prodotto)));
	$quantita = (float)mysql_real_escape_string($_POST['quantita']);

	$sql_aggiorna = "UPDATE $db.`$categoria_parsed` SET `Quantita`= Quantita - $quantita WHERE `Prodotto` LIKE '%".$prodotto."' LIMIT 1";
	mysql_query($sql_aggiorna) or die ("Impossibile aggiornare il valore!\n".mysql_error());
	echo "Fatto, la quantit&agrave; &egrave; diminuita di: $quantita";
	mysql_close($connessione);
?>
</body>
</html>