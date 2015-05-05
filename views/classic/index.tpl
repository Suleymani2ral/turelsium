<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>{$myPageTitle}</title>
    <link rel="stylesheet" type="text/css" href="{$SmartyWebPath}css/style.css">
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

<div id="content">
<div id="sidebar">
    <div id="get_center">
<a href="/" id="add_item">Elan Yerləşdir</a>
    </div>
    <br>

    <ul id="parent_ul">
        <a href="#" ><li class="parent_li">Mənzillər <span class="counts">(6754)</span></li></a>
        <a href="#" ><li class="parent_li">Yeni Tikili <span class="counts">(267)</span>
            </li></a>
                <ul class="ul_sec_menu">
                    <a href="#"><li><span class="child">-</span> 1 Otaqlı <span class="counts">(322)</span></li></a>
                    <a href="#"><li><span class="child">-</span> 2 Otaqlı <span class="counts">(6213)</span></li></a>
                    <a href="#"><li><span class="child">-</span> 3 Otaqlı <span class="counts">(654)</span></li></a>

                </ul>

        <a href="#" ><li class="parent_li">Köhnə tikili <span class="counts">(544)</span>
            </li></a>
                <ul class="ul_sec_menu">
                    <a href="#"><li><span class="child">></span>1 Otaqlı <span class="counts">(899)</span></li></a>
                    <a href="#"><li><span class="child">></span>2 Otaqlı <span class="counts">(349)</span></li></a>
                    <a href="#"><li><span class="child">></span>3 Otaqlı <span class="counts">(112)</span></li></a>

                </ul>

        <a href="#"><li class="parent_li">Obyekt <span class="counts">(766)</span></li></a>
        <a href="#"><li class="parent_li">Ofis <span class="counts">(46899)</span></li></a>
        <a href="#"><li class="parent_li">Torpaq <span class="counts">(544)</span></li></a>
    </ul>

    <!--
    <div id="menu_all">
            <a href="#" class="a_old"><div class="menu_item_villa">Bütün mənzillər <span>(1204)</span></div></a>
    <div class="clearesta"></div>
            <a href="#" class="a_old"><div class="menu_item">Köhnə tikili <span>(1204)</span></div></a>
            <a href="#" class="a_old"><div class="menu_item">1 Otaqlı <span>(452)</span></div></a>
            <a href="#" class="a_old"><div class="menu_item">2 Otaqlı <span>(112)</span></div></a>
            <a href="#" class="a_old"><div class="menu_item">3 Otaqlı <span>(361)</span></div></a>
            <a href="#" class="a_old"><div class="menu_item">3 Otaqlı <span>(741)</span></div></a>
            <a href="#" class="a_old"><div class="menu_item">5 Otaqlı <span>(24)</span></div></a>
            <a href="#" class="a_old"><div class="menu_item">+ Otaqlı <span>(841)</span></div></a>
    <div class="clearesta"></div>
            <a href="#" class="a_old"><div class="menu_item_new">Yeni tikili <span>(4322)</span></div></a>
            <a href="#" class="a_old"><div class="menu_item_new">1 Otaqlı <span>(122)</span></div></a>
            <a href="#" class="a_old"><div class="menu_item_new">2 Otaqlı <span>(429)</span></div></a>
            <a href="#" class="a_old"><div class="menu_item_new">3 Otaqlı <span>(564)</span></div></a>
            <a href="#" class="a_old"><div class="menu_item_new">3 Otaqlı <span>(452)</span></div></a>
            <a href="#" class="a_old"><div class="menu_item_new">5 Otaqlı <span>(221)</span></div></a>
            <a href="#" class="a_old"><div class="menu_item_new">+ Otaqlı <span>(179)</span></div></a>
    <div class="clearesta"></div>
    <a href="#" class="a_old"><div class="menu_item_villa">Evlər və villalar <span>(4322)</span></div></a>
    <a href="#" class="a_old"><div class="menu_item_villa">Bağlar <span>(4322)</span></div></a>
    <a href="#" class="a_old"><div class="menu_item_villa">Ofislər <span>(4322)</span></div></a>
    <a href="#" class="a_old"><div class="menu_item_villa">Obyektlər <span>(4322)</span></div></a>
    <a href="#" class="a_old"><div class="menu_item_villa">Qaraj <span>(4322)</span></div></a>
    <a href="#" class="a_old"><div class="menu_item_villa">Torpag <span>(4322)</span></div></a>




</div>-->
    </div>


<div id="search_box">
<div id="search_elems">
    Mən <select>
            <option>example</option>
        </select>

        <select>
            <option>example</option>
        </select>
    istəyirəm , Qiymət <input class="sr_price" type="text" placeholder="min"> - <input class="sr_price" type="text" placeholder="max">
    AZN,        <select name="search_room">
                  <option>otaq sayi</option>
                </select> ,
    <input type="text" class="sr_field"> - <input type="text" class="sr_field"> m<sup>2</sup>
     <input id="search_sub" type="submit" value=" A X T A R "> <span>2342 elan</span>
</div>
</div>
</div>
</body>
</html>