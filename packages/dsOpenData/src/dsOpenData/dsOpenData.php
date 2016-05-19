<?php 
namespace dsOpenData;

use Loader;

defined('C5_EXECUTE') or die(_("Access Denied."));

class dsOpenData
{

    public function getDatasetsFromCatalog($catalogID)
    { // aca se hace la magia
        $this->db = Loader::db();

        $q = "SELECT ODD.datasetsID as id, count(ODR.resourceID) as total_resource, ODD.*, ODL.*  ";
        $q .= " FROM dsOpenDataDataset as ODD  ";
        $q.= " LEFT JOIN dsOpenDataResource AS ODR ON ODD.datasetsID = ODR.datasetsID ";
        
        $q .= " LEFT JOIN dsOpenDataLicense as ODL ON ODD.licenseID = ODL.licenseID  ";
        if ($catalogID != 0) {
            $q .= " WHERE ODD.opendataID =" . $catalogID;

        }
        $q.= " group by ODD.datasetsID ORDER BY ODD.datasetsID";

        return $this->db->GetAll($q);
    }
    public function getAll($catalogID)
    { // aca se hace la magia
        $this->db = Loader::db();

        $q = "SELECT OD.opendataID, OD.title as title_opendata, OD.organization, OD.url as url_opendata, OD.email_organization, ";
        $q .= " ODD.datasetsID, ODD.title as title_datasets, ODD.description as description_datasets, ODD.url_download_page, ODD.author, ODD.email_author, ODD.tags, ODD.version,  ";
        $q .= " ODR.resourceID, ODR.resource_title, ODR.description as description_resource, ";
        $q .= " ODL.licenseID, ODL.code_license, ODL.license_name, count(ODR.resourceID) as total_resource ";
        $q .= " FROM dsOpenData as OD  ";
        $q .= " LEFT JOIN dsOpenDataDataset AS ODD ON OD.opendataID = ODD.opendataID ";
        $q .= " LEFT JOIN dsOpenDataResource AS ODR ON ODD.datasetsID = ODR.datasetsID ";
        $q .= " LEFT JOIN dsOpenDataLicense as ODL ON ODD.licenseID = ODL.licenseID  ";
        if ($catalogID != 0) {
            $q .= " WHERE ODD.opendataID =" . $catalogID;
        }
        $q .= " group by ODD.datasetsID ORDER BY ODD.title";

        return $this->db->GetAll($q);
    }

    public function getResourceFromDatasets($datasetsID)
    { // aca se hace la magia
        $this->db = Loader::db();

        $q = "SELECT ODR.resourceID as id, ODR.*,  count(ODF.fileID) as total_resource, OF.description as format";
        $q .= " FROM dsOpenDataResource as ODR  ";
        $q.= " LEFT JOIN dsOpenDataFile AS ODF ON ODR.resourceID = ODF.resourceID ";
        $q.= " LEFT JOIN dsOpenDataFormat AS OF ON ODF.formatID = OF.formatID ";
        if ($datasetsID != 0) {
            $q .= " WHERE ODR.datasetsID =" . $datasetsID;
        } 
        $q.= "  group by ODR.resourceID ORDER BY ODR.resourceID";

        return $this->db->GetAll($q);
    }
    public function getFiles($resourceID)
    { // aca se hace la magia
        $this->db = Loader::db();

        $q = "SELECT ODF.fileID as id, ODF.* ";
        $q .= " FROM dsOpenDataFile as ODF  ";
        $q.= "  LEFT JOIN dsOpenDataResource AS ODR ON ODR.resourceID = ODF.resourceID ";
        if ($resourceID != 0) {
            $q .= " WHERE ODF.resourceID =" . $resourceID;
        } 
        $q.= " group by ODF.fileID";

        return $this->db->GetAll($q);
    }

    public function getFormat()
    { // aca se hace la magia
        $this->db = Loader::db();

        $q = "SELECT ODF.* ,  count(FILE.fileID) as total_file";
        $q .= " FROM dsOpenDataFormat as ODF  "; 
        $q.= " LEFT JOIN dsOpenDataFile AS FILE ON ODF.formatID = FILE.formatID ";
        $q.= " group by ODF.formatID  order by ODF.formatID DESC";

        return $this->db->GetAll($q);
    }


