<?php
/* 
 * connect DB
 */
class Connect {
    private $_config;
    public $connection;

    public function __construct() {
        $this->_config = [
            'host'     => 'localhost',
            'db_name'  => 'nihongo',
            'user'     => 'root',
            'password' => '123456'
        ];
        $this->connect();
    }

    public function connect() {
        $config = $this->_config;

        if (!$this->connection) {
            $this->connection = new \PDO('mysql:host=' . $config['host'] . ';dbname=' . $config['db_name'] . ';charset=utf8', $config['user'], $config['password']);
            $this->connection->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        }
        return TRUE;
    }

    public function disconnect() {
        if ($this->connection) {
            $this->connection = NULL;
        }
        return TRUE;
    }

    final function __destruct() {
        $this->disconnect();
    }

    public function execute($sql, $params = NULL) {
        try {
            // Connect to Database
            $con = $this->connection;

            $result = $con->prepare($sql);
            if (!$result) {
                // TODO throw error
                throw new \Exception('error_db');
            }
            $result->execute($params);
            return $result;
        }
        catch (\PDOException $e) {
//            $this->connection->rollback();
            throw new \Exception($e);
        }
    }
}