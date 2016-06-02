<?php

return array(
    'default-connection' => 'concrete',
    'connections' => array(
        'concrete' => array(
            'driver' => 'c5_pdo_mysql',
            'server' => 'localhost',
            'database' => 'BASE_DE_DATOS',
            'username' => 'USUARIO_DB',
            'password' => 'PASS_DB',
            'charset' => 'utf8',
        ),
    ),
);

