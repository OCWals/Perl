<!DOCTYPE html>
<html>
<head>
	<title>test</title>
</head>
<body>
	<?php

		$test = null;
		$test2 = 'xxxx';


		if ($test) {
			echo '$test est defini.<br><br>';
		}

		if (!$test) {
			echo '$test n\'est pas defini.<br><br>';
		}


		if ($test2) {
			echo '$test2 est defini.<br><br>';
		}

		if (!$test2) {
			echo '$test2 n\'est pas defini.<br><br>';
		}
	?>	
</body>
</html>