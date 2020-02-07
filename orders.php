<?php 

  if(isset($_GET['booktable'])){
   $tableNo = $_GET['booktable'];
   if(!empty($tableNo)){
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

            $sql_check = "SELECT tableNo from orders where tableNo = '$tableNo' and accept = 'Y' order by id desc LIMIT 8";
            $query_check = mysqli_query($conn,$sql_check);
            if($query_check->num_rows > 0){
              echo "<script> alert('order for $tableNo has already been accepted');</script>";

 
            }else{
              $sql = "INSERT INTO `orders` (`id`, `tableno`, `food_id`, `accept`, `date`) VALUES (NULL, '$tableNo', NULL, 'Y', NOW())";
              $query = mysqli_query($conn,$sql);
              if($query){
                echo "<script>  alert('order has been accepted');</script>";
              }
            }
            
             
          }


   }
  }


   if(isset($_GET['deletetable'])){
   $tableNo = $_GET['deletetable'];
   if(!empty($tableNo)){
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

            $sql_check = "delete from orders where tableNo = '$tableNo' and accept = 'Y'";
            $query_check = mysqli_query($conn,$sql_check);
            if($query_check){
                
                $sql = "delete from Customers where tableNo = '$tableNo'";
                $query = mysqli_query($conn,$sql);
                if($query){
                    echo "<script> alert('Order has been Finished');</script>";
                }

 
            }
            
             
          }


   }
  }
 ?>



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Admin Orders</title>

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
              <div class="col-md-2"></div>
              <div class="col-md-8">
                <h4><center>Orders </center></h4>
              
                <table class="table table-striped">
                    <tr>
                      <td>Sr .No</td>
                      <td>Table No</td>
                      <td>Food items</td>
                      <td>Order Status</td>
                      <td>Action</td>
                      <td>Checkout</td>
                    </tr>
                      <?php 

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
                        $sql = "select DISTINCT tableno FROM Customers ORDER by id DESC";
                        $query = mysqli_query($conn,$sql);
                        if(mysqli_num_rows($query)>0){
                          $i = 0;
                          $arrData = array();
                          $arrTemp = array();
                          $arrTables = array();
                          while ($res=mysqli_fetch_array($query)) {
                            $i++;
                            $arrTables[] = $res['tableno'];
                            //$tableno = $res['tableno'];
                            
                          }

                          // end while loop
                          $arrResult = array();

                          if(!empty($arrTables)){
                            foreach ($arrTables as $key => $value) {
                              $sql = "SELECT * FROM Customers where tableno = '$value' ";
                              $query = mysqli_query($conn,$sql);

                              if(mysqli_num_rows($query) > 0){

                                while ($res=mysqli_fetch_array($query)) {
                                  $data['food'] =  $res['food'];
                                  $data['price'] =  $res['fprice'];
                                  $data['quantity'] =  $res['quantity'];
                                  $data['tableno'] =  $res['tableno'];
                                  $arrData[$value][] = $data; 
                                 
                                }
                                
                              }
                            }
                          }
                         
                        } 
                      }

                      // echo "<pre>";
                      // print_r($arrData);
                         if(!empty($arrData)){
                          $i = 0;
                          foreach ($arrData as $tableno => $value):
                            $i++;
                            ?>
                              <tr>
                                  <td><?php echo $i; ?></td> 
                                  <td><?php echo $tableno; ?></td>
                                  <td>
                                     <?php 
                                         foreach ($value as $k => $v) {
                                          //print_r($v['tableno']);die;
                                            if(isset($v['tableno']) && $tableno == $v['tableno']){
                                              echo $v['food'].',';
                                            }
                                         }
                                     ?> 

                                  </td>
                                  <td>
                                   <b class="text-success">Preparing</b>
                                 </td>
                                   <td>
                                   <a class="btn btn-primary" href="orders.php?deletetable=<?php echo $tableno; ?>" name="action">Finish Order</a>
                                 </td>

                                  <td>
                                   <a class="btn btn-primary" href="generateBill.php?table=<?php echo $tableno; ?>" name="action">Checkout</a>
                                 </td>
                                 
                                </tr>
                              <?php endforeach;  ?>

                          <!--   //foreach ($tableno as $k => $v):
                              # code... -->
                            
                          
                        <?php }
                        ?>
                   
                   
                </table>
              </div>
              <div class="col-md-2"></div>
          </div>
        </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </body>
</html>