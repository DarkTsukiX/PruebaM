<?php
if ($_FILES['archivo']['error']> 0) {
	echo "Error: ". $_FILES['archivo']['error']. "<br>";
}else{
	echo "Nombre: ". $_FILES['archivo']['name']. "<br>";
	echo "Tipo: ". $_FILES['archivo']['type']. "<br>";
	echo "Tamaño". $_FILES['archivo']['size']. "<br>";
	echo "Carpeta: ". $_FILES['archivo']['tmp_name']. "<br>";

	move_uploaded_file($_FILES['archivo']['tmp_name'],"img/" .$_FILES['archivo']['name'] );
}
?>