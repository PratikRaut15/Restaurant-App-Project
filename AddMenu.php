<?php if(isset($_POST['submit'])){

  $foodname = $_POST['foodname'];
  $price = $_POST['price'];
 define('DB_HOST1', 'localhost');
 define('DB_USER1', 'id12160516_restaurant');
 define('DB_PASS1', '123456789p');
 define('DB_NAME1', 'id12160516_restaurant');

    $response = array();
    
    $conn = new mysqli(DB_HOST1, DB_USER1, DB_PASS1, DB_NAME1);
     if (mysqli_connect_errno()){
      echo "Failed to connect to MySQL: " . mysqli_connect_error();
      die();
      }else{

       $sql = "INSERT INTO `foodlist`(`id`, `items`, `price`) VALUES (null,'$foodname','$price')";
        $query = mysqli_query($conn,$sql);
        if($query){
          echo "<script>  alert('Food has been Added');</script>";
        }

      }

} ?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Add Menu</title>

    <!-- Bootstrap -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    
  </head>
  <body>
    
            
        <nav class="navbar navbar-inverse">
          <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Barbeque Hut</a>
            </div>
        
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              
              
              <ul class="nav navbar-nav navbar-right">
                <li><a href="orders.php">Orders</a></li>
                <li><a href="AddMenu.php">Add Menu</a></li>
                <li><a href="menulist.php">Menu List</a></li>
               
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>

        <div class="row">
          <div class="container"> 
              <div class="col-md-4"></div>
              <div class="col-md-4">
                <h3><center>Add Menu </center></h3>
              <form method="post">
                <div class="form-group">
                  <label for="exampleInputEmail1">Food Name</label>
                  <input type="text" class="form-control" id="foodname" name="foodname" placeholder="Enter the Food Name">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Food price</label>
                  <input type="number" class="form-control"  id="price" name="price" placeholder="Enter the Food Price">
                </div>
               
                <button type="submit" name="submit"  id="submit" class="btn btn-primary">Submit</button>
              </form>              
              
              </div>
              <div class="col-md-4"></div>
          </div>
        </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


    <script type="text/javascript">
      $('#submit').click(function(){
        var foodname = $('#foodname').val();
        var price = $('#price').val();
        if(foodname == ""){
          alert("Please enter the Food Name");
          return false;
        }
         if(price == ""){
          alert("Please enter the Food price");
          return false;
        }
      });
    </script>
  </body>
</html>