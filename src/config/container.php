<?php

$app = new Silex\Application;

$app['foo'] = 'bar';

$app->get('something', function(Silex\Application $app) {
    return 'something else ' . $app['foo'];
});

return $app;
