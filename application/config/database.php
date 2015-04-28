<?php

return array(
    'default-connection' => 'concrete',
    'connections' => array(
        'concrete' => array(
            'driver' => 'c5_pdo_mysql',
            'server' => 'host_db', 
            'database' => 'db_name',
            'username' => 'user_db',
            'password' => 'pass_db',
            'charset' => 'utf8'
        )
    )
);
