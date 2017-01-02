<!DOCTYPE html>
<html lang="da-dk">
	<link rel="stylesheet" href="styles.css" />
<head>
</head>

<body>
	<h1>Todays news</h1>
	<?php
	/*opret forbindelse til databasen*/
		require 'connect.php';

		$link = connect();
		$resultset = mysqli_query ($link, "SELECT heading, text FROM Article"); 
		while($row = mysqli_fetch_assoc($resultset)) {
			?><h2 class='article'><?= $row['heading']; ?></h2>
			<div class='article'><?= $row['text']; ?></div>
		<?php
		}
	?>
	
	<h2>Respond to this article</h2>
	
<?php
	if($_SERVER['REQUEST_METHOD'] === "POST") {
			$stmt = mysqli_prepare($link, "INSERT INTO Comment (text, headline, article_id, user_id) VALUES (?,?,?,?)");
			mysqli_stmt_bind_param($stmt, 'ssii', $text, $headline, $articleId, $userId);
			$text = $_POST['comment'];
			$headline = 'headline for comment';
			$articleId = 0;
			$userId = 0;
			/* execute prepared statement */
			mysqli_stmt_execute($stmt);
			echo "<h3>Din kommentar er oprettet </h3><div>" . $text . "</div>";


	} else {
?>
	<form action="index.php" method="post">
		<textarea name="comment" style="width: 200px; height: 85px;" placeholder="Write your comment"></textarea><br>
		<input type="submit" value=" ok ">
	</form>

<?php
	}
?>
	<h2> Nyeste kommentar:</h2>
	<?php 
		$resultsetCmt = mysqli_query ($link, "SELECT headline, text FROM Comment ORDER BY date DESC"); 
		while($row = mysqli_fetch_assoc($resultsetCmt)) {
			?><h2 class='comment'><?= $row['headline']; ?></h2>
			<div class='comment'><?= $row['text']; ?></div><br>
		<?php
		}
	?>

</body>
	</html>
