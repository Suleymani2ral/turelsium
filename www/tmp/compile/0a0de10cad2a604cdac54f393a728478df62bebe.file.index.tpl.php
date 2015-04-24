<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-04-24 02:24:03
         compiled from "..\views\classic\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:140455538d7829581e4-23394992%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0a0de10cad2a604cdac54f393a728478df62bebe' => 
    array (
      0 => '..\\views\\classic\\index.tpl',
      1 => 1429824242,
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
<div id="link_line">
    <ul>
        <li><a href="#">Haqqımızda</a></li>
        <li><a href="#">Reklam xidməti</a></li>
        <li><a href="#">Bizimlə əlaqə</a></li>
        <li><a href="#">Statistika</a></li>
        <li><a href="#">Partnyorlar</a></li>
    </ul>
</div>


<div id="head_all">

    <div id="top_left">
    <img src="../../../images/elements/logo.png" alt="logo">
    </div>
    <input type="submit" class="sign_but" value="">
    <div id="reg_but">
        <a href="#">Q E Y D I Y Y A T</a>
        <input type="text" placeholder="login" id="login" class="inp_stl">
        <input type="text" placeholder="pass" id="pass" class="inp_stl">

    </div>
    <div id="opt_line">
        <a href="#">ƏMLAK-ELAN</a>
        <a href="#">İŞÇİ QÜVVƏ</a>
        <a href="#">MAĞAZALAR</a>
        <a href="#">ŞİRKƏTLƏR</a>
    </div>

</div>
</header>
<div id="sidebar">
    <div id="get_center">
<a href="/" id="add_item">Elan Yerləşdir</a>
    </div>

    </div>
</body>
</html><?php }} ?>
