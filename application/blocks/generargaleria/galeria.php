<?php

namespace Application\Block\GenerarGaleria;

defined('C5_EXECUTE') or die('Acceso denegado.');


class Galeria extends Object {
	protected $galeriaID;
	public $rows;
	
	public function __construct($galeriaID, $row = null) {
		$this->galeriaID = $galeriaID;
		
		if($row==null) {
			$db = Loader:db();
			$query = $db->GetAll('SELECT * FROM btGaleriaEntries where bID=?', array($galeriaID));
		}
		$this->rows = $row;
	}
	
	public function getGaleriaID() {
		return $this->galeriaID;
	}
	
	public function getRows() {
		return $this->rows;
	}

}