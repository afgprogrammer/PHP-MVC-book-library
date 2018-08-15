<?php 

use MVC\Model;

class ModelsInstall extends Model {

    public function install() {
        $file = SCRIPT . 'SQL/library-sql.sql';

        if (!file_exists($file)) {
			exit('Your system is installed OR Could not load sql file: ' . $file);
		}

        $lines = file($file);
        
        if ($lines) {
			$sql = '';

			foreach($lines as $line) {
				if ($line && (substr($line, 0, 2) != '--') && (substr($line, 0, 1) != '#')) {
					$sql .= $line;

					if (preg_match('/;\s*$/', $line)) {
						$sql = str_replace("CREATE TABLE IF NOT EXISTS `", "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX, $sql);
						$sql = str_replace("CREATE TABLE `", "CREATE TABLE `" . DB_PREFIX, $sql);
						$sql = str_replace("INSERT INTO `", "INSERT INTO `" . DB_PREFIX, $sql);

						$this->db->query($sql);

						$sql = '';
					}
				}
            }
            
            unlink($file);

            return true;
		}
    }
}
