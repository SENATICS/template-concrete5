<?php
return array(
    'default-connection' => 'concrete',
    'connections' => array(
        'concrete' => array(
            'driver' => 'c5_pdo_mysql',
            'server' => 'localhost',
            'database' => 'NOMBRE_DB',
            'username' => 'USUARIO_DB',
            'password' => 'PASS_DB',
            'charset' => 'utf8',
	    'driverOptions' => array(
                   1002=>'SET NAMES utf8')
        ),
    ),
);
