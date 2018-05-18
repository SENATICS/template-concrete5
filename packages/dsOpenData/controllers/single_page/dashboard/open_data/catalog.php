<?php 
namespace Concrete\Package\Dsopendata\Controller\SinglePage\Dashboard\OpenData;
use \Concrete\Core\Page\Controller\DashboardPageController;
use Loader;

class Catalog extends DashboardPageController
{
    public function on_before_render()
    {
        $this->addFooterItem(Loader::helper('html')->css('estilo.css', 'dsOpenData'));
    }

    public function view()
    {   
        $this->set('catalog_title', '');
        
        if (!empty($_POST)) {

        $isSomeValueEmpty = false;
        $campos_vacios='';

        if (isset($_POST['catalog_title']) && $_POST['catalog_title'] == "") {
            $isSomeValueEmpty = true;
            $campos_vacios .= 'Catálogo de Datos Abiertos,';
        }  
        if (isset($_POST['catalog_organization']) && $_POST['catalog_organization'] == "") {
            $isSomeValueEmpty = true;
            $campos_vacios .= ' Organización,';
        }
        if (isset($_POST['catalog_url']) && $_POST['catalog_url'] == "") {
            $isSomeValueEmpty = true;
            $campos_vacios .= ' URL,';
        }
        if (isset($_POST['catalog_email']) && $_POST['catalog_email'] == "") {
            $isSomeValueEmpty = true;
            $campos_vacios .= ' Correo elctrónico de la Organización,';
        }
        
        
            $this->set('catalog_title', $_POST['catalog_title']);
            $this->set('catalog_organization', $_POST['catalog_organization']);
            $this->set('catalog_url', $_POST['catalog_url']);
            $this->set('catalog_email', $_POST['catalog_email']);
            if (!$isSomeValueEmpty) {
                $this->db = Loader::db();
                $sql = "INSERT INTO dsOpenData (title, organization, url, email_organization) VALUES (?,?,?,?)";

                $args = array(
                    $this->post('catalog_title'),
                    $this->post('catalog_organization'),
                    $this->post('catalog_url'),
                    $this->post('catalog_email')
                );
                $this->db->Execute($sql, $args);
                $this->set('success', t('El Catálogo ' . $this->post('catalog_title') . ' ha sido agregado'));
                $this->set('catalog_title', "");
                $this->set('catalog_organization', "");
                $this->set('catalog_url', "");
                $this->set('catalog_email', "");
                unset($set);
            } else {
                $this->set('error', t('Error al añadir. Faltan datos para: <b>'.$campos_vacios.'</b> inténtelo nuevamente.'));
                
            }
        }

        $this->set('button', array(
            'class' => 'btn btn-success',
            'label' => t('Agregar catálogo')
        ));

        $this->set('pageTitle',t("Gestionar Catálogo"));

    }

    public function update($catalog_id=null)
    {
        $this->set('pageTitle',t("Gestionar Catálogo"));

        if (is_null($catalog_id)) {
            $this->redirect("dashboard/open_data/list_catalog");
        }else{
            $this->set('catalogo_id', $catalog_id);

            if (is_numeric($catalog_id)) {
                $this->db = Loader::db();
                $sql = "SELECT * FROM dsOpenData WHERE opendataID=" . $catalog_id;

                $catalog = $this->db->GetRow($sql);

                $this->set('catalog_title', $catalog['title']);
                $this->set('catalog_organization', $catalog['organization']);
                $this->set('catalog_url', $catalog['url']);
                $this->set('catalog_email', $catalog['email_organization']);



                $this->set('button', array(
                    'class' => 'btn btn-warning',
                    'label' => t('Editar Catálogo')
                ));

                $campos_vacios='';

                if (!empty($_POST)) {

                $isSomeValueEmpty = false;
                

                if (isset($_POST['catalog_title']) && $_POST['catalog_title'] == "") {
                    $isSomeValueEmpty = true;
                    $campos_vacios .= 'Catálogo de Datos Abiertos,';
                }  
                if (isset($_POST['catalog_organization']) && $_POST['catalog_organization'] == "") {
                    $isSomeValueEmpty = true;
                    $campos_vacios .= ' Organización,';
                }
                if (isset($_POST['catalog_url']) && $_POST['catalog_url'] == "") {
                    $isSomeValueEmpty = true;
                    $campos_vacios .= ' URL,';
                }
                if (isset($_POST['catalog_email']) && $_POST['catalog_email'] == "") {
                    $isSomeValueEmpty = true;
                    $campos_vacios .= ' Correo elctrónico de la Organización,';
                }
                                
                    if (!$isSomeValueEmpty) {
                        $sql_update = "UPDATE dsOpenData SET title=?, organization=?, url=?, email_organization=? WHERE opendataID=" . $catalog_id;

                        $args_update = array(
                            $this->post('catalog_title'),
                            $this->post('catalog_organization'),
                            $this->post('catalog_url'),
                            $this->post('catalog_email')
                        );
                        $this->db->Execute($sql_update, $args_update);
                        $this->set('success', t('El Catálogo ' . $this->post('catalog_title') . ' ha sido modificado'));
                        
                        $catalog = $this->db->GetRow($sql);

                        $this->set('catalog_title', $catalog['title']);
                        $this->set('catalog_organization', $catalog['organization']);
                        $this->set('catalog_url', $catalog['url']);
                        $this->set('catalog_email', $catalog['email_organization']);


                        unset($_POST);
                    } else {
                        $this->set('error', t('Error al editar. Faltan datos para: <b>'.$campos_vacios.'</b> inténtelo nuevamente'));
                    }
                }
            }
        }
    }
}