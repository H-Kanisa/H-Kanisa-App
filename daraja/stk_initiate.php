    <?php
session_start();
error_reporting(0);

if(isset($_POST['submit'])){
header("Content-Type:application/json");


$phone=$_POST['phone'];
$amount=$_POST['amount'];

date_default_timezone_set('Africa/Nairobi');
$config = array(
    "env"              => "live",
    "BusinessShortCode"=> "795194",
    "key"              => "MGSTi2E0vYJ162VnIvCKV6PVxQTaQfP6", //Enter your consumer key here
    "secret"           => "cbJSrMvF5q6Z62U1", //Enter your consumer secret here
    "username"         => "apitest",
    "TransactionType"  => "CustomerPayBillOnline",
    "passkey"          => "6f7e9867e9d4270fda43b402e5df638b09ff659d2994527f5d1181ad37a51376", //Enter your passkey here
    "CallBackURL"     => "https://mydomain.com/TransactionStatus/response",
    "AccountReference" => "P75",
    "TransactionDesc"  => "Payment of LASL" ,
);


    $phone = "$phone";
    $amount = "$amount";

    $phone = (substr($phone, 0, 1) == "+") ? str_replace("+", "", $phone) : $phone;
    $phone = (substr($phone, 0, 1) == "0") ? preg_replace("/^0/", "254"
    , $phone) : $phone;
    $phone = (substr($phone, 0, 1) == "7") ? "254{$phone}" : $phone;

    $access_token = ($config['env']  == "live") ? "https://api.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials" : "https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials"; 
    $credentials = base64_encode($config['key'] . ':' . $config['secret']); 
    
    $ch = curl_init($access_token);
    curl_setopt($ch, CURLOPT_HTTPHEADER, ["Authorization: Basic " . $credentials]);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
    $response = curl_exec($ch);
    curl_close($ch);
    $result = json_decode($response); 
    $token = isset($result->{'access_token'}) ? $result->{'access_token'} : "N/A";

    $timestamp = date("YmdHis");
    $password  = base64_encode($config['BusinessShortCode'] . "" . $config['passkey'] ."". $timestamp);

    $curl_post_data = array( 
        "BusinessShortCode" => $config['BusinessShortCode'],
        "Password" => $password,
        "Timestamp" => $timestamp,
        "TransactionType" => $config['TransactionType'],
        "Amount" => $amount,
        "PartyA" => $phone,
        "PartyB" => $config['BusinessShortCode'],
        "PhoneNumber" => $phone,
        "CallBackURL" => $config['CallBackURL'],
        "AccountReference" => $config['AccountReference'],
        "TransactionDesc" => $config['TransactionDesc'],
    ); 

    $data_string = json_encode($curl_post_data);

    $endpoint = ($config['env'] == "live") ? "https://api.safaricom.co.ke/mpesa/stkpush/v1/processrequest" : "https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest"; 

    $ch = curl_init($endpoint );
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        'Authorization: Bearer '.$token,
        'Content-Type: application/json'
    ]);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    $response     = curl_exec($ch);
    echo $curl_response;

    //curl_close($ch);

    $result = json_decode($response); 
    
    $stkpushed = $result->{'ResponseCode'};


    
    if($stkpushed === "0"){
        echo $result->{'ResponseDescription'};
        header("Location: callback_url.php");
    }else{
        echo $result->{'errorMessage'};
        header("Location: bad_request.php?phone=$phone&&amount=$amount");
    }


};
?>
