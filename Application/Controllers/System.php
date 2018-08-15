<?php 

use MVC\Controller;

class ControllersSystem extends Controller {

    public function index() {
        
        // Connect to database for install and import sql file
        $model = $this->model('install');
        $response = $model->install();

        $file = SCRIPT . 'SQL/library-sql.sql';
        
        if ($response) {
            $this->response->sendStatus(200);
            $this->response->setContent([
                'message'     => 'Your System Is Installed. Please remove sql file in [' . $file . ']'
            ]);
        }
    }
}
