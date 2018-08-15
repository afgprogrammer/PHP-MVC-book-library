<?php 

use MVC\Model;

class ModelsBooks extends Model {

    public function getAllData() {
        return [$this->getAllBooks(null), $this->getAllAuthors(null)];
    }

    public function getAllBooks($param) {

        // sql statement
        $sql = "SELECT * FROM " . DB_PREFIX . "books";

        // pagination 
        $this->pagination->total = $this->getCountBooks();

        // check valid page
        if (isset($param['page']) && is_numeric($param['page'])) {
            $this->pagination->page = (int) $param['page'];
        } else {
            $this->pagination->page = 1;
        }

        // render page data
        $page_data = $this->pagination->render();  
        $offset = ($this->pagination->page - 1) * $page_data['limit'];      

        // read books with limit of page
        $sql .= " ORDER BY id DESC LIMIT " . $offset . ", " . $page_data['limit'];

        // exec query
        $query = $this->db->query($sql);

        $data = [];
        $data['page_data'] = $page_data;

        // Conclusion
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

    public function getAllAuthors($param) {
        $sql = "SELECT * FROM " . DB_PREFIX . "authors";

        // pagination 
        $this->pagination->total = $this->getCountAuthors();

        // check valid page
        if (isset($param['page']) && is_numeric($param['page'])) {
            $this->pagination->page = (int) $param['page'];
        } else {
            $this->pagination->page = 1;
        }

        // render page data
        $page_data = $this->pagination->render();  
        $offset = ($this->pagination->page - 1) * $page_data['limit'];      

        // read books with limit of page
        $sql .= " ORDER BY id DESC LIMIT " . $offset . ", " . $page_data['limit'];

        $query = $this->db->query($sql);

        $data = [];
        $data['page_data'] = $page_data;

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

    public function searchBooksByAuthors($param) {
        $sql = "SELECT * FROM " . DB_PREFIX . "authors WHERE fullname LIKE '%" . $this->db->escape($param['author']) . "%'";

        // total data find
        $total = $this->db->query("SELECT COUNT(*) as total FROM " . DB_PREFIX . "authors WHERE fullname LIKE '%" . $this->db->escape($param['author']) . "%'");
        
        // pagination 
        $this->pagination->total = ($total->num_rows > 0) ? (int) $total->row['total'] : 0;

        // check valid page
        if (isset($param['page']) && is_numeric($param['page'])) {
            $this->pagination->page = (int) $param['page'];
        } else {
            $this->pagination->page = 1;
        }

        // render page data
        $page_data = $this->pagination->render();  
        $offset = ($this->pagination->page - 1) * $page_data['limit'];      

        // read books with limit of page
        $sql .= " ORDER BY id DESC LIMIT " . $offset . ", " . $page_data['limit'];

        $query = $this->db->query($sql);

        $data = [];
        $data['page_data'] = $page_data;

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

    public function searchBooksByTitle($param) {
        $sql = "SELECT * FROM " . DB_PREFIX . "books WHERE title LIKE '%" . $this->db->escape($param['title']) . "%'";

        // total data find
        $total = $this->db->query("SELECT COUNT(*) as total FROM " . DB_PREFIX . "books WHERE title LIKE '%" . $this->db->escape($param['title']) . "%'");
        
        // pagination 
        $this->pagination->total = ($total->num_rows > 0) ? (int) $total->row['total'] : 0;

        // check valid page
        if (isset($param['page']) && is_numeric($param['page'])) {
            $this->pagination->page = (int) $param['page'];
        } else {
            $this->pagination->page = 1;
        }

        // render page data
        $page_data = $this->pagination->render();  
        $offset = ($this->pagination->page - 1) * $page_data['limit'];      

        // read books with limit of page
        $sql .= " ORDER BY id DESC LIMIT " . $offset . ", " . $page_data['limit'];

        $query = $this->db->query($sql);

        $data = [];
        $data['page_data'] = $page_data;

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

    private function getCountBooks() {
        $query = $this->db->query("SELECT COUNT(*) as total FROM " . DB_PREFIX . "books");

        return ($query->num_rows > 0) ? (int) $query->row['total'] : 0;
    }

    private function getCountAuthors() {
        $query = $this->db->query("SELECT COUNT(*) as total FROM " . DB_PREFIX . "authors");

        return ($query->num_rows > 0) ? (int) $query->row['total'] : 0;
    }
}
