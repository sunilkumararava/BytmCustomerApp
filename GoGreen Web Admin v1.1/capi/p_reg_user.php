<?php 
require dirname( dirname(__FILE__) ).'/include/dbconfig.php';
require dirname( dirname(__FILE__) ).'/include/Common.php';
$data = json_decode(file_get_contents('php://input'), true);
if($data['fname'] == '' or $data['email'] == '' or $data['mobile'] == '' or $data['lname']==''  or $data['password'] == '' or $data['ccode'] == '')
{
    $returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Something Went Wrong!");
}
else
{
    
    $fname = strip_tags(mysqli_real_escape_string($mysqli,$data['fname']));
    $email = strip_tags(mysqli_real_escape_string($mysqli,$data['email']));
    $mobile = strip_tags(mysqli_real_escape_string($mysqli,$data['mobile']));
	$ccode = strip_tags(mysqli_real_escape_string($mysqli,$data['ccode']));
    $lname = strip_tags(mysqli_real_escape_string($mysqli,$data['lname']));
     $password = strip_tags(mysqli_real_escape_string($mysqli,$data['password']));
     
     
     
    $checkmob = $mysqli->query("select * from tbl_user where mobile=".$mobile."");
    $checkemail = $mysqli->query("select * from tbl_user where email='".$email."'");
   
    if($checkmob->num_rows != 0)
    {
        $returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Mobile Number Already Used!");
    }
     else if($checkemail->num_rows != 0)
    {
        $returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Email Address Already Used!");
    }
    else
    {
       
        $timestamp = date("Y-m-d H:i:s");
        
		$table="tbl_user";
  $field_values=array("fname","lname","email","mobile","rdate","password","ccode");
  $data_values=array("$fname","$lname","$email","$mobile","$timestamp","$password","$ccode");
  
      $h = new Common();
	  $check = $h->InsertData_Api_Id($field_values,$data_values,$table);
	  
 $c = $mysqli->query("select * from tbl_user where id=".$check."")->fetch_assoc();
    
        $returnArr = array("UserLogin"=>$c,"ResponseCode"=>"200","Result"=>"true","ResponseMsg"=>"Sign Up Done Successfully!");
    }
    
    
}

echo json_encode($returnArr);