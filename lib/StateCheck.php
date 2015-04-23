<?php
 function initializer() {
 $initialize = array();
     $initialize['controller'] = getController();
     $initialize['action']  =getAction();
     return $initialize;

}
function getController() {
    $default = "Index";
    $controller  = isset($_GET['controller'])?ucfirst($_GET['controller']):$default;
    if(is_file($controller.CONTROLLER_POSTFIX)) {
        require_once $controller.CONTROLLER_POSTFIX.".php";
        return $controller;
    }
    else {
        require_once $default.CONTROLLER_POSTFIX.".php";
        return $default;
    }

}

function getAction() {
    $default = "Index";
    $action  = isset($_GET['action'])?ucfirst($_GET['action']):$default;
    $actionName = ACTION_PREFIX.$action;
    if(function_exists($actionName)) {
        return $actionName;
    }
    else
        return ACTION_PREFIX.$default;
}

function loadTemplate($smarty,$template) {
    $smarty->display($template.TEMPLATE_POSTFIX);
}