/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : stroyka

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2015-04-22 13:21:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `addition`
-- ----------------------------
DROP TABLE IF EXISTS `addition`;
CREATE TABLE `addition` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addition
-- ----------------------------
INSERT INTO `addition` VALUES ('1', 'Lift');
INSERT INTO `addition` VALUES ('2', 'Qaz');
INSERT INTO `addition` VALUES ('3', 'Kupça');
INSERT INTO `addition` VALUES ('4', 'Telefon');
INSERT INTO `addition` VALUES ('5', 'Mühafizə');
INSERT INTO `addition` VALUES ('6', 'Parking');

-- ----------------------------
-- Table structure for `area`
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', 'Abşeron');
INSERT INTO `area` VALUES ('2', 'Binəqədi');
INSERT INTO `area` VALUES ('3', 'Köhnə Günəşli');
INSERT INTO `area` VALUES ('4', 'Nizami');
INSERT INTO `area` VALUES ('5', 'Nərimanov');
INSERT INTO `area` VALUES ('6', 'Nəsimi');
INSERT INTO `area` VALUES ('7', 'Qaradağ');
INSERT INTO `area` VALUES ('8', 'Sabunçu');
INSERT INTO `area` VALUES ('9', 'Suraxanı');
INSERT INTO `area` VALUES ('10', 'Səbail');
INSERT INTO `area` VALUES ('11', 'Xətai');
INSERT INTO `area` VALUES ('12', 'Xəzər');
INSERT INTO `area` VALUES ('13', 'Yasamal');

-- ----------------------------
-- Table structure for `build_type`
-- ----------------------------
DROP TABLE IF EXISTS `build_type`;
CREATE TABLE `build_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `parent_id` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of build_type
-- ----------------------------
INSERT INTO `build_type` VALUES ('1', 'Mənzil', null);
INSERT INTO `build_type` VALUES ('2', 'Ev / Villa', null);
INSERT INTO `build_type` VALUES ('3', 'Bağ', null);
INSERT INTO `build_type` VALUES ('4', 'Ofis', null);
INSERT INTO `build_type` VALUES ('5', 'Qaraj', null);
INSERT INTO `build_type` VALUES ('6', 'Torpaq', null);
INSERT INTO `build_type` VALUES ('7', 'Obyekt', null);
INSERT INTO `build_type` VALUES ('8', 'Yeni Tikili', null);
INSERT INTO `build_type` VALUES ('9', 'Köhnə Tikili', null);

-- ----------------------------
-- Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', 'Astara');
INSERT INTO `city` VALUES ('2', 'Ağdaş');
INSERT INTO `city` VALUES ('3', 'Ağstafa');
INSERT INTO `city` VALUES ('4', 'Ağsu');
INSERT INTO `city` VALUES ('5', 'Bakı');
INSERT INTO `city` VALUES ('6', 'Balakən');
INSERT INTO `city` VALUES ('7', 'Beyləqan');
INSERT INTO `city` VALUES ('8', 'Biləsuvar');
INSERT INTO `city` VALUES ('9', 'Bərdə');
INSERT INTO `city` VALUES ('10', 'Cəlilabad');
INSERT INTO `city` VALUES ('11', 'Goranboy');
INSERT INTO `city` VALUES ('12', 'Göytəpə');
INSERT INTO `city` VALUES ('13', 'Göyçay');
INSERT INTO `city` VALUES ('14', 'Gəncə');
INSERT INTO `city` VALUES ('15', 'Hacıqabul');
INSERT INTO `city` VALUES ('16', 'Kürdəmir');
INSERT INTO `city` VALUES ('17', 'Lənkəran');
INSERT INTO `city` VALUES ('18', 'Masallı');
INSERT INTO `city` VALUES ('19', 'Mingəçevir');
INSERT INTO `city` VALUES ('20', 'Neftçala');
INSERT INTO `city` VALUES ('21', 'Oğuz');
INSERT INTO `city` VALUES ('22', 'Quba');
INSERT INTO `city` VALUES ('23', 'Qusar');
INSERT INTO `city` VALUES ('24', 'Qəbələ');
INSERT INTO `city` VALUES ('25', 'Saatlı');
INSERT INTO `city` VALUES ('26', 'Sabirabad');
INSERT INTO `city` VALUES ('27', 'Salyan');
INSERT INTO `city` VALUES ('28', 'Siyəzən');
INSERT INTO `city` VALUES ('29', 'Sumqayıt');
INSERT INTO `city` VALUES ('30', 'Tovuz');
INSERT INTO `city` VALUES ('31', 'Ucar');
INSERT INTO `city` VALUES ('32', 'Xaçmaz');
INSERT INTO `city` VALUES ('33', 'Xudat');
INSERT INTO `city` VALUES ('34', 'Xırdalan');
INSERT INTO `city` VALUES ('35', 'Xızı');
INSERT INTO `city` VALUES ('36', 'Yevlax');
INSERT INTO `city` VALUES ('37', 'Zaqatala');
INSERT INTO `city` VALUES ('38', 'Zərdab');
INSERT INTO `city` VALUES ('39', 'İmişli');
INSERT INTO `city` VALUES ('40', 'İsmayıllı');
INSERT INTO `city` VALUES ('41', 'Şabran');
INSERT INTO `city` VALUES ('42', 'Şamaxı');
INSERT INTO `city` VALUES ('43', 'Şirvan');
INSERT INTO `city` VALUES ('44', 'Şəki');
INSERT INTO `city` VALUES ('45', 'Şəmkir');

-- ----------------------------
-- Table structure for `list_sell`
-- ----------------------------
DROP TABLE IF EXISTS `list_sell`;
CREATE TABLE `list_sell` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `subway` varchar(255) DEFAULT NULL,
  `orient` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `detailed_info` text,
  `room` smallint(5) unsigned DEFAULT NULL,
  `field` smallint(5) unsigned DEFAULT NULL,
  `floor` smallint(5) unsigned DEFAULT NULL,
  `floor_all` smallint(5) unsigned DEFAULT NULL,
  `addition` varchar(255) DEFAULT NULL,
  `add_date` varchar(255) DEFAULT NULL,
  `prior_date` varchar(255) DEFAULT NULL,
  `prem_date` varchar(255) DEFAULT NULL,
  `is_new` varchar(255) DEFAULT NULL,
  `is_sold` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list_sell
-- ----------------------------

-- ----------------------------
-- Table structure for `orient`
-- ----------------------------
DROP TABLE IF EXISTS `orient`;
CREATE TABLE `orient` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orient
-- ----------------------------
INSERT INTO `orient` VALUES ('1', 'Bazar - Keşlə');
INSERT INTO `orient` VALUES ('2', 'Bazar - Nəsimi');
INSERT INTO `orient` VALUES ('3', 'Bazar - Şərq');
INSERT INTO `orient` VALUES ('4', 'Bazar - Təzə');
INSERT INTO `orient` VALUES ('5', 'Bazar - Yaşıl');
INSERT INTO `orient` VALUES ('6', 'Biznes Mərkəzi - AF Business House');
INSERT INTO `orient` VALUES ('7', 'Biznes Mərkəzi - AGA Business Center');
INSERT INTO `orient` VALUES ('8', 'Biznes Mərkəzi - Babək Plaza');
INSERT INTO `orient` VALUES ('9', 'Biznes Mərkəzi - Bridge Plaza');
INSERT INTO `orient` VALUES ('10', 'Biznes Mərkəzi - Caspian Plaza');
INSERT INTO `orient` VALUES ('11', 'Biznes Mərkəzi - Çıraq Plaza');
INSERT INTO `orient` VALUES ('12', 'Biznes Mərkəzi - Crystal Plaza');
INSERT INTO `orient` VALUES ('13', 'Biznes Mərkəzi - Dalğa Plaza');
INSERT INTO `orient` VALUES ('14', 'Biznes Mərkəzi - Demirchi Tower');
INSERT INTO `orient` VALUES ('15', 'Biznes Mərkəzi - Hyatt Regency');
INSERT INTO `orient` VALUES ('16', 'Biznes Mərkəzi - ISR Plaza');
INSERT INTO `orient` VALUES ('17', 'Biznes Mərkəzi - Landmark');
INSERT INTO `orient` VALUES ('18', 'Biznes Mərkəzi - Port Baku');
INSERT INTO `orient` VALUES ('19', 'Biznes Mərkəzi - World Business Center');
INSERT INTO `orient` VALUES ('20', 'Digər - Beş Mərtəbə');
INSERT INTO `orient` VALUES ('21', 'Digər - İçəri Şəhər');
INSERT INTO `orient` VALUES ('22', 'Digər - Neapol dairəsi');
INSERT INTO `orient` VALUES ('23', 'Digər - Qələbə dairəsi');
INSERT INTO `orient` VALUES ('24', 'Digər - Sirk');
INSERT INTO `orient` VALUES ('25', 'Digər - Ukrayna dairəsi');
INSERT INTO `orient` VALUES ('26', 'Digər - Zoopark');
INSERT INTO `orient` VALUES ('27', 'Heykəl - A.S.Puşkin');
INSERT INTO `orient` VALUES ('28', 'Heykəl - A.Sultanova');
INSERT INTO `orient` VALUES ('29', 'Heykəl - C.Cabbarlı');
INSERT INTO `orient` VALUES ('30', 'Heykəl - F.Əmirov');
INSERT INTO `orient` VALUES ('31', 'Heykəl - H.Cavid');
INSERT INTO `orient` VALUES ('32', 'Heykəl - H.Əliyev');
INSERT INTO `orient` VALUES ('33', 'Heykəl - Koroğlu');
INSERT INTO `orient` VALUES ('34', 'Heykəl - M.Ə.Sabir');
INSERT INTO `orient` VALUES ('35', 'Heykəl - M.F.Axundov');
INSERT INTO `orient` VALUES ('36', 'Heykəl - M.Füzuli');
INSERT INTO `orient` VALUES ('37', 'Heykəl - M.Hüseynzadə');
INSERT INTO `orient` VALUES ('38', 'Heykəl - N.Nərimanov');
INSERT INTO `orient` VALUES ('39', 'Heykəl - Nəsimi');
INSERT INTO `orient` VALUES ('40', 'Heykəl - Nizami Gəncəvi');
INSERT INTO `orient` VALUES ('41', 'Heykəl - S.Vurğun');
INSERT INTO `orient` VALUES ('42', 'Heykəl - Ü.Hacıbəyov');
INSERT INTO `orient` VALUES ('43', 'Heykəl - X.Natavan');
INSERT INTO `orient` VALUES ('44', 'Kinoteatr - Araz');
INSERT INTO `orient` VALUES ('45', 'Kinoteatr - Azərbaycan');
INSERT INTO `orient` VALUES ('46', 'Kinoteatr - Dostluq');
INSERT INTO `orient` VALUES ('47', 'Kinoteatr - Nizami');
INSERT INTO `orient` VALUES ('48', 'Kinoteatr - Vətən');
INSERT INTO `orient` VALUES ('49', 'Mehmanxana - Absheron Marriott');
INSERT INTO `orient` VALUES ('50', 'Mehmanxana - Ambassador');
INSERT INTO `orient` VALUES ('51', 'Mehmanxana - Avropa');
INSERT INTO `orient` VALUES ('52', 'Mehmanxana - Fairmont');
INSERT INTO `orient` VALUES ('53', 'Mehmanxana - Four Seasons');
INSERT INTO `orient` VALUES ('54', 'Mehmanxana - Hilton');
INSERT INTO `orient` VALUES ('55', 'Mehmanxana - Hyatt Regency');
INSERT INTO `orient` VALUES ('56', 'Mehmanxana - Park Inn');
INSERT INTO `orient` VALUES ('57', 'Mehmanxana - Qafqaz Resort');
INSERT INTO `orient` VALUES ('58', 'Nazirlik - Daxili İşlər');
INSERT INTO `orient` VALUES ('59', 'Nazirlik - Ədliyyə');
INSERT INTO `orient` VALUES ('60', 'Nazirlik - Ekologiya və Təbii Sərvətlər');
INSERT INTO `orient` VALUES ('61', 'Nazirlik - Əmək və Əhalinin Sosial Müdafiəsi');
INSERT INTO `orient` VALUES ('62', 'Nazirlik - Energetika');
INSERT INTO `orient` VALUES ('63', 'Nazirlik - Fövqəladə Hallar');
INSERT INTO `orient` VALUES ('64', 'Nazirlik - Gənclər və İdman');
INSERT INTO `orient` VALUES ('65', 'Nazirlik - İqtisadi İnkişaf');
INSERT INTO `orient` VALUES ('66', 'Nazirlik - Maliyyə');
INSERT INTO `orient` VALUES ('67', 'Nazirlik - Milli Təhlükəsizlik');
INSERT INTO `orient` VALUES ('68', 'Nazirlik - Müdafiə Sənayesi');
INSERT INTO `orient` VALUES ('69', 'Nazirlik - Nəqliyyat');
INSERT INTO `orient` VALUES ('70', 'Nazirlik - Rabitə və Yüksək Texnologiyalar');
INSERT INTO `orient` VALUES ('71', 'Nazirlik - Səhiyyə');
INSERT INTO `orient` VALUES ('72', 'Nazirlik - Təhsil');
INSERT INTO `orient` VALUES ('73', 'Nazirlik - Vergilər');
INSERT INTO `orient` VALUES ('74', 'Nazirlik - Xarici İşlər');
INSERT INTO `orient` VALUES ('75', 'Park - Ayna Sultanova adına');
INSERT INTO `orient` VALUES ('76', 'Park - Dağüstü park');
INSERT INTO `orient` VALUES ('77', 'Park - Dədə Qorqud parkı');
INSERT INTO `orient` VALUES ('78', 'Park - Dənizkənarı Milli park');
INSERT INTO `orient` VALUES ('79', 'Park - Fəvvarələr meydanı');
INSERT INTO `orient` VALUES ('80', 'Park - Heydər Əliyev adına');
INSERT INTO `orient` VALUES ('81', 'Park - Hüseyn Cavid adına');
INSERT INTO `orient` VALUES ('82', 'Park - Molokan bağı');
INSERT INTO `orient` VALUES ('83', 'Park - Montin adına');
INSERT INTO `orient` VALUES ('84', 'Park - Musabəyov parkı');
INSERT INTO `orient` VALUES ('85', 'Park - Qış parkı');
INSERT INTO `orient` VALUES ('86', 'Park - Qubernator bağı');
INSERT INTO `orient` VALUES ('87', 'Park - Sahil bağı');
INSERT INTO `orient` VALUES ('88', 'Park - Şəlalə parkı');
INSERT INTO `orient` VALUES ('89', 'Park - Səməd Vurğun adına');
INSERT INTO `orient` VALUES ('90', 'Park - Zabitlər parkı');
INSERT INTO `orient` VALUES ('91', 'Park - Zərifə Əliyeva adına');
INSERT INTO `orient` VALUES ('92', 'Park - Zorge adına');
INSERT INTO `orient` VALUES ('93', 'Səfirlik - ABŞ');
INSERT INTO `orient` VALUES ('94', 'Səfirlik - Rusiya');
INSERT INTO `orient` VALUES ('95', 'Səfirlik - Türkiyə');
INSERT INTO `orient` VALUES ('96', 'Stadion - Bakcell Arena');
INSERT INTO `orient` VALUES ('97', 'Stadion - Olimpia Stadionu');
INSERT INTO `orient` VALUES ('98', 'Stadion - Şəfa');
INSERT INTO `orient` VALUES ('99', 'Stadion - Tofiq Bəhramov adına');
INSERT INTO `orient` VALUES ('100', 'Supermarket - Araz');
INSERT INTO `orient` VALUES ('101', 'Supermarket - Bazarstore');
INSERT INTO `orient` VALUES ('102', 'Supermarket - Bizim Market');
INSERT INTO `orient` VALUES ('103', 'Supermarket - Bolmart');
INSERT INTO `orient` VALUES ('104', 'Supermarket - Citimart');
INSERT INTO `orient` VALUES ('105', 'Supermarket - Everest Market');
INSERT INTO `orient` VALUES ('106', 'Supermarket - Favorit Market');
INSERT INTO `orient` VALUES ('107', 'Supermarket - Fresco');
INSERT INTO `orient` VALUES ('108', 'Supermarket - Grandmart');
INSERT INTO `orient` VALUES ('109', 'Supermarket - Kontinental');
INSERT INTO `orient` VALUES ('110', 'Supermarket - Lider-AS');
INSERT INTO `orient` VALUES ('111', 'Supermarket - Makromart');
INSERT INTO `orient` VALUES ('112', 'Supermarket - Neptun');
INSERT INTO `orient` VALUES ('113', 'Supermarket - Rahat Market');
INSERT INTO `orient` VALUES ('114', 'Supermarket - Sebet Market');
INSERT INTO `orient` VALUES ('115', 'Telekanal - ANS');
INSERT INTO `orient` VALUES ('116', 'Telekanal - ATV');
INSERT INTO `orient` VALUES ('117', 'Telekanal - AZTV');
INSERT INTO `orient` VALUES ('118', 'Telekanal - İctimai');
INSERT INTO `orient` VALUES ('119', 'Telekanal - Lider');
INSERT INTO `orient` VALUES ('120', 'Telekanal - Space');
INSERT INTO `orient` VALUES ('121', 'Ticarət mərkəzləri - 28 Mall');
INSERT INTO `orient` VALUES ('122', 'Ticarət mərkəzləri - AF Mall');
INSERT INTO `orient` VALUES ('123', 'Ticarət mərkəzləri - AMAY');
INSERT INTO `orient` VALUES ('124', 'Ticarət mərkəzləri - Aygun City');
INSERT INTO `orient` VALUES ('125', 'Ticarət mərkəzləri - Bakı univermağı');
INSERT INTO `orient` VALUES ('126', 'Ticarət mərkəzləri - Baku Mall');
INSERT INTO `orient` VALUES ('127', 'Ticarət mərkəzləri - Binə');
INSERT INTO `orient` VALUES ('128', 'Ticarət mərkəzləri - Caspian Shopping Center');
INSERT INTO `orient` VALUES ('129', 'Ticarət mərkəzləri - Elit');
INSERT INTO `orient` VALUES ('130', 'Ticarət mərkəzləri - Metropark');
INSERT INTO `orient` VALUES ('131', 'Ticarət mərkəzləri - Moskva univermağı');
INSERT INTO `orient` VALUES ('132', 'Ticarət mərkəzləri - MUM');
INSERT INTO `orient` VALUES ('133', 'Ticarət mərkəzləri - Nargiz');
INSERT INTO `orient` VALUES ('134', 'Ticarət mərkəzləri - Park Bulvar');
INSERT INTO `orient` VALUES ('135', 'Ticarət mərkəzləri - Port Baku Mall');
INSERT INTO `orient` VALUES ('136', 'Ticarət mərkəzləri - Sədərək');
INSERT INTO `orient` VALUES ('137', 'Ticarət mərkəzləri - Şüvəlan Park');
INSERT INTO `orient` VALUES ('138', 'Ticarət mərkəzləri - Xəqani');
INSERT INTO `orient` VALUES ('139', 'Universitet - ADA');
INSERT INTO `orient` VALUES ('140', 'Universitet - Aviasiya Akademiyası');
INSERT INTO `orient` VALUES ('141', 'Universitet - BDU');
INSERT INTO `orient` VALUES ('142', 'Universitet - Dillər');
INSERT INTO `orient` VALUES ('143', 'Universitet - Dövlət Neft Akademiyası');
INSERT INTO `orient` VALUES ('144', 'Universitet - İdarəçilik Akademiyası');
INSERT INTO `orient` VALUES ('145', 'Universitet - İqtisad');
INSERT INTO `orient` VALUES ('146', 'Universitet - Konservatoriya');
INSERT INTO `orient` VALUES ('147', 'Universitet - Kooperasiya');
INSERT INTO `orient` VALUES ('148', 'Universitet - Memarlıq və İnşaat ');
INSERT INTO `orient` VALUES ('149', 'Universitet - Odlar Yurdu');
INSERT INTO `orient` VALUES ('150', 'Universitet - Pedaqoji');
INSERT INTO `orient` VALUES ('151', 'Universitet - Qafqaz');
INSERT INTO `orient` VALUES ('152', 'Universitet - Qərb');
INSERT INTO `orient` VALUES ('153', 'Universitet - Slavyan');
INSERT INTO `orient` VALUES ('154', 'Universitet - Təfəkkür');
INSERT INTO `orient` VALUES ('155', 'Universitet - Texniki');
INSERT INTO `orient` VALUES ('156', 'Universitet - Tibb');
INSERT INTO `orient` VALUES ('157', 'Universitet - Xəzər');

-- ----------------------------
-- Table structure for `settlement`
-- ----------------------------
DROP TABLE IF EXISTS `settlement`;
CREATE TABLE `settlement` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settlement
-- ----------------------------
INSERT INTO `settlement` VALUES ('1', '1-ci Mikrorayon');
INSERT INTO `settlement` VALUES ('2', '2-ci Alatava');
INSERT INTO `settlement` VALUES ('3', '2-ci Mikrorayon');
INSERT INTO `settlement` VALUES ('4', '20-ci Sahə');
INSERT INTO `settlement` VALUES ('5', '3-cü Mikrorayon');
INSERT INTO `settlement` VALUES ('6', '4-cü Mikrorayon');
INSERT INTO `settlement` VALUES ('7', '5-ci Mikrorayon');
INSERT INTO `settlement` VALUES ('8', '6-cı Mikrorayon');
INSERT INTO `settlement` VALUES ('9', '7-ci Mikrorayon');
INSERT INTO `settlement` VALUES ('10', '8-ci Kilometr');
INSERT INTO `settlement` VALUES ('11', '8-ci Mikrorayon');
INSERT INTO `settlement` VALUES ('12', '9-cu Mikrorayon');
INSERT INTO `settlement` VALUES ('13', 'Badamdar');
INSERT INTO `settlement` VALUES ('14', 'Bakıxanov');
INSERT INTO `settlement` VALUES ('15', 'Bayıl');
INSERT INTO `settlement` VALUES ('16', 'Bibi Heybət');
INSERT INTO `settlement` VALUES ('17', 'Bilgəh');
INSERT INTO `settlement` VALUES ('18', 'Biləcəri');
INSERT INTO `settlement` VALUES ('19', 'Binə');
INSERT INTO `settlement` VALUES ('20', 'Binəqədi');
INSERT INTO `settlement` VALUES ('21', 'Buzovna');
INSERT INTO `settlement` VALUES ('22', 'Böyükşor');
INSERT INTO `settlement` VALUES ('23', 'Dübəndi');
INSERT INTO `settlement` VALUES ('24', 'Fatmayı');
INSERT INTO `settlement` VALUES ('25', 'Goradil');
INSERT INTO `settlement` VALUES ('26', 'Günəşli');
INSERT INTO `settlement` VALUES ('27', 'Gürgən');
INSERT INTO `settlement` VALUES ('28', 'Hökməli');
INSERT INTO `settlement` VALUES ('29', 'Hövsan');
INSERT INTO `settlement` VALUES ('30', 'Həzi Aslanov');
INSERT INTO `settlement` VALUES ('31', 'Keşlə');
INSERT INTO `settlement` VALUES ('32', 'Kirov');
INSERT INTO `settlement` VALUES ('33', 'Kubinka');
INSERT INTO `settlement` VALUES ('34', 'Köhnə Corat');
INSERT INTO `settlement` VALUES ('35', 'Köhnə Günəşli');
INSERT INTO `settlement` VALUES ('36', 'Kürdəxanı');
INSERT INTO `settlement` VALUES ('37', 'Lökbatan');
INSERT INTO `settlement` VALUES ('38', 'M.Ə.Rəsulzadə');
INSERT INTO `settlement` VALUES ('39', 'Masazır');
INSERT INTO `settlement` VALUES ('40', 'Massiv A');
INSERT INTO `settlement` VALUES ('41', 'Massiv B');
INSERT INTO `settlement` VALUES ('42', 'Massiv V');
INSERT INTO `settlement` VALUES ('43', 'Massiv G');
INSERT INTO `settlement` VALUES ('44', 'Massiv D');
INSERT INTO `settlement` VALUES ('45', 'Maştağa');
INSERT INTO `settlement` VALUES ('46', 'Mehdiabad');
INSERT INTO `settlement` VALUES ('47', 'Montin');
INSERT INTO `settlement` VALUES ('48', 'Müşviqabad');
INSERT INTO `settlement` VALUES ('49', 'Mərdəkan');
INSERT INTO `settlement` VALUES ('50', 'NZS');
INSERT INTO `settlement` VALUES ('51', 'Nardaran');
INSERT INTO `settlement` VALUES ('52', 'Novxanı');
INSERT INTO `settlement` VALUES ('53', 'Pirşağı');
INSERT INTO `settlement` VALUES ('54', 'Puta');
INSERT INTO `settlement` VALUES ('55', 'Qala');
INSERT INTO `settlement` VALUES ('56', 'Qara Şəhər');
INSERT INTO `settlement` VALUES ('57', 'Qaraçuxur');
INSERT INTO `settlement` VALUES ('58', 'Qobustan');
INSERT INTO `settlement` VALUES ('59', 'Ramana');
INSERT INTO `settlement` VALUES ('60', 'Sabunçu');
INSERT INTO `settlement` VALUES ('61', 'Sahil');
INSERT INTO `settlement` VALUES ('62', 'Saray');
INSERT INTO `settlement` VALUES ('63', 'Sulutəpə');
INSERT INTO `settlement` VALUES ('64', 'Suraxanı');
INSERT INTO `settlement` VALUES ('65', 'Səngəçal');
INSERT INTO `settlement` VALUES ('66', 'Türkən');
INSERT INTO `settlement` VALUES ('67', 'Xocəsən');
INSERT INTO `settlement` VALUES ('68', 'Xutor');
INSERT INTO `settlement` VALUES ('69', 'Yasamal');
INSERT INTO `settlement` VALUES ('70', 'Yeni Corat');
INSERT INTO `settlement` VALUES ('71', 'Yeni Günəşli');
INSERT INTO `settlement` VALUES ('72', 'Yeni Ramana');
INSERT INTO `settlement` VALUES ('73', 'Yeni Suraxanı');
INSERT INTO `settlement` VALUES ('74', 'Yeni Yasamal');
INSERT INTO `settlement` VALUES ('75', 'Zabrat');
INSERT INTO `settlement` VALUES ('76', 'Zagulba');
INSERT INTO `settlement` VALUES ('77', 'Zirə');
INSERT INTO `settlement` VALUES ('78', 'Zığ');
INSERT INTO `settlement` VALUES ('79', 'Çiçək');
INSERT INTO `settlement` VALUES ('80', 'Şağan');
INSERT INTO `settlement` VALUES ('81', 'Şimal DRES');
INSERT INTO `settlement` VALUES ('82', 'Şubani');
INSERT INTO `settlement` VALUES ('83', 'Şüvəlan');
INSERT INTO `settlement` VALUES ('84', 'Şərq');
INSERT INTO `settlement` VALUES ('85', 'Əhmədli');
INSERT INTO `settlement` VALUES ('86', 'Ələt');
INSERT INTO `settlement` VALUES ('87', 'Əmircan');

-- ----------------------------
-- Table structure for `subway`
-- ----------------------------
DROP TABLE IF EXISTS `subway`;
CREATE TABLE `subway` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subway
-- ----------------------------
INSERT INTO `subway` VALUES ('1', 'İçəri şəhər m.');
INSERT INTO `subway` VALUES ('2', 'Sahil m.');
INSERT INTO `subway` VALUES ('3', '28 May m.');
INSERT INTO `subway` VALUES ('4', 'Gənclik m.');
INSERT INTO `subway` VALUES ('5', 'Nəriman Nərimanov m.');
INSERT INTO `subway` VALUES ('6', 'Ulduz m.');
INSERT INTO `subway` VALUES ('7', 'Koroğlu m. ');
INSERT INTO `subway` VALUES ('8', 'Qara Qarayev m.');
INSERT INTO `subway` VALUES ('9', 'Neftçilər m.');
INSERT INTO `subway` VALUES ('10', 'Bakmil m.');
INSERT INTO `subway` VALUES ('11', 'Xalqlar Dostluğu m.');
INSERT INTO `subway` VALUES ('12', 'Əhmədli m.');
INSERT INTO `subway` VALUES ('13', 'Həzi Aslanov m.');
INSERT INTO `subway` VALUES ('14', 'Şah İsmayıl Xətai m.');
INSERT INTO `subway` VALUES ('15', 'Çəfər Cabbarlı m.');
INSERT INTO `subway` VALUES ('16', 'Nizami m.');
INSERT INTO `subway` VALUES ('17', 'Elmlər Akademiyası m.');
INSERT INTO `subway` VALUES ('18', 'İnşaatçılar m.');
INSERT INTO `subway` VALUES ('19', '20 Yanvar m.');
INSERT INTO `subway` VALUES ('20', 'Memar Əcəmi m.');
INSERT INTO `subway` VALUES ('21', 'Nəsimi m.');
INSERT INTO `subway` VALUES ('22', 'Azadlıq Prospekti m.');
INSERT INTO `subway` VALUES ('23', 'Dərnəgül m.');
