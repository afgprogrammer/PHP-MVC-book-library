<?php 

use MVC\Model;

class ModelsBooks extends Model {

    public function getAllData() {
        return $this->getAllBooks() + $this->getAllAuthors();
    }

    public function getAllBooks() {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "books");

        $data = [];
        $data['count'] = $query->num_rows;

        if ($query->num_rows) {
            foreach($query->rows as $key => $value):
                $data['books'][] = [
                        'book'    => $value,
                        'authors' => $this->getAuthorsBook($value['id'])
                    ];
            endforeach;
        } else {
            $data['books'][] = [
                'book'       => array(),
                'authors'    => array()
            ];
        }

        return $data;
    }

    public function getAllAuthors() {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "authors");

        $data = [];
        $data['count'] = $query->num_rows;

        if ($query->num_rows) {
            foreach($query->rows as $key => $value):
                $data['authors'][] = [
                        'author'   => $value,
                        'books'    => $this->getBooksAuthor($value['id'])
                    ];
            endforeach;
        } else {
            $data['authors'][] = [
                'author'   => array(),
                'books'    => array()
            ];
        }

        return $data;
    }

    public function searchBooksByAuthors($author_name) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "authors WHERE fullname LIKE '%" . $this->db->escape($author_name) . "%'");

        $data = [];

        $data['count'] = $query->num_rows;

        if ($query->num_rows) {
            foreach($query->rows as $key => $value):
                $data['result'][] = [
                        'author'   => $value,
                        'books'    => $this->getBooksAuthor($value['id'])
                    ];
            endforeach;
        } else {
            $data['result'][] = [
                'author'   => array(),
                'books'    => array()
            ];
        }

        return $data;
    }

    public function searchBooksByTitle($book_title) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "books WHERE title LIKE '%" . $this->db->escape($book_title) . "%'");

        $data = [];

        $data['count'] = $query->num_rows;

        if ($query->num_rows) {
            foreach($query->rows as $key => $value):
                $data['result'][] = [
                        'book'      => $value,
                        'authors'   => $this->getAuthorsBook($value['id'])
                    ];
            endforeach;
        } else {
            $data['result'][] = [
                'book'       => array(),
                'authors'    => array()
            ];
        }

        return $data;
    }

    public function searchBooksByISBN($book_isbn) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "books WHERE isbn LIKE '%" . $this->db->escape($book_isbn) . "%'");

        $data = [];

        $data['count'] = $query->num_rows;

        if ($query->num_rows) {
            foreach($query->rows as $key => $value):
                $data['result'][] = [
                        'book'      => $value,
                        'authors'   => $this->getAuthorsBook($value['id'])
                    ];
            endforeach;
        } else {
            $data['result'][] = [
                'book'       => array(),
                'authors'    => array()
            ];
        }

        return $data;
    }

    private function getBooksAuthor($author) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "book_to_author WHERE author_id = " . (int) $author . "");

        $data = [];

        if ($query->num_rows) {
            foreach($query->rows as $result):
                $book = $this->getBook($result['book_id']);

                array_push($data, $book);
            endforeach;
        }

        return $data;
    }

    private function getBook($book_id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "books WHERE id = " . (int) $book_id . "");

        return $query->row;
    }

    private function getAuthorsBook($book_id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "book_to_author WHERE book_id = " . (int) $book_id . "");

        $data = [];

        if ($query->num_rows) {
            foreach($query->rows as $result):
                $author = $this->getAuthor($result['author_id']);
                array_push($data, $author);
            endforeach;
        }

        return $data;
    }

    private function getAuthor($author_id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "authors WHERE id = " . (int) $author_id . "");

        return $query->row;
    }
}
