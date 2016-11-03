<!DOCTYPE html>
<html><body>
<form action="carico_go.php" method="post">
<?php
	include 'funzioni.php';
	mysql_select_db($db_users) or die ("Impossibile trovare la tabella utenti");
	$username = strtolower(mysql_real_escape_string($_POST["username"]));
	$password = strtolower(mysql_real_escape_string($_POST["password"]));
	$categoria = mysql_real_escape_string($_POST["categoria"]);
	$categoria_parsed = strtolower(str_replace('---', '-', str_replace(' ', '-', $categoria)));

	$sql_login = "SELECT * FROM `$db_users`.users WHERE username='$username'  AND password='$password'";
	mysql_query($sql_login) or DIE('Username o Password errati. Ricontrolla e riprova!');
	mysql_select_db($db);
	echo "<h1>$categoria</h1>\n";
	echo "<input type='hidden' name='categoria' value=\"$categoria_parsed\"/>";

?>

Seleziona il prodotto: <select name='prodotto'>

<?php elenco_prodotti ($categoria); ?></select>
</p>
<br>
Seleziona la quantità da caricare: <input type="text" type="number" name="quantita" min="0.0" required />
<br>
<input type="submit" value="Esegui Carico">

</form>
</body></html>