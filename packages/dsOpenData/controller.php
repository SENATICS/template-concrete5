<?php 

namespace Concrete\Package\Dsopendata;
use Package;
use BlockType;
use SinglePage;
use Loader;

defined('C5_EXECUTE') or die(_("Access Denied."));

class Controller extends Package {

    protected $pkgHandle = 'dsOpenData';
    protected $appVersionRequired = '5.7.0.2';
    protected $pkgVersion = '1.0';
    protected $pkgAutoloaderRegistries = array(
        'src/dsOpenData' => '\dsOpenData'
    );

    public function getPackageDescription()
    {
        return t('Paquete desarrollado por la SENATICs para la implementación de Datos Abiertos en el portal.');
    }

    public function getPackageName()
    {
        return t('Datos Abiertos');
    }

    public function install() {
        $pkg = parent::install();

        // install block
        BlockType::installBlockTypeFromPackage('open_data', $pkg);


        $p2 = SinglePage::add('/dashboard/open_data/list_catalog', $pkg);
        if (is_object($p2)) {
            $p2->update(array('cName' => t('Listar Catálogos'), 'cDescription' => ''));
        }

        $p3 = SinglePage::add('/dashboard/open_data/catalog', $pkg);
        if (is_object($p3)) {
            $p3->update(array('cName' => t('Agregar/Editar Catálogo'), 'cDescription' => ''));
        }

        $p4 = SinglePage::add('/dashboard/open_data/list_datasets', $pkg);
        if (is_object($p4)) {
            $p4->update(array('cName' => t('Listar Conjuntos de Datos'), 'cDescription' => ''));
            $p4->setAttribute('exclude_nav', 1);
        }

        $p5 = SinglePage::add('/dashboard/open_data/datasets', $pkg);
        if (is_object($p5)) {
            $p5->update(array('cName' => t('Agregar/Editar Conjunto de Datos'), 'cDescription' => ''));
        }

        $p6 = SinglePage::add('/dashboard/open_data/types', $pkg);
        if (is_object($p6)) {
            $p6->update(array('cName' => t('Tipo de Archivos'), 'cDescription' => ''));
        }

        $p8 = SinglePage::add('/dashboard/open_data/resource', $pkg);
        if (is_object($p8)) {
            $p8->update(array('cName' => t('Agregar/Editar Recursos'), 'cDescription' => ''));
            $p8->setAttribute('exclude_nav', 1);
            $p8->setAttribute('exclude_nav', 1);
        }

        $p9 = SinglePage::add('/dashboard/open_data/files', $pkg);
        if (is_object($p9)) {
            $p9->update(array('cName' => t('Agregar/Editar Archivos'), 'cDescription' => ''));
            $p9->setAttribute('exclude_nav', 1);
        }

        $p10 = SinglePage::add('/dashboard/open_data/list_resource', $pkg);
        if (is_object($p10)) {
            $p10->update(array('cName' => t('Listar Recursos'), 'cDescription' => ''));
            $p10->setAttribute('exclude_nav', 1);
        }
        
        $p11 = SinglePage::add('/dashboard/open_data/dictionary', $pkg);
        if (is_object($p11)) {
            $p11->update(array('cName' => t('Agregar Diccionario'), 'cDescription' => ''));
            $p11->setAttribute('exclude_nav', 1);
        }

        $p12 = SinglePage::add('/dashboard/open_data/list_dictionary', $pkg);
        if (is_object($p12)) {
            $p12->update(array('cName' => t('Listar Diccionario'), 'cDescription' => ''));
            $p12->setAttribute('exclude_nav', 1);
        }

        $this->installSettings();
    }

    private function installSettings()
    {
        $db = Loader::db();

        //remove duplicate
        $sql = "DELETE s1 FROM dsOpenDataSettings s1, dsOpenDataSettings s2 WHERE s1.opt = s2.opt AND s1.settingID > s2.settingID";
        $db->Execute($sql);

        $sql = " truncate dsOpenDataFormat; ";
        $db->Execute($sql);
        $sql2 = " truncate dsOpenDataLicense; ";
        $db->Execute($sql2);
        
        $sql_insert_format = "INSERT INTO dsOpenDataFormat (description) VALUES ('CSV');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('TSV');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('JSON');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('PDF');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('XLS');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('XLSX');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('XML');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('TSV');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('DOC');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('HTML');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('KML');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('JPG');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('PNG');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('SVG');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('GIF');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('RDF');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('RTF');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('TXT');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('Shapefile');";
        $sql_insert_format .= "INSERT INTO dsOpenDataFormat (description) VALUES ('GeoJSON');";
        
         
        #LICENCIAS
        $sql_insert_format .= "INSERT INTO dsOpenDataLicense (license_name, code_license) VALUES ('Atribución CC BY','https://creativecommons.org/licenses/by/4.0/legalcode');";
        $sql_insert_format .= "INSERT INTO dsOpenDataLicense (license_name, code_license) VALUES ('Atribución-CompartirIgual CC BY-SA','https://creativecommons.org/licenses/by-sa/4.0/legalcode');";
        $sql_insert_format .= "INSERT INTO dsOpenDataLicense (license_name, code_license) VALUES ('Atribución-SinDerivadas CC BY-ND ','https://creativecommons.org/licenses/by-nd/4.0/legalcode');";
        $sql_insert_format .= "INSERT INTO dsOpenDataLicense (license_name, code_license) VALUES ('Atribución-NoComercial CC BY-NC ','https://creativecommons.org/licenses/by-nc/4.0/legalcode');";
        $sql_insert_format .= "INSERT INTO dsOpenDataLicense (license_name, code_license) VALUES ('Atribución-NoComercial-CompartirIgual CC BY-NC-SA ','https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode');";
        $sql_insert_format .= "INSERT INTO dsOpenDataLicense (license_name, code_license) VALUES ('Atribución-NoComercial-SinDerivadas CC BY-NC-ND ','https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode');";

        $db->Execute($sql_insert_format);
    }

}


?>