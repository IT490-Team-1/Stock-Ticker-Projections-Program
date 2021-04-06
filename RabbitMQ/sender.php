<?php

require_once __DIR__ . '/vendor/autoload.php';
use PhpAmqpLib\Connection\AMQPStreamConnection;
use PhpAmqpLib\Message\AMQPMessage;

$connection = new AMQPStreamConnection('25.84.3.30', 5672, 'ragav', 'Murr1234$');
$channel = $connection->channel();

$channel->queue_declare('text1', false, false, false, false);

$msg = new AMQPMessage('Ragav');
$channel->basic_publish($msg, '', 'text1');

echo " [x] Sent 'Hello World!'\n";

$channel->close();
$connection->close();
?>
