<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>

<style>
    .titulo_ciberseguridad{
        background: #017BFE;
        color: #fff !important;
        border-radius: 10px 10px 0 0;
        text-align: center;
        font-weight: bold;
        width: 100%;
       	margin-top:0px !important;
 	opacity: .8;
        padding: 5px;
        text-shadow: 1px 1px 3px #111;
        border-bottom: 5px solid #CCC;
        transition: opacity .4s,box-shadow .4s,transform .4s,background .4s;
        -webkit-transition: opacity .4s,-webkit-box-shadow .4s,-webkit-transform .4s,background .4s,color .4s;
    }
</style>

<<?php echo $formatting;?> class="titulo_ciberseguridad"><?php echo h($title)?></<?php echo $formatting;?>>
