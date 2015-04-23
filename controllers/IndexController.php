<?php
/**
 * 
 * @version 1.0
 * @copyRight MobSolution.az 2015
 * 
 * 
 *
 */
function actionIndex($smarty,$connection){

  $smarty->assign('myPageTitle','Index page');
   loadTemplate($smarty,'index');
   // print_r($connection);
}