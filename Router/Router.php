<?php

// paths
$router->get('/', function() {
    echo '<div style="text-align: center;width: 350px;margin: 50px auto;font-size: 25px;padding: 50px;box-shadow: 0 0 10px #dedede;border-radius: 5px;">
        Welcome To The Library <br><br>
        <a href="" title=""> See Doc In Github </a>
    </div>';
});

$router->get('/All', 'Books@index');

$router->get('/books', 'Books@books');

$router->get('/books/title/:title', 'Books@searchBooksByTitle');
$router->get('/books/isbn/:isbn', 'Books@searchBooksByISBN');
$router->get('/books/author/:author', 'Books@searchBooksByAuthors');

$router->get('/authors', 'Books@authors');
$router->get('/authors/:author', 'Books@searchBooksByAuthors');