     public function getNameDatasets($datasetsID=null)
    { // aca se hace la magia
        $this->db = Loader::db();

        $q = "SELECT ODD.title, OD.title as title_catalogo, ODD.datasetsID,OD.opendataID";
        $q .= " FROM dsOpenDataDataset as ODD  ";
        $q.= "  LEFT JOIN dsOpenData AS OD ON OD.opendataID = ODD.opendataID ";
        if ($datasetsID != 0) {
            $q .= " WHERE ODD.datasetsID =" . $datasetsID;
        } 
        $q.= " group by ODD.title";

        return $this->db->GetAll($q);
    }
    public function getNameResource($resourceID)
    { // aca se hace la magia
        $this->db = Loader::db();

        $q = "SELECT ODR.resource_title, ODD.title as title_datasets, ODR.resourceID, ODD.datasetsID , ODR.description";
        $q .= " FROM dsOpenDataResource as ODR  ";
        $q.= "  LEFT JOIN dsOpenDataDataset AS ODD ON ODD.datasetsID = ODR.datasetsID ";
        if ($resourceID != 0) {
            $q .= " WHERE ODR.resourceID =" . $resourceID;
        } 
        $q.= " group by ODR.resource_title";

        return $this->db->GetAll($q);
    }
    public function getNameFile($fileID)
    { // aca se hace la magia
        $this->db = Loader::db();

        $q = "SELECT ODR.resource_title, ODR.resourceID, ODF.fileID, ODR.datasetsID";
        $q .= " FROM dsOpenDataFile as ODF  ";
        $q.= "  LEFT JOIN dsOpenDataResource AS ODR ON ODR.resourceID = ODF.resourceID ";
        if ($fileID != 0) {
            $q .= " WHERE ODF.fileID =" . $fileID;
        } 
        $q.= " group by ODF.fileID";

        return $this->db->GetAll($q);
    }
    
    public function getDictionaryFromDatasets($datasetsID=0)
    { // aca se hace la magia
        $this->db = Loader::db();

        $q = "SELECT DIC.*";
        $q .= " FROM dsOpenDataDictionary as DIC  ";
        if ($datasetsID != 0) {
            $q .= " WHERE DIC.datasetsID =" . $datasetsID;
        } 
        $q.= " group by DIC.dictionaryID";

        return $this->db->GetAll($q);
    }

     public function getDictionary($dictionaryID=0)
    { // aca se hace la magia
        $this->db = Loader::db();

        $q = "SELECT DIC.*";
        $q .= " FROM dsOpenDataDictionary as DIC  ";
        if ($dictionaryID != 0) {
            $q .= " WHERE DIC.dictionaryID =" . $dictionaryID;
        } 
        $q.= " group by DIC.dictionaryID";

        return $this->db->GetAll($q);
    }

    public function getNameCatalog($catalogID)
    { // aca se hace la magia
        $this->db = Loader::db();

        $q = "SELECT OD.title , OD.opendataID";
        $q .= " FROM dsOpenData as OD  ";
        if ($catalogID != 0) {
            $q .= " WHERE OD.opendataID =" . $catalogID;
        } 
        $q.= " group by OD.title";

        return $this->db->GetAll($q);
    }

     public function getResourceID($datasetsID)
    { // aca se hace la magia
        $this->db = Loader::db();

        $q = "SELECT ODD.title ";
        $q .= " FROM dsOpenDataDataset as ODD  ";
        if ($datasetsID != 0) {
            $q .= " WHERE ODD.datasetsID =" . $datasetsID;
        } 
        $q.= " group by ODD.title";

        return $this->db->GetAll($q);
    }

    public function removeDatasetFromCatalog($catalogID)
    {
        $this->db = Loader::db();
        $sql = "DELETE FROM dsOpenDataDataset WHERE opendataID = " . $catalogID;
        return $this->db->Execute($sql);
    }
    public function removeResourceFromDatasets($datasetsID)
    {
        $this->db = Loader::db();
        $sql = "DELETE FROM dsOpenDataResource WHERE datasetsID = " . $datasetsID;
        return $this->db->Execute($sql);
    }
}