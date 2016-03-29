<?php 
defined('C5_EXECUTE') or die("Access Denied.");
use Concrete\Core\File\Type\Type as FileType;

function thumbSort($array, $on, $order=SORT_ASC)
{
    $new_array = array();
    $sortable_array = array();

    if (count($array) > 0) {
        foreach ($array as $k => $v) {
            if (is_array($v)) {
                foreach ($v as $k2 => $v2) {
                    if ($k2 == $on) {
                        $sortable_array[$k] = $v2;
                    }
                }
            } else {
                $sortable_array[$k] = $v;
            }
        }

        switch ($order) {
            case SORT_ASC:
                asort($sortable_array);
            break;
            case SORT_DESC:
                arsort($sortable_array);
            break;
        }

        foreach ($sortable_array as $k => $v) {
            $new_array[$k] = $array[$k];
        }
    }

    return $new_array;
}

$fsID = $_POST['fsID'];
$bID = $_POST['bID'];

$db = Loader::db();
$existingThumbs = $db->GetAll('SELECT * from btVividThumbGalleryThumb WHERE bID = ? ORDER BY sort', array($bID)); //gives us all the files we've already saved/sorted
$existingThumbIDs = array();
foreach($existingThumbs as $thumb){
    $existingThumbIDs[] = $thumb['fID'];
}

$fs = FileSet::getByID($fsID);
$fileList = new FileList();            
$fileList->filterBySet($fs);
$fileList->filterByType(FileType::T_IMAGE);
$fileList->sortByFileSetDisplayOrder();
$files = $fileList->get(); //gives us all the files in the set

//we're going to make a new array of thumbs from the files in our fileset.
$allThumbs = array();
foreach($files as $file){
    if(in_array($file->getFileID(),$existingThumbIDs)){
        $sort = $db->GetOne('SELECT sort from btVividThumbGalleryThumb WHERE bID = ? and fID = ?', array($bID,$file->getFileID()));
        $thumb = array('fID'=>$file->getFileID(),'sort'=>$sort);
    } else{
        $thumb = array('fID'=>$file->getFileID(),'sort'=>9999);
    }
    $allThumbs[] = $thumb;
}   
$allThumbs = thumbSort($allThumbs,'sort',SORT_ASC);
foreach($allThumbs as $thumb){
    $file = File::getByID($thumb['fID']);
    $html .= "<div class='thumb-item-shell'>";
    $html .= "<img src='".$file->getRecentVersion()->getThumbnailURL('file_manager_listing')."'>";
    $html .= "<div class='thumb-file-name'>".$file->getFileName()."</div>";
    $html .= "<input type='hidden' name='fID[]' value='".$file->getFileID()."'>";
    $html .= "<input type='hidden' name='sort[]' class='item-sort'>";
    $html .= "</div>";
}



echo json_encode($html);
exit;
?>
