<?php
	$password_docente = "lapiramide123";
	$nomehost = "192.168.1.220";
	$user = "marco";
	$password = "lapiramide123";
	$db = "inventario";
	$connessione = mysql_connect($nomehost,$user,$password) or die ("Impossibile stabilire una connessione col database" . mysqli_connect_error());
	mysql_select_db($db) or die ("Impossibile trovare la tabella");
	mysql_set_charset('utf8',$connessione);
?>