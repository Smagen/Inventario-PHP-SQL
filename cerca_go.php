<?php include 'connessione.php';?>
<!DOCTYPE html>
<html>
<head>
	<title>Stato dell'inventario</title>
</head>
<body>
<?php
	$colore ="white";
	$intestazione = "<div><table border=1 style=\"table-layout:fixed; text-align:center;\"><tr><td>Nome</td><td>Quantit&agrave;</td><td>Categoria</td></tr>\n";
	$categoria = mysql_real_escape_string($_GET['categoria'],$connessione);
	$categoria = str_replace(' ', '-', $categoria);
	$categoria = str_replace('---', '-', $categoria);
	
	if ($categoria == "TUTTI-I-REPARTI") //mostra tutti gli elementi in magazzino
	{
		$nome_tabella = mysql_query("SELECT TABLE_NAME FROM information_schema.TABLES WHERE TABLE_SCHEMA = '$db' ORDER BY TABLE_NAME ASC") or DIE ("\nErrore nella ricerca delle tabelle!\n".mysql_error()); //ritorna la lista delle tabelle
		$riga = mysql_fetch_assoc($nome_tabella);
		
		while($riga)
		{
			echo $intestazione;
			$sql_prodotto = mysql_query("SELECT Prodotto,Quantita,Categoria FROM `$riga[TABLE_NAME]` ORDER BY Prodotto ASC") or DIE ("Impossibile recuperare elenco prodotti!\n".mysql_error());
			$id_prodotto = mysql_fetch_assoc($sql_prodotto);
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
		echo "$intestazione";
		$sql_prodotto = mysql_query("SELECT Prodotto,Quantita,Categoria FROM `$categoria` ORDER BY Prodotto ASC") or DIE ("Impossibile recuperare elenco prodotti!\n".mysql_error());
		$id_prodotto = mysql_fetch_assoc($sql_prodotto);
		while ($id_prodotto)
		{
			if ($id_prodotto["Quantita"] < 1.2) $colore="red";
			echo "<tr style=\"background-color:$colore\"><td>".$id_prodotto["Prodotto"].'</td><td>'.$id_prodotto["Quantita"].'</td><td>'.$id_prodotto["Categoria"]."</td></tr></div>\n";
			$colore="white";
			$id_prodotto = mysql_fetch_assoc($sql_prodotto);
		}
	}
?>	
</table></body>
<?php mysql_close($connessione); ?>
</html>
