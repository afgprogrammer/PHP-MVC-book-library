<?php

/**
 *
 * This file is part of mvc-rest-api for PHP.
 *
 */
namespace Pagination;

/**
 * Class Pagination, for pagination model data
 *
 * @author Mohammad Rahmani <rto1680@gmail.com>
 *
 * @package MVC
 */
final class Pagination {

    /**
     *  number of total data
     */
    public $total = 0;

    /**
     *  number of current page
     */
    public $page = 1;
    
    /**
     *  number of rows to show per page
     */
	public $limit = LIMIT_PRE_PAGE_SHOW_BOOKS;
    
    /**
     * 
     *
     * @return	array
     */
	public function render() {
        $total = $this->total;
        $page_list = [];
        
        // find out total pages
        $num_pages = ceil($total / $this->limit);

        // if limit not set
		if (!(int) $this->limit) {
			$limit = 5;
		} else {
			$limit = $this->limit;
		}

        // if current page is greater than total pages
        if ($this->page > $num_pages) {
            $this->page = 1;
        }

        // if current page is less than first page
		if ($this->page < 1) {
			$page = 1;
		} else {
			$page = $this->page;
        }

        // listing pages
        for ($i = 1; $i <= $num_pages; $i++) {
            array_push($page_list, $i);
        }

        return [
            'total'            => $total,
            'limit'            => $this->limit,
            'curent_opage'     => $page,
            'number_of_page'   => $num_pages,
            'page_list'        => $page_list,
        ];
	}
}
