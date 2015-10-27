<?php

return array(
    'default-connection' => 'concrete',
    'connections' => array(
        'concrete' => array(
            'driver' => 'c5_pdo_mysql',
            'server' => 'localhost',
            'database' => 'concrete_template',
            'username' => 'concrete_tp',
            'password' => 'p4ssw0rd',
            'charset' => 'utf8',
	    'driverOptions' => array(
                   1002=>'SET NAMES utf8')
        ),
    ),
);
