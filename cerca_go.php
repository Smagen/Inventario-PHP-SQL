<?php include 'connessione.php';?>
<!DOCTYPE html>
<html>
<head>
	<title>Stato dell'inventario</title>
</head>
<body>
<?php
	$colore ="white";
	$categoria = mysql_real_escape_string($_GET['categoria'],$connessione);
	$categoria=strtolower(str_replace('---', '-', str_replace(' ', '-', $categoria)));
	
	if ($categoria == "TUTTI-I-REPARTI") //mostra tutti gli elementi in magazzino
	{
		$nome_tabella = mysql_query("SELECT TABLE_NAME FROM information_schema.TABLES WHERE TABLE_SCHEMA = '$db' ORDER BY TABLE_NAME ASC") or DIE ("\nErrore nella ricerca delle tabelle!\n".mysql_error()); //ritorna la lista delle tabelle
		$riga = mysql_fetch_assoc($nome_tabella);
		
		while($riga)
		{
			$sql_prodotto = mysql_query("SELECT Prodotto,Quantita,Categoria FROM `$riga[TABLE_NAME]` ORDER BY Prodotto ASC") or DIE ("Impossibile recuperare elenco prodotti!\n".mysql_error());
			$id_prodotto = mysql_fetch_assoc($sql_prodotto);

			$intestazione = '<div><table cellspacing=\'0\'><tr><th><h2>'."$id_prodotto[Categoria]"."</h2></th></tr><tr><th>Nome</th><th>Quantit&agrave;</th><th>Categoria</th></tr>\n";

			echo $intestazione;
			while ($id_prodotto)
			{
				if ($id_prodotto["Quantita"] < 1.2) $colore="red";
				echo "<tr style=\"background-color:$colore\"><td>".$id_prodotto["Prodotto"].'</td><td>'.$id_prodotto["Quantita"].'</td><td>'.$id_prodotto["Categoria"]."</td></tr></div>\n";
				$colore="white";
				$id_prodotto = mysql_fetch_assoc($sql_prodotto);
			}
			echo "</table></p>\n";
			$riga = mysql_fetch_assoc($nome_tabella);
		}
	} 
	else
	{
		$sql_prodotto = mysql_query("SELECT Prodotto,Quantita,Categoria FROM `$categoria` ORDER BY Prodotto ASC") or DIE ("Impossibile recuperare elenco prodotti!\n".mysql_error());
		$id_prodotto = mysql_fetch_assoc($sql_prodotto);
		$intestazione = '<div><table cellspacing=\'0\'><tr><th><h2>'."$id_prodotto[Categoria]"."</h2></th></tr><tr><th>Nome</th><th>Quantit&agrave;</th><th>Categoria</th></tr>\n";
		echo $intestazione;
		while ($id_prodotto)
		{
			if ($id_prodotto["Quantita"] < 1.2) $colore="red";
			echo "<tr style=\"background-color:$colore\"><td>".$id_prodotto["Prodotto"].'</td><td>'.$id_prodotto["Quantita"].'</td><td>'.$id_prodotto["Categoria"]."</td></tr></div>\n";
			$colore="white";
			$id_prodotto = mysql_fetch_assoc($sql_prodotto);
		}
	}
?>	
</table></div></body>
<?php mysql_close($connessione); ?>
</html>
