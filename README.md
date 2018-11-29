
<h2 align="center" >In The Name Of Allah</h2>

# Book Rest API

This project is for searching books with rest API in PHP.

## Setup

### Step 1 - Clone or Download

```
git clone https://github.com/afgprogrammer/php-books-library.git

```

### Step 2 - Change Config File

Please open config.php file and find this code section.
```PHP
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
update it with your database credentials. you can choose a prefix and the prefix is optional.

#### Example
 My config.php file is like this

```PHP
  // Config Database
define('DATABASE', [
    'Port'   => '3306',
    'Host'   => 'localhost',
    'Driver' => 'PDO',
    'Name'   => 'library',
    'User'   => 'root',
    'Pass'   => '',
    'Prefix' => 'l_'
]);

// DB_PREFIX
define('DB_PREFIX', 'l_');
```

### Step 3 - Installation 

After your updated config.php file. please open this path in your browser.
```
yourdomain.com/install 
```

If you see bellow message:
```
Your System Is Installed. Please remove SQL file in ...
```
It's Done.

## Usage

You can see all the books and authors with bellow URL
```
yourdomain.com/all
```
For getting all books
```
yourdomain.com/books
```

For getting all authors
```
yourdomain.com/authors
```
You can search books with title, ISBN and author name
```
yourdomain.com/books/title/your-book-title
yourdomain.com/books/isbn/your-book-isbn
yourdomain.com/books/author/your-book-author
```
And you can see results in other pages
```
yourdomain.com/books/your-page-number
yourdomain.com/authors/your-page-number

yourdomain.com/books/title/your-book-title/your-page-number
yourdomain.com/books/author/your-book-author/your-page-number
```

and ...
