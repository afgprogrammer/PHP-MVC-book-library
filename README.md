
<h2 align="center" >In The Name Of Allah</h2>

# Rest Api For Books

This project for search in books with rest api with php.

## Setup

### Step 1 - Clone or Download

```
git clone https://github.com/afgprogrammer/php-books-library.git

```

### Step 2 - Change Config File

please open config.php file and find this.
```php
  // Config Database
define('DATABASE', [
    'Port'   => '3306',
    'Host'   => 'localhost',
    'Driver' => 'PDO',
    'Name'   => '',
    'User'   => '',
    'Pass'   => '',
    'Prefix' => ''
]);

// DB_PREFIX
define('DB_PREFIX', '');
```

update with your database name, username and password. you can choose a prefix. the prefix is optional.

### Step 3 - Installation 

after your update config.php file. please open this path in your browser
```
yourdomain.com/install 
```

if you see this
```
Your System Is Installed. Please remove sql file in ...
```
Done.

## Usage

you can see all books and authors with this url
```
yourdomain.com/all
```
for books
```
yourdomain.com/books
```

for authors
```
yourdomain.com/authors
```
you can search books with title, isbn and author name
```
yourdomain.com/books/title/your-book-title
yourdomain.com/books/isbn/your-book-isbn
yourdomain.com/books/author/your-book-author
```
and you can see other page result
```
yourdomain.com/books/your-page-number
yourdomain.com/authors/your-page-number

yourdomain.com/books/title/your-book-title/your-page-number
yourdomain.com/books/isbn/your-book-isbn/your-page-number
yourdomain.com/books/author/your-book-author/your-page-number
```

and other ....
