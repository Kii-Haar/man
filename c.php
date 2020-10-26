<!DOCTYPE html>
<html>
<head>
<title>Manager V.1</title>
</head>
<?php if (isset($_GET['dir'])){$dir = $_GET['dir']."/";}else{$dir = "./";}$wrn = "style='color:green'";$hasil = scandir($dir);echo "<table>";foreach ($hasil as $has){if (is_dir($dir.$has)){if ($has != "." && $has != ".."){echo "<tr>";echo "<td><a ".$wrn." href=?dir=".$dir.$has.">".$has."</a></td>";echo "<td></td></tr>";}}else{echo "<tr>";echo "<td><a href=".$dir.$has.">".$has."</a></td>";echo "<td><a href=".$dir.$has." download=\'".$has."\'>Download</a></td></tr>";}} ?>

</html>
