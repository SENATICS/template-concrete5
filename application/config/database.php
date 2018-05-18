<?php

return array(
    'default-connection' => 'concrete',
    'connections' => array(
        'concrete' => array(
            'driver' => 'c5_pdo_mysql',
            'server' => 'localhost',
            'database' => 'NOMBRE_DB',
            'username' => 'USUARIO',
            'password' => 'CONTRASEÑA',
            'charset' => 'utf8',
        ),
    ),
);
