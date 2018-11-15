<?php
/**
 * Created by Joe of ExchangeCore.com
 */

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
 
try {
	//$params = json_decode(file_get_contents('php://input'));
	
    $username = $_GET['username'];
    $password = $_GET['password'];
    /*
	$username = $params['username'];
    $password = $params['password'];*/
    
    $response = array();
	
    if(isset($username) && isset($password)){

        $adServer = "ldap://IN01-MK-DC-01.mattsenkumar.com";
		$ldap = ldap_connect($adServer);

        $ldaprdn =$username.'@mattsenkumar.com';

        ldap_set_option($ldap, LDAP_OPT_PROTOCOL_VERSION, 3);
        ldap_set_option($ldap, LDAP_OPT_REFERRALS, 0);

        $bind = @ldap_bind($ldap, $ldaprdn, $password);
	
        if ($bind) {
            
            $filter="(sAMAccountName=$username)";
            //$justthese = array("ou", "sn", "givenname", "mail");
            $result = ldap_search($ldap,"dc=MATTSENKUMAR,dc=COM",$filter);
            $info = ldap_get_entries($ldap, $result);

            for ($i=0; $i<$info["count"]; $i++){
                if($info['count'] > 1)
                break;
                
                $response['name'] = $info[$i]["cn"][0];
                $response['employeeid'] = $info[$i]["employeeid"][0];
                $response['mail'] = $info[$i]["mail"][0];
                $response['title'] = $info[$i]["title"][0];
                $response['department'] = $info[$i]["department"][0];
                $response['physicaldeliveryofficename'] = $info[$i]["physicaldeliveryofficename"][0];
                
            }
            @ldap_close($ldap);
        } else {
            $response["error"] = "Username or password is wrong!";
            $response["errorCode"] = 409;
        }
    }else {
        // Bad request
        $response["error"] = "Bad request";
        $response["errorCode"] = 400;
    }
} catch (Exception $ex) {
    $response["error"] = "Something went wrong! Please try again";
    $response["errorCode"] = 404;
}
echo json_encode($response);