<?php
$parameters = array_filter([
    'database_host' => getenv('DATABASE_HOST'),
    'database_name' => getenv('DATABASE_NAME'),
    'database_user' => getenv('DATABASE_USER'),
    'database_password' => getenv('DATABASE_PASSWORD'),
    'secret' => getenv('SYMFONY_SECRET')
]);

foreach ($parameters as $key => $value) {
    $container->setParameter($key, $value);
}
