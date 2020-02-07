<?php 

// $host = 'localhost';
// $user = 'id12160516_restaurant';
// $password ='123456789p';
// $db = 'id12160516_restaurant';


// $con = mysqli_connect($host,$user,$password,$db);


// if (!$con) {
	
// 	die("Error in Connection".mysqli_error());
// }else
// {
// 	echo "Succesfuly Connected";
// }


// if (isset($_POST['submit'])) 
// {

// 	if(isset($_POST['tableno']) && isset($_POST['food']) && isset($_POST['fprice']) && isset($_POST['quantity']))
// 	{
// 	    $tableno = $_POST['tableno'];
//  	$food = $_POST['food'];
//  	$fprice = $_POST['fprice'];
//  	$quantity = $_POST['quantity'];

// 		if (!empty($tableno) && !empty($food) && !empty($fprice) && !empty($quantity)) 
// 		{
// 			$sql = "INSERT INTO `Customers`( `tableno`, `food`, `fprice`, `quantity`) VALUES ('$tableno', '$food', '$fprice', '$quantity')";


// 			if (mysqli_query($con,$sqli)) {
				
// 				echo "<br><h4>Ordered Successfully...</h4>";
// 			}
// 			else
// 			{
// 				echo "Something Went Wrong..".mysqli_error($con);
// 			}
// 		}
// }

// }


$tableno = '';
$food= $fprice = $quantity= '';

if(isset($_GET)){
	$tableno = $_GET['tableno'];
	$food = $_GET['food'];
	$fprice = $_GET['fprice'];
	$quantity = $_GET['quantity'];
}

if(!empty($tableno) && !empty($food) && !empty($fprice) && !empty($quantity)){
	
	define('DB_HOST', 'localhost');
	 define('DB_USER', 'id12160516_restaurant');
	 define('DB_PASS', '123456789p');
	 define('DB_NAME', 'id12160516_restaurant');

	  $response = array();
	  
	  $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
	  if (mysqli_connect_errno()){
	 	echo "Failed to connect to MySQL: " . mysqli_connect_error();
	 	die();
	  }else{
	  		$sql = "INSERT INTO `Customers`(`id`, `tableno`, `food`, `fprice`, `quantity`) VALUES (null,'$tableno', '$food', '$fprice', '$quantity')";
	  		$query = mysqli_query($conn,$sql);
	  		if($query){
	  		
	  		$status ="ok";
	  		echo json_encode(array("response"=>$status));
	  		}else{
	  		$status = "error";
	  		
	  		}
	  	
	  }
	  	echo json_encode(array("response"=>$status));
}

?>

