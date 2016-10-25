<?php 
	include 'connessione.php';
	function elenco_categorie ($db)
	{
		$sql = mysql_query("SELECT TABLE_NAME FROM information_schema.TABLES WHERE TABLE_SCHEMA = '$db'") or DIE ("\nErrore nella ricerca delle tabelle!\n".mysql_error()); //ritorna la lista delle tabelle
		$riga = mysql_fetch_assoc($sql);
		while ($riga)
		{
			$nome_categoria = $riga['TABLE_NAME'];
			echo "<option id='categoria'>";
			$sql_nome = mysql_query("SELECT Categoria FROM `$riga[TABLE_NAME]` LIMIT 1") or DIE ("\nErrore nella ricerca delle categorie!\n".mysql_error()); //seleziona una categoria per tipo
			$nome_categoria = mysql_fetch_assoc($sql_nome);
			echo "$nome_categoria[Categoria]"."</option>\n";
			$riga = mysql_fetch_assoc($sql);
		}
	}

	function check_password ($x)
	{
		$x = mysql_real_escape_string ($x);
		if ($x != $password_docente)
		{
			echo "Password errata.";
		}
	}
?>

