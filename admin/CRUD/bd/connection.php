<?php
class DbConnection
{
    public static function Connect()
    {
        $host = "localhost";
        $user = "root";
        $password = "";
        $bd = "gamereview";

        try {
            $connection = new mysqli($host, $user, $password, $bd);
            return $connection;
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
}
