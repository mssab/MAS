<?php

class ConnectionInfo
{
	public $mServerName;
	public $mConnectionInfo;
	public $conn;
	
	public function GetConnection()
	{
		$this->mServerName = 'localhost';
		$this->mConnectionInfo = array("Database"=>"vodafone", "UID"=>"GateMaster", "PWD"=>"p3Ts4r7V");
		$this->conn = sqlsrv_connect($this->mServerName,$this->mConnectionInfo);
		
		return $this->conn;
	}
}
?>