<?php 
namespace Concrete\Package\Dsopendata\Controller\SinglePage\Dashboard\OpenData;
use \Concrete\Core\Page\Controller\DashboardPageController;
use dsOpenData\dsOpenData;
use Loader;


defined('C5_EXECUTE') or die("Access Denied.");

class Types extends DashboardPageController
{

	public function on_before_render()
    {
        $this->addFooterItem(Loader::helper('html')->css('estilo.css', 'dsOpenData'));
        $this->addFooterItem(Loader::helper('html')->css('font-awesome.min.css', 'dsOpenData'));
        $this->addFooterItem(Loader::helper('html')->css('jquery.dataTables.min.css', 'dsOpenData'));
        $this->addFooterItem(Loader::helper('html')->javascript('jquery.dataTables.min.js', 'dsOpenData'));
    }

    public function view()
    {
        $this->requireAsset('javascript', 'jquery');
        $this->set('pageTitle',t("Lista de Formatos permitidos"));

        $db = Loader::db();

        if (!empty($_POST)){
            $isSomeValueEmpty = false;
            foreach ($_POST as $key => $value) {
                if ($value === "" && $key !== "formatID") {
                    $isSomeValueEmpty = true;
                }
            }

            if (!$isSomeValueEmpty) {
                $sql = "INSERT INTO dsOpenDataFormat (description) VALUES (?)";

                $args = array(
                    $this->post('description')
                );
                $db->Execute($sql, $args);

                $this->set('description', "");
                $this->set('success', t('El tipo de archivo: "' . $this->post('description') . '" ah sido agregado!.'));
                unset($_POST);
            } else {
                $this->set('error', t('Error al añadir. Tal vez algunos valores estaban vacíos?'));
            }
        }

        $dsOpenData = new dsOpenData();
        $this->set('formatos', $dsOpenData->getFormat());

        $this->set('description','');
        
        $this->set('button', array(
            'class' => 'btn btn-success',
            'label' => t('Agregar Diccionario')
        ));   
    }

    public function update()//LISTAR FORMATOS
    {
        if (isset($_POST) && is_numeric($_POST['formatID'])) {
            $db = Loader::db();
            $sql = "UPDATE dsOpenDataFormat SET
            description = ?
            WHERE formatID=" . $this->post('id');
            $args = array(
                $this->post('description')
            );
            $db->Execute($sql, $args);
            die("OK");
        } else {
            die("ERROR");
        }
    }

    public function delete()
    {
        if (isset($_POST) && is_numeric($_POST['id'])) {
            $db = Loader::db();
            $sql = "DELETE FROM dsOpenDataFormat WHERE formatID = " . $this->post('id');
            $db->Execute($sql);

            $sql2 = "UPDATE dsOpenDataFormat SET
            formatID = 0
            WHERE formatID=" . $this->post('id');
            $db->Execute($sql2);
            die("OK");
        } else {
            die("ERROR");
        }
    }
}