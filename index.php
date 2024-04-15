<?
    require $_SERVER["DOCUMENT_ROOT"] . '/vendor/autoload.php';
    include $_SERVER["DOCUMENT_ROOT"] . "/php/config.php";
    include $_SERVER["DOCUMENT_ROOT"] . "/php/functions.php";

    db_connect();
    $meta_query = "SELECT column_name FROM INFORMATION_SCHEMA.COLUMNS WHERE table_schema='testdb' AND table_name='nl_prop_resale'";
    $meta_res = db_query($meta_query)->fetch_all();
    $query = "SELECT * FROM nl_prop_resale";
    $res = db_query($query)->fetch_all();
?>
<!doctype html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>TestDB</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="index.css">
</head>
<body class="testdb">
    <h1> nl_prop_resale table: </h1>
    <table >
    <?  
	echo "<tr>";
	foreach($meta_res as $key=>$value) {
	    echo "<th>" . $value[0] . "</th>";
	}
	echo "</tr>";
	foreach($res as $key=>$raw) {
	    echo "<tr>";
	    foreach($raw as $key1=>$value) {
		echo "<td>";
		if ($key1 == 4) {
		    $img_url = trim($value, "[]\"");
		    echo "<img src=\"" . $img_url . "\" alt=\"Picture\" width=300 height=300 >";
		} elseif ($key1 == 7){
		    $json = urldecode($value);
		    $lexer = new \nadar\quill\Lexer($json);
		    echo $lexer->render();
		} else {
		    echo $value;
		}
		echo "</td>";
	    }
	    echo "</tr>";
	}
    ?>
    </table>
</body>
</html>
