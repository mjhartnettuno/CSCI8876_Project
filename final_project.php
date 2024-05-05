<!DOCTYPE html>

<html>
<body>

<!-- NBS Header -->
<h1>Welcome to the NBS conditions database!</h1>

<!-- Collect input from the web user -->
<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
  Enter the condition you are looking for: <input type="text" name="condition">
  <input type="submit">
</form>

<?php
$condition = "empty";
/*Process input from web user */
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // collect value of input field
    $condition = $_POST['condition'];
    echo "<br>";
    if (empty($condition)) {
        echo "No condition was provided. Unable to process request";
    } else {
        echo "Condition provided was $condition.<br>";
    }
}

$server="localhost";
$username="mhartnett";
$password="";
$database="mhartnett";

/*Connect to my database
 * and throw errors if its unable to connect.
 */
$connect = mysqli_connect($server,$username,"",$database);

if($connect->connect_error){
	echo "Something has gone awry";
	echo "Connection error:" .$connect->connect_error;
}

/* Run a basic SQL query and throw
 * an error if its unable to perform the query
 */
$query = "SELECT * FROM nbsConditions WHERE 
	  condition_name = \"". $condition . "\"";
$result = mysqli_query($connect, $query)
	  or trigger_error("Query Failed! SQL: $query - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

/*If there are results from the query, print the 0th
 * token from the result relation. If there are no
 * results, output an empty string.
 */
if ($result = mysqli_query($connect, $query)) {
	echo "<br>NBS information for $condition was: <br>";
	while ($row = mysqli_fetch_assoc($result)) {
		foreach ($row as $key => $value) {
			echo "$key: $value<br>";
		}
    }
    mysqli_free_result($result);
}else{
	echo "No results";
}

/*Close your connection.
 */
mysqli_close($connect);
?>
</body>
</html>
