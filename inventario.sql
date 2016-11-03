-- --------------------------------------------------------
-- Host:                         192.168.1.220
-- Versione server:              10.1.16-MariaDB - mariadb.org binary distribution
-- S.O. server:                  Win32
-- HeidiSQL Versione:            9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dump della struttura del database inventario
CREATE DATABASE IF NOT EXISTS `inventario` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `inventario`;

-- Dump della struttura di tabella inventario.amidi-addensanti-coloranti-lieviti
CREATE TABLE IF NOT EXISTS `amidi-addensanti-coloranti-lieviti` (
  `Prodotto` varchar(50) NOT NULL,
  `Quantita` float unsigned NOT NULL DEFAULT '0',
  `Categoria` varchar(50) NOT NULL DEFAULT 'Amidi - Addensanti - Coloranti - Lieviti'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dump dei dati della tabella inventario.amidi-addensanti-coloranti-lieviti: ~13 rows (circa)
/*!40000 ALTER TABLE `amidi-addensanti-coloranti-lieviti` DISABLE KEYS */;
INSERT INTO `amidi-addensanti-coloranti-lieviti` (`Prodotto`, `Quantita`, `Categoria`) VALUES
	('Amido di mais (Kg)', 28, 'Amidi - Addensanti - Coloranti - Lieviti'),
	('\r\nAmido di riso (g)', 1, 'Amidi - Addensanti - Coloranti - Lieviti'),
	('\r\nCol. Azzurro (vasetti)', 2, 'Amidi - Addensanti - Coloranti - Lieviti'),
	('\r\nCol. Giallo (vasetti)', 15.5, 'Amidi - Addensanti - Coloranti - Lieviti'),
	('\r\nCol. Rosso ciliegia (tubetti)', 27.2, 'Amidi - Addensanti - Coloranti - Lieviti'),
	('\r\nCol. Rosso fragola (g)', 2.1, 'Amidi - Addensanti - Coloranti - Lieviti'),
	('\r\nCol. Verde menta (g)', 18, 'Amidi - Addensanti - Coloranti - Lieviti'),
	('\r\nFecola di patate (g)', 13, 'Amidi - Addensanti - Coloranti - Lieviti'),
	('\r\nGelatina in fogli (g)', 0, 'Amidi - Addensanti - Coloranti - Lieviti'),
	('\r\nGelatine titanio (scotole)', 0, 'Amidi - Addensanti - Coloranti - Lieviti'),
	('\r\nLievito di birra (bustine)', 1, 'Amidi - Addensanti - Coloranti - Lieviti'),
	('\r\nLievito vanigliato (bustine)', 2, 'Amidi - Addensanti - Coloranti - Lieviti'),
	('\r\nPectina (g)', 3, 'Amidi - Addensanti - Coloranti - Lieviti');
/*!40000 ALTER TABLE `amidi-addensanti-coloranti-lieviti` ENABLE KEYS */;

-- Dump della struttura di tabella inventario.cioccolato-paste
CREATE TABLE IF NOT EXISTS `cioccolato-paste` (
  `Prodotto` varchar(50) NOT NULL,
  `Quantita` float unsigned NOT NULL DEFAULT '0',
  `Categoria` varchar(50) NOT NULL DEFAULT 'Cioccolato - Paste'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dump dei dati della tabella inventario.cioccolato-paste: ~9 rows (circa)
/*!40000 ALTER TABLE `cioccolato-paste` DISABLE KEYS */;
INSERT INTO `cioccolato-paste` (`Prodotto`, `Quantita`, `Categoria`) VALUES
	('Cioccolato surrogato (Kg)', 0, 'Cioccolato - Paste'),
	('\r\nGocce di cioccolato al latte (Kg)', 4.6, 'Cioccolato - Paste'),
	('\r\nGocce di cioccolato bianco (Kg)', 0.72, 'Cioccolato - Paste'),
	('\r\nGocce di cioccolato fondente  (Kg)', 3.36, 'Cioccolato - Paste'),
	('\r\nGocce di cioccolato puro (Kg)', 0.62, 'Cioccolato - Paste'),
	('\r\nPassata di albicocche (bidoni)', 1, 'Cioccolato - Paste'),
	('\r\nPasta di arachidi (g)', 200, 'Cioccolato - Paste'),
	('\r\nPasta di nocciole (bidoni)', 1, 'Cioccolato - Paste'),
	('\r\nPasta di pistacchio (g)', 560, 'Cioccolato - Paste');
/*!40000 ALTER TABLE `cioccolato-paste` ENABLE KEYS */;

-- Dump della struttura di tabella inventario.farinacei-barattolame
CREATE TABLE IF NOT EXISTS `farinacei-barattolame` (
  `Prodotto` varchar(50) NOT NULL,
  `Quantita` float unsigned NOT NULL DEFAULT '0',
  `Categoria` varchar(50) NOT NULL DEFAULT 'Farinacei - Barattolame'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dump dei dati della tabella inventario.farinacei-barattolame: ~58 rows (circa)
/*!40000 ALTER TABLE `farinacei-barattolame` DISABLE KEYS */;
INSERT INTO `farinacei-barattolame` (`Prodotto`, `Quantita`, `Categoria`) VALUES
	('Anelletti (Kg)', 1, 'Farinacei - Barattolame'),
	('\r\nCeci italiani (barattoli)', 1, 'Farinacei - Barattolame'),
	('\r\nCeci lessati (barattoli)', 4, 'Farinacei - Barattolame'),
	('\r\nCeci secchi (Kg)', 1, 'Farinacei - Barattolame'),
	('\r\nConcentrato di pomodori (Kg)', 2, 'Farinacei - Barattolame'),
	('\r\nConchiglioni Garofalo (Kg)', 0.5, 'Farinacei - Barattolame'),
	('\r\nCous Cous Garofalo (Kg)', 1, 'Farinacei - Barattolame'),
	('\r\nGermogli di soia', 1, 'Farinacei - Barattolame'),
	('\r\nLenticchie lessate (barattoli)', 1, 'Farinacei - Barattolame'),
	('\r\nMaccheroni Molisani (Kg)', 0.18, 'Farinacei - Barattolame'),
	('\r\nPancarré (pacchi)', 1, 'Farinacei - Barattolame'),
	('\r\nPangrattato senza glutine (g)', 0, 'Farinacei - Barattolame'),
	('\r\nPappardelle all\'uovo Barilla (Kg)', 0.5, 'Farinacei - Barattolame'),
	('\r\nPelato (barattoli)', 2, 'Farinacei - Barattolame'),
	('\r\nPenne di mais (Kg)', 0.5, 'Farinacei - Barattolame'),
	('\r\nPenne lisce Barilla (Kg)', 0.62, 'Farinacei - Barattolame'),
	('\r\nPenne rigate Rummo (Kg)', 0.5, 'Farinacei - Barattolame'),
	('\r\nPiselli (barattoli)', 2, 'Farinacei - Barattolame'),
	('\r\nPomodori pelati (barattoli)', 1, 'Farinacei - Barattolame'),
	('\r\nReginette Barilla (Kg)', 1, 'Farinacei - Barattolame'),
	('\r\nRiso Arborio (Kg)', 5, 'Farinacei - Barattolame'),
	('\r\nRiso Carnaroli (Kg)', 0.27, 'Farinacei - Barattolame'),
	('\r\nRiso originario (Kg)', 5, 'Farinacei - Barattolame'),
	('\r\nRiso parboiled (Kg)', 5, 'Farinacei - Barattolame'),
	('\r\nRiso Venere (Kg)', 0.28, 'Farinacei - Barattolame'),
	('\r\nSalsa pronta (bottiglie)', 1, 'Farinacei - Barattolame'),
	('\r\nSchiaffoni Garofalo (Kg)', 0.28, 'Farinacei - Barattolame'),
	('\r\nSpaghetti di mais (Kg)', 0.18, 'Farinacei - Barattolame'),
	('\r\nSpaghetti N°12 De Cecco (Kg)', 2, 'Farinacei - Barattolame'),
	('Anelletti (Kg)', 1, 'Farinacei - Barattolame'),
	('\r\nCeci italiani (barattoli)', 1, 'Farinacei - Barattolame'),
	('\r\nCeci lessati (barattoli)', 4, 'Farinacei - Barattolame'),
	('\r\nCeci secchi (Kg)', 1, 'Farinacei - Barattolame'),
	('\r\nConcentrato di pomodori (Kg)', 2, 'Farinacei - Barattolame'),
	('\r\nConchiglioni Garofalo (Kg)', 0, 'Farinacei - Barattolame'),
	('\r\nCous Cous Garofalo (Kg)', 1, 'Farinacei - Barattolame'),
	('\r\nGermogli di soia', 1, 'Farinacei - Barattolame'),
	('\r\nLenticchie lessate (barattoli)', 1, 'Farinacei - Barattolame'),
	('\r\nMaccheroni Molisani (Kg)', 0, 'Farinacei - Barattolame'),
	('\r\nPancarré (pacchi)', 1, 'Farinacei - Barattolame'),
	('\r\nPangrattato senza glutine (g)', 0, 'Farinacei - Barattolame'),
	('\r\nPappardelle all\'uovo Barilla (Kg)', 0, 'Farinacei - Barattolame'),
	('\r\nPelato (barattoli)', 2, 'Farinacei - Barattolame'),
	('\r\nPenne di mais (Kg)', 0, 'Farinacei - Barattolame'),
	('\r\nPenne lisce Barilla (Kg)', 0, 'Farinacei - Barattolame'),
	('\r\nPenne rigate Rummo (Kg)', 0, 'Farinacei - Barattolame'),
	('\r\nPiselli (barattoli)', 2, 'Farinacei - Barattolame'),
	('\r\nPomodori pelati (barattoli)', 1, 'Farinacei - Barattolame'),
	('\r\nReginette Barilla (Kg)', 1, 'Farinacei - Barattolame'),
	('\r\nRiso Arborio (Kg)', 5, 'Farinacei - Barattolame'),
	('\r\nRiso Carnaroli (Kg)', 0, 'Farinacei - Barattolame'),
	('\r\nRiso originario (Kg)', 5, 'Farinacei - Barattolame'),
	('\r\nRiso parboiled (Kg)', 5, 'Farinacei - Barattolame'),
	('\r\nRiso Venere (Kg)', 0, 'Farinacei - Barattolame'),
	('\r\nSalsa pronta (bottiglie)', 1, 'Farinacei - Barattolame'),
	('\r\nSchiaffoni Garofalo (Kg)', 0, 'Farinacei - Barattolame'),
	('\r\nSpaghetti di mais (Kg)', 0, 'Farinacei - Barattolame'),
	('\r\nSpaghetti N°12 De Cecco (Kg)', 2, 'Farinacei - Barattolame');
/*!40000 ALTER TABLE `farinacei-barattolame` ENABLE KEYS */;

-- Dump della struttura di tabella inventario.farine
CREATE TABLE IF NOT EXISTS `farine` (
  `Prodotto` varchar(50) NOT NULL,
  `Quantita` float unsigned NOT NULL DEFAULT '0',
  `Categoria` varchar(50) NOT NULL DEFAULT 'Farine'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dump dei dati della tabella inventario.farine: ~8 rows (circa)
/*!40000 ALTER TABLE `farine` DISABLE KEYS */;
INSERT INTO `farine` (`Prodotto`, `Quantita`, `Categoria`) VALUES
	('Farina 00 (Kg)', 5.63, 'Farine'),
	('\r\nFarina di ceci (g)', 170, 'Farine'),
	('\r\nFarina di mais (g)', 690, 'Farine'),
	('\r\nFarina di mandorle (Kg)', 2.48, 'Farine'),
	('\r\nFarina di pistacchio (g)', 570, 'Farine'),
	('\r\nFarina di riso (Kg)', 1.53, 'Farine'),
	('\r\nRimacinata a pietra (g)', 600, 'Farine'),
	('\r\nRimacinata di grano duro (Kg)', 3.9, 'Farine');
/*!40000 ALTER TABLE `farine` ENABLE KEYS */;

-- Dump della struttura di tabella inventario.olii-bottiglie
CREATE TABLE IF NOT EXISTS `olii-bottiglie` (
  `Prodotto` varchar(50) NOT NULL,
  `Quantita` float unsigned NOT NULL DEFAULT '0',
  `Categoria` varchar(50) NOT NULL DEFAULT 'Olii e Bottiglie'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dump dei dati della tabella inventario.olii-bottiglie: ~6 rows (circa)
/*!40000 ALTER TABLE `olii-bottiglie` DISABLE KEYS */;
INSERT INTO `olii-bottiglie` (`Prodotto`, `Quantita`, `Categoria`) VALUES
	('Aceto Bianco (ml)', 500, 'Olii - Bottiglie'),
	('Aceto Balsamico (ml)', 300, 'Olii - Bottiglie'),
	('Aceto Balsamico (ml)', 300, 'Olii - Bottiglie'),
	('\r\nAceto Bianco (ml)', 500, 'Olii - Bottiglie'),
	('\r\nOlio di semi di girasole (l)', 5, 'Olii - Bottiglie'),
	('\r\nOlio d\'oliva (l)', 1, 'Olii - Bottiglie');
/*!40000 ALTER TABLE `olii-bottiglie` ENABLE KEYS */;

-- Dump della struttura di tabella inventario.orientale
CREATE TABLE IF NOT EXISTS `orientale` (
  `Prodotto` varchar(50) NOT NULL,
  `Quantita` float unsigned NOT NULL DEFAULT '0',
  `Categoria` varchar(50) NOT NULL DEFAULT 'Orientale'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dump dei dati della tabella inventario.orientale: ~17 rows (circa)
/*!40000 ALTER TABLE `orientale` DISABLE KEYS */;
INSERT INTO `orientale` (`Prodotto`, `Quantita`, `Categoria`) VALUES
	('Alga Nori Zampardi (fogli)', 40, 'Orientale'),
	('\r\nAceto di riso (bottiglie)', 1, 'Orientale'),
	('\r\nAlga marina (g)', 38, 'Orientale'),
	('\r\nAlga nori (fogli)', 18, 'Orientale'),
	('\r\nAlga wakame secca (g)', 56, 'Orientale'),
	('\r\nAngostura (bottiglie)', 1, 'Orientale'),
	('\r\nFagioli di soia in pasta (Kg)', 1, 'Orientale'),
	('\r\nNoodles di curry (g)', 360, 'Orientale'),
	('\r\nNoodles di grano (g)', 500, 'Orientale'),
	('\r\nNoodles di riso (g)', 250, 'Orientale'),
	('\r\nOlio di cocco  (barattoli)', 1, 'Orientale'),
	('\r\nOlio di sesamo (ml)', 200, 'Orientale'),
	('\r\nSake (ml)', 720, 'Orientale'),
	('\r\nSalsa di pesce (bottiglia)', 1, 'Orientale'),
	('\r\nSalsa di soia (l)', 1.1, 'Orientale'),
	('\r\nSalsa mirin (ml)', 400, 'Orientale'),
	('\r\nSalsa Teriyaki (ml)', 0, 'Orientale');
/*!40000 ALTER TABLE `orientale` ENABLE KEYS */;

-- Dump della struttura di tabella inventario.pasta-di-zucchero-decorazioni
CREATE TABLE IF NOT EXISTS `pasta-di-zucchero-decorazioni` (
  `Prodotto` varchar(50) NOT NULL,
  `Quantita` float unsigned NOT NULL DEFAULT '0',
  `Categoria` varchar(50) NOT NULL DEFAULT 'Pasta di Zucchero - Decorazioni'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dump dei dati della tabella inventario.pasta-di-zucchero-decorazioni: ~3 rows (circa)
/*!40000 ALTER TABLE `pasta-di-zucchero-decorazioni` DISABLE KEYS */;
INSERT INTO `pasta-di-zucchero-decorazioni` (`Prodotto`, `Quantita`, `Categoria`) VALUES
	('Mompariglia (Kg)', 1, 'Pasta di Zucchero - Decorazioni'),
	('\r\nPasta di zucchero bianca (Kg)', 0.78, 'Pasta di Zucchero - Decorazioni'),
	('\r\nPasta di zucchero nera (Kg)', 1.87, 'Pasta di Zucchero - Decorazioni');
/*!40000 ALTER TABLE `pasta-di-zucchero-decorazioni` ENABLE KEYS */;

-- Dump della struttura di tabella inventario.polveri-confetture-zuccheri
CREATE TABLE IF NOT EXISTS `polveri-confetture-zuccheri` (
  `Prodotto` varchar(50) NOT NULL,
  `Quantita` float unsigned NOT NULL DEFAULT '0',
  `Categoria` varchar(50) NOT NULL DEFAULT 'Polveri - Confetture - Zuccheri'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dump dei dati della tabella inventario.polveri-confetture-zuccheri: ~19 rows (circa)
/*!40000 ALTER TABLE `polveri-confetture-zuccheri` DISABLE KEYS */;
INSERT INTO `polveri-confetture-zuccheri` (`Prodotto`, `Quantita`, `Categoria`) VALUES
	('Burro di cacao in polvere (g)', 4300, 'Polveri - Confetture - Zuccheri'),
	('\r\nBurro di cacao solido (g)', 130, 'Polveri - Confetture - Zuccheri'),
	('\r\nCacao Perugina (g)', 520, 'Polveri - Confetture - Zuccheri'),
	('\r\nCaffè', 1, 'Polveri - Confetture - Zuccheri'),
	('\r\nCannella in polvere (g)', 740, 'Polveri - Confetture - Zuccheri'),
	('\r\nCocco grattuggiato (g)', 86, 'Polveri - Confetture - Zuccheri'),
	('\r\nConfettura di ciliegie', 2, 'Polveri - Confetture - Zuccheri'),
	('\r\nConfettura di pesche', 1, 'Polveri - Confetture - Zuccheri'),
	('\r\nGranella di pistacchio (g)', 900, 'Polveri - Confetture - Zuccheri'),
	('\r\nJoycacao (g)', 1000, 'Polveri - Confetture - Zuccheri'),
	('\r\nNocciole intere (g)', 250, 'Polveri - Confetture - Zuccheri'),
	('\r\nStecche di cannella', 2, 'Polveri - Confetture - Zuccheri'),
	('\r\nVaniglia in bacche', 4, 'Polveri - Confetture - Zuccheri'),
	('\r\nZucchero a velo (Kg)', 1.7, 'Polveri - Confetture - Zuccheri'),
	('\r\nZucchero alla cannella (g)', 230, 'Polveri - Confetture - Zuccheri'),
	('\r\nZucchero bianco (Kg)', 3.8, 'Polveri - Confetture - Zuccheri'),
	('\r\nZucchero bruno (g)', 400, 'Polveri - Confetture - Zuccheri'),
	('\r\nZucchero di canna grezzo (g)', 200, 'Polveri - Confetture - Zuccheri'),
	('\r\nZucchero grezzo (g)', 900, 'Polveri - Confetture - Zuccheri');
/*!40000 ALTER TABLE `polveri-confetture-zuccheri` ENABLE KEYS */;

-- Dump della struttura di tabella inventario.spezie
CREATE TABLE IF NOT EXISTS `spezie` (
  `Prodotto` varchar(50) NOT NULL,
  `Quantita` float unsigned NOT NULL DEFAULT '0',
  `Categoria` varchar(50) NOT NULL DEFAULT 'Spezie'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dump dei dati della tabella inventario.spezie: ~0 rows (circa)
/*!40000 ALTER TABLE `spezie` DISABLE KEYS */;
INSERT INTO `spezie` (`Prodotto`, `Quantita`, `Categoria`) VALUES
	('Aglio Polvere', 2, 'Spezie'),
	('\r\nAnacardi (g)', 200, 'Spezie'),
	('\r\nBicarbonato (g)', 410, 'Spezie'),
	('\r\nCapperi (barattoli)', 1, 'Spezie'),
	('\r\nChiodi di garofano', 1, 'Spezie'),
	('\r\nCipolla in fiocchi', 1, 'Spezie'),
	('\r\nConcentrato di pomodoro (tubetti)', 1, 'Spezie'),
	('\r\nCoriandolo polvere (g)', 50, 'Spezie'),
	('\r\nCumino polvere (g)', 60, 'Spezie'),
	('\r\nCurcuma polvere', 1, 'Spezie'),
	('\r\nCurry polvere', 1, 'Spezie'),
	('\r\nErbe aromatiche arrosto', 3, 'Spezie'),
	('\r\nGaram masala (g)', 60, 'Spezie'),
	('\r\nMenta foglie', 1, 'Spezie'),
	('\r\nMiele (vasetti)', 1, 'Spezie'),
	('\r\nNoce moscata polvere', 4, 'Spezie'),
	('\r\nOlio al peperoncino', 0, 'Spezie'),
	('Origano foglie (g)', 70, 'Spezie'),
	('\r\nPanna (g)', 500, 'Spezie'),
	('\r\nPaprika dolce polvere', 2, 'Spezie'),
	('\r\nPepe bianco grani', 1, 'Spezie'),
	('\r\nPepe nero grani', 1, 'Spezie'),
	('\r\nPepe rosa grani', 1, 'Spezie'),
	('\r\nPeperoncino intero', 1, 'Spezie'),
	('\r\nPinoli (bustine)', 2, 'Spezie'),
	('\r\nRosmarino foglie', 2, 'Spezie'),
	('\r\nSalvia foglie', 2, 'Spezie'),
	('\r\nSemi di coriandolo', 2, 'Spezie'),
	('\r\nSemi di papavero', 1, 'Spezie'),
	('\r\nSemi vari (g)', 197, 'Spezie'),
	('\r\nSesamo (g)', 120, 'Spezie'),
	('\r\nTabasco', 0, 'Spezie'),
	('Timo foglie', 1, 'Spezie'),
	('\r\nUva passa (bustine)', 1, 'Spezie'),
	('\r\nUva sultanina (g)', 240, 'Spezie'),
	('\r\nZafferano (bustine)', 13, 'Spezie'),
	('\r\nZenzero polvere', 2, 'Spezie'),
	('\r\nZucchero di canna (g)', 60, 'Spezie');
/*!40000 ALTER TABLE `spezie` ENABLE KEYS */;


-- Dump della struttura del database utenti
CREATE DATABASE IF NOT EXISTS `utenti` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `utenti`;

-- Dump della struttura di tabella utenti.users
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dump dei dati della tabella utenti.users: ~0 rows (circa)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`username`, `password`) VALUES
	('admin', '1234');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
