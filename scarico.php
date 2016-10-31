<!DOCTYPE html>
<html>
<form action="scarico_go.php" method="post">
<?php
	//session_start();
	include 'funzioni.php';
	mysql_select_db($db_users) or die ("Impossibile trovare la tabella utenti");
	//$_SESSION["username"]=$_POST["username"];
	//$_SESSION["password"]=$_POST["password"];
	$username = strtolower(mysql_real_escape_string($_POST["username"]));
	$password = strtolower(mysql_real_escape_string($_POST["password"]));
	$categoria = mysql_real_escape_string($_POST["categoria"]);
	
	$sql_login = "SELECT * FROM `$db_users`.users WHERE username='$username'  AND password=$password";
	mysql_query($sql_login) or DIE('Username o Password errati. Ricontrolla e riprova!');
	mysql_select_db($db);
	//echo "$categoria";
	echo "Seleziona il prodotto: <select>\n";
	elenco_prodotti ($categoria);
	echo '</select><br>Seleziona la quantità da scaricare: <input type="text" name="quantita"><br>';
	echo '<input type="submit" value="Esegui Scarico">';

?></form>