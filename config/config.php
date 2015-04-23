<?php

/*
 * configration file
 * @version 1.0
 * @license Non-commercial
 * @copyright MobSolutions.az
*/

//if session doesn't exists ,start it
if(!isset($_SESSION)) {
	session_start();
}

//site url
defined("SITE_URL")
 || define("SITE_URL","http://".$_SERVER['SERVER_NAME']);

//easy use directory separator
defined("DS")
 || define("DS",DIRECTORY_SEPARATOR);

//define real site path in system
defined("ROOT_PATH")
    || define("ROOT_PATH",realpath(dirname(__FILE__).DS.'..'.DS));


//<start define default folder's path
 defined("CONTROLLER_DIR")
   	  || define("CONTROLLER_DIR","controllers");

   defined("MODELS_DIR")
      || define("MODELS_DIR","models");

    defined("VIEWS_DIR")
     || define("VIEWS_DIR","../views");

     defined("CONTROLLER_POSTFIX")
           || define("CONTROLLER_POSTFIX","Controller");

    defined("ACTION_PREFIX")
        || define("ACTION_PREFIX","action");

     defined("CONFIG_DIR")
        || define("CONFIG_DIR","config");

        defined("LIB_DIR")
          || define("LIB_DIR","lib");

        defined("TEMPLATE_POSTFIX")
            || define("TEMPLATE_POSTFIX",".tpl");

defined("MODULES_DIR")
    || define("MODULES_DIR",LIB_DIR.DS.'modules');

        defined("TMP_DIR")
         || define("TMP_DIR","tmp");

         defined("BASE_DIR")
         || define("BASE_DIR",VIEWS_DIR.DS.'www');

         defined("_SMARTY_DIR_")
               || define("_SMARTY_DIR_",LIB_DIR.DS.'Smarty'.DS.'libs'.DS);

$template = "classic";

defined("SMARTY_WEB_PATH")
    || define("SMARTY_WEB_PATH","../../../tmp/{$template}/");

   //>end define



//include all folders for easely use
set_include_path(implode(PATH_SEPARATOR,array(
    realpath(ROOT_PATH.DS.CONTROLLER_DIR),
    realpath(ROOT_PATH.DS.MODELS_DIR),
    realpath(ROOT_PATH.DS.VIEWS_DIR),
    realpath(ROOT_PATH.DS.CONFIG_DIR),
    realpath(ROOT_PATH.DS.LIB_DIR),
    realpath(ROOT_PATH.DS._SMARTY_DIR_),
    realpath(ROOT_PATH.DS.MODULES_DIR),
    get_include_path()
)));



/*
 *
 * SMARTY Configuration
 */

//smarty template directory
  defined("SMARTY_TEMPLATE_DIR")
        || define("SMARTY_TEMPLATE_DIR","classic");

   //add smarty
require_once "Smarty.class.php";

//<set smarty configuration
     $smarty = new Smarty();
    $smarty->setTemplateDir(VIEWS_DIR.DS.SMARTY_TEMPLATE_DIR);
    $smarty->setConfigDir(TMP_DIR.DS.'config');
    $smarty->setCacheDir(TMP_DIR.DS.'cache');
    $smarty->setCompileDir(TMP_DIR.DS.'compile');
    //>end smarty config
     $smarty->assign('SmartyWebPath',SMARTY_WEB_PATH);


