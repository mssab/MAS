<?php
	require_once(dirname(__FILE__).'/ConnectionInfo.php');

	
if (isset($_POST['Name']) && isset($_POST['Number']))
{
	//Get the POST variables
	$mName = $_POST['Name'];
	$mNumber = $_POST['Number'];
	
	//Set up our connection
	$connectionInfo = new ConnectionInfo();
	$connectionInfo->GetConnection();
	
	if (!$connectionInfo->conn)
	{
		//Connection failed
		echo 'No Connection';
	}
	
	else
	{
		//Insert new contact into database
		$query = 'INSERT INTO Photobooth (Name, Email) where id=1 VALUES (?, ?)';
		$parameters = array($mName, $mNumber);

		//Execute query
		$stmt = sqlsrv_query($connectionInfo->conn, $query, $parameters);
		
		
		if (!$stmt)
		{	//The query failed
			echo 'Query Failed';	
			
		}
		
		else
		{
			//The query succeeded, now echo back the new contact ID
			$query = "SELECT Photobooth('Name') AS NewID";
			$stmt = sqlsrv_query($connectionInfo->conn, $query);
			
			$row = sqlsrv_fetch_array($stmt,SQLSRV_FETCH_ASSOC);
						
			echo $row['NewID'];	
		}
	}
}

?>