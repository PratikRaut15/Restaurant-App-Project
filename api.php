<?php


 define('DB_HOST', 'localhost');
 define('DB_USER', 'id12160516_restaurant');
 define('DB_PASS', '123456789p');
 define('DB_NAME', 'id12160516_restaurant');

// $serverName = "files.000webhost.com"; //serverName\instanceName
// $connectionInfo = array( "Database"=>"id12160516_foods", "UID"=>"id12160516_123456789p", "PWD"=>"123456789p");
// $conn = sqlsrv_connect( $serverName, $connectionInfo);

  $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
  //$conn = mysqli_connect("localhost","encased-locations","123456789p","id12160516_foods");

  if (mysqli_connect_errno()) 
  {
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
 die();
 }

 // $stmt = $conn->prepare("SELECT tableno,items,quantity,price FROM fooditems");
$stmt = $conn->prepare("SELECT items,price FROM `foodlist`");
 $stmt->execute();

 $stmt->bind_result($tm,$pr);

$itmesfood = array();

 while($stmt->fetch()){
 $temp = array();
 $temp['items'] =$tm;
 $temp['price']=$pr;

 array_push($itmesfood, $temp);
 }
 // array(var_dump($temp));
// var_dump(array($temp));
//var_dump(deserialize($temp));
echo json_encode(array('itemsr'=>$itmesfood));
 	
 
?>
