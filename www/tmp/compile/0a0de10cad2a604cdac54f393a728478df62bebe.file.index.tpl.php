<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-04-23 19:47:25
         compiled from "..\views\classic\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:140455538d7829581e4-23394992%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0a0de10cad2a604cdac54f393a728478df62bebe' => 
    array (
      0 => '..\\views\\classic\\index.tpl',
      1 => 1429800444,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '140455538d7829581e4-23394992',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5538d78295c071_23395587',
  'variables' => 
  array (
    'myPageTitle' => 0,
    'SmartyWebPath' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5538d78295c071_23395587')) {function content_5538d78295c071_23395587($_smarty_tpl) {?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title><?php echo $_smarty_tpl->tpl_vars['myPageTitle']->value;?>
</title>
    <link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['SmartyWebPath']->value;?>
css/style.css">
</head>
<body>
<header>
    <div id="top_left">
    <img src="../../../images/elements/logo.png" alt="logo">
    </div>
    <div id="reg_but">
        <a href="#">Qeydiyyat</a>
        <input type="text" placeholder="login" class="inp_stl">
        <input type="text" placeholder="pass" class="inp_stl">
        <input type="submit" id="sign_but" value="Daxil ol">
    </div>
    <div id="opt_line">
        <a href="#">ƏMLAK-ELAN</a>
        <a href="#">İŞÇİ QÜVVƏ</a>
        <a href="#">MAĞAZALAR</a>
        <a href="#">ŞİRKƏTLƏR</a>
    </div>

</header>

<div id="sidebar">

</div>
</body>
</html><?php }} ?>
