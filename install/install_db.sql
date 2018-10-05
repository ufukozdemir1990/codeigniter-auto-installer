/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : test_ufuk_2

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 05/10/2018 18:17:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ayarlar
-- ----------------------------
DROP TABLE IF EXISTS `ayarlar`;
CREATE TABLE `ayarlar` (
  `ayar_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `website` char(100) NOT NULL,
  `google_analytics` char(30) NOT NULL,
  `google_maps_api_key` char(100) NOT NULL,
  `mail_baslik` char(100) NOT NULL,
  `smtp_host` char(50) NOT NULL,
  `smtp_port` char(5) NOT NULL,
  `smtp_user` char(50) NOT NULL,
  `smtp_pass` char(50) NOT NULL,
  PRIMARY KEY (`ayar_id`),
  UNIQUE KEY `ayar_id` (`ayar_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ayarlar
-- ----------------------------
BEGIN;
INSERT INTO `ayarlar` VALUES (1, 'http://localhost:8888/bellasto.com', 'UA-60964639-1', 'AIzaSyBwarlVfqlWKfonKl9T0wr9VGC0ynvbdiU', 'Tosun Tarım Makinaları İzmir', 'mail.bellasto.com', '25', 'website@bellasto.com', ').6XG,M1&L~w');
COMMIT;

-- ----------------------------
-- Table structure for dil
-- ----------------------------
DROP TABLE IF EXISTS `dil`;
CREATE TABLE `dil` (
  `dil_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `dil_durum` tinyint(1) unsigned NOT NULL,
  `dil_baslik` char(20) NOT NULL,
  `dil_kisaltma` char(2) NOT NULL,
  PRIMARY KEY (`dil_id`),
  UNIQUE KEY `dil_id` (`dil_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dil
-- ----------------------------
BEGIN;
INSERT INTO `dil` VALUES (1, 1, 'Turkish', 'TR');
INSERT INTO `dil` VALUES (2, 1, 'English', 'EN');
COMMIT;

-- ----------------------------
-- Table structure for etiketler
-- ----------------------------
DROP TABLE IF EXISTS `etiketler`;
CREATE TABLE `etiketler` (
  `etiket_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `etiket_dil` char(2) NOT NULL,
  `etiket_sira` tinyint(2) unsigned NOT NULL,
  `etiket_adi` char(40) NOT NULL,
  PRIMARY KEY (`etiket_id`),
  UNIQUE KEY `etiket_id` (`etiket_id`),
  KEY `etiket_dil` (`etiket_dil`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for haberler
-- ----------------------------
DROP TABLE IF EXISTS `haberler`;
CREATE TABLE `haberler` (
  `haber_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `haber_dil` char(2) NOT NULL,
  `haber_durum` tinyint(3) unsigned NOT NULL,
  `haber_tarih` date NOT NULL,
  `haber_baslik` char(100) NOT NULL,
  `haber_aciklama` text NOT NULL,
  `haber_resim` char(100) NOT NULL,
  `haber_link` char(100) NOT NULL,
  UNIQUE KEY `haber_id` (`haber_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for hakkimizda
-- ----------------------------
DROP TABLE IF EXISTS `hakkimizda`;
CREATE TABLE `hakkimizda` (
  `hakkimizda_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `hakkimizda_dil` char(2) NOT NULL,
  `hakkimizda_baslik` char(50) NOT NULL,
  `hakkimizda_aciklama` text NOT NULL,
  `hakkimizda_resim` char(50) NOT NULL,
  PRIMARY KEY (`hakkimizda_id`),
  UNIQUE KEY `hakkimizda_id` (`hakkimizda_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hakkimizda
-- ----------------------------
BEGIN;
INSERT INTO `hakkimizda` VALUES (1, 'tr', 'Hakkımızda', '<p>Gelişen ve genişleyen tarım potansiyelimize paralel olarak, günümüz teknolojisine uygun tarım makinelerine duyulan ihtiyaçlar sürekli artmaktadır.</p>\n\n<p>Tarım makinaları üretimine 1978 yılında Tire Küçük Sanayi sitesinde 40 m² bir imalathanede başlayan firmamız, 30 yılı aşkın deneyim ve tecrübesi ile yurtta ve dünyada gelişen tarım teknolojilerinin yakın takipçisi olmaya özen göstermiştir. Teknolojinin gelişimine ayak uydurarak kendinisini sürekli yenilemiş, yapmış olduğu yatırımları ile yeni üretim kalemleri ile ülkemizde ilkleri gerçekleştirmiştir.</p>\n\n<p>Ülkemiz çiftçisinin hizmetine ilk <strong>Tek Sıralı Mısır Silaj Makinasını</strong> yine ilk <strong>Yem Karma ve Dağıtma Römorku\'nu</strong> sunmaktan gurur duyuyoruz ve çiftçilerimize yeni teknolojileri aynı şekilde sunmaya devam ediyoruz.</p>\n\n<p>Verimlilik artırma ve çiftçimizin teknolojiye adaptasyon ve ulaşabilirliğini kolaylaştırmak amacı ile müşteri memnuniyetini her şeyin üzerinde gören sağduyulu, katılımcı, yenilikçi ve tecrübeli yönetici ve teknik kadrosu, yaygın dağıtım ağı ve bilinçli müşterileri ile ülke tarımının ilerlemesi için, payına düşen katkıyı başarıyla sağlamaya devam etmektedir.</p>\n\n<h3>Misyonumuz..</h3>\n\n<p>Paydaşlarımızın mutluluğunu sağlayacak çıktıları, ülkemizin, toplumumuzun ve insanlığın hizmetine sunmak.</p>\n\n<h3>Vizyonumuz..</h3>\n\n<p>Tarım makineleri sektöründe, uluslararası standartlardaki ürünlerimiz ve temel değerlerimiz ile bölgemizde lider bir üretici, ülkemizde güçlü, saygın ve örnek bir kuruluş, küresel ekonomide gelişmelere kayıtsız kalmayan bir oyuncu olmak.</p>\n\n<h3>Temel Değerlerimiz..</h3>\n\n<ul>\n	<li>Evrensel ve toplumsal değerlere saygılı, yenilikçi, katılımcı insan kaynağımız temel sermayemizdir.</li>\n	<li>Ürünlerimizi ve süreçlerimizi sürekli geliştirerek müşteri memnuniyetini sağlamak.</li>\n	<li>Ülke, toplum ve çevre menfaatlerini gözetmek temel ilkelerimizdendir.</li>\n</ul>\n', 'hakkimizda-1518547329.jpg');
INSERT INTO `hakkimizda` VALUES (2, 'en', 'About Us', '<p>In parallel with developing and expanding our agricultural potential, the need for appropriate agricultural machinery to today\'s technology is constantly increasing.</p>\n\n<p>In 1978 our company started producing agricultural machineries in a small industrial site in the workshop 40 m². With over 30 years of experience in domestic and international markets our company was careful about being a close follower of developing agricultural technologies. We always renewed ourself by catching the pace of the new technologies and by the investments of new plants and the inventions of new products we would be able to realize the firsts in our country.</p>\n\n<p>We are proud of to offer our country, the first Single Row Maize Harvester and first Feed Mixer and we keep producing new technologies for the farmers.</p>\n\n<p>With the purpose of improving efficiency and adaptation and accessibility of the farmers to new technologies and with our experienced management and technical staff who cares customer satisfaction at most and who is prudent,participant,innovater and with common distribution network and with conscious farmers we play our role successfully to improve the farming methods in domestic market and in International market.</p>\n\n<h3>Our Mission..</h3>\n\n<p>Outputs to ensure the happiness of our stakeholders, our country, our society and present it to the service of humanity.</p>\n\n<h3>Our Vision..</h3>\n\n<p>Being a leading manufacturer in our region with our products and core values of international standards , being respected and exemplary organization in international market, being a player that remain indifferent to developments in the global economy.</p>\n\n<h3>Core Values..</h3>\n\n<ul>\n	<li>Respect the universal and social values, innovative, participatory human resources based on our capital.</li>\n	<li>Constantly improving our products and our processes to ensure customer satisfaction.</li>\n	<li>Country, society and the environment to protect the interests of our basic principle.</li>\n</ul>\n', 'about-us-1518547437.jpg');
COMMIT;

-- ----------------------------
-- Table structure for iletisim
-- ----------------------------
DROP TABLE IF EXISTS `iletisim`;
CREATE TABLE `iletisim` (
  `iletisim_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `iletisim_dil` char(2) NOT NULL,
  `telefon` char(30) NOT NULL,
  `telefon2` char(30) DEFAULT NULL,
  `fax` char(30) NOT NULL,
  `fax2` char(30) DEFAULT NULL,
  `mail` char(50) NOT NULL,
  `mail2` char(50) DEFAULT NULL,
  `adres` char(255) NOT NULL,
  `maps` text,
  UNIQUE KEY `iletisim_id` (`iletisim_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of iletisim
-- ----------------------------
BEGIN;
INSERT INTO `iletisim` VALUES (1, 'tr', '+90 (232) 512 63 34', '+90 (232) 512 09 10', '+90 (232) 512 04 45', '+90 (232) 512 04 45', 'info@bellasto.com', 'tarim@tarimgrup.com', 'Kurtuluş Mah. İsmail Taşlı Cad. No: 25/8 Tire - İzmir / TÜRKİYE', 'https://www.google.com/maps/dir//Atat%C3%BCrk+Mahallesi,+Tosun+Tar%C4%B1m,+Tire%2F%C4%B0zmir/@38.1049953,27.6797786,13z/data=!4m8!4m7!1m0!1m5!1m1!1s0x14b93cbe0e3325ed:0x1fb957802f00b5f!2m2!1d27.714798!2d38.104933');
INSERT INTO `iletisim` VALUES (2, 'en', '+90 (232) 512 63 34', '+90 (232) 512 09 10', '+90 (232) 512 04 45', '+90 (232) 512 04 45', 'info@bellasto.com', 'tarim@tarimgrup.com', 'Kurtulus Mah. Ismail Tasli Cad. No: 25/8 Tire - Izmir / TURKEY', 'https://www.google.com.tr/maps/place/Tosun+Tarım/@38.104933,27.7126093,17z/data=!3m1!4b1!4m5!3m4!1s0x14b93cbe0e3325ed:0x1fb957802f00b5f!8m2!3d38.104933!4d27.714798?hl=tr');
COMMIT;

-- ----------------------------
-- Table structure for ip_sayaci
-- ----------------------------
DROP TABLE IF EXISTS `ip_sayaci`;
CREATE TABLE `ip_sayaci` (
  `sayac_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tarih` date NOT NULL,
  `tiklama` smallint(5) unsigned NOT NULL,
  `ip` char(15) NOT NULL,
  PRIMARY KEY (`sayac_id`) USING BTREE,
  UNIQUE KEY `sayac_id` (`sayac_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for notlar
-- ----------------------------
DROP TABLE IF EXISTS `notlar`;
CREATE TABLE `notlar` (
  `not_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `yonetici_id_fk` tinyint(1) unsigned NOT NULL,
  `not_aciklama` char(100) NOT NULL,
  PRIMARY KEY (`not_id`) USING BTREE,
  UNIQUE KEY `not_id` (`not_id`) USING BTREE,
  KEY `yonetici_id_fk` (`yonetici_id_fk`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for online_ziyaretci
-- ----------------------------
DROP TABLE IF EXISTS `online_ziyaretci`;
CREATE TABLE `online_ziyaretci` (
  `online_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(50) NOT NULL,
  `tarih` int(11) unsigned NOT NULL,
  `tarayici_bilgileri` char(50) NOT NULL,
  PRIMARY KEY (`online_id`),
  UNIQUE KEY `online_id` (`online_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for platform
-- ----------------------------
DROP TABLE IF EXISTS `platform`;
CREATE TABLE `platform` (
  `platform_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `tarih` date NOT NULL,
  `mobil` smallint(5) unsigned NOT NULL,
  `tablet` smallint(5) unsigned NOT NULL,
  `web` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`platform_id`) USING BTREE,
  UNIQUE KEY `platform_id` (`platform_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for site_seo
-- ----------------------------
DROP TABLE IF EXISTS `site_seo`;
CREATE TABLE `site_seo` (
  `seo_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `seo_dil` char(2) NOT NULL,
  `site_basligi` char(70) NOT NULL,
  `site_aciklama` char(255) NOT NULL,
  `anahtar_kelimeler` text NOT NULL,
  `slogan` char(100) NOT NULL,
  PRIMARY KEY (`seo_id`),
  UNIQUE KEY `seo_id` (`seo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site_seo
-- ----------------------------
BEGIN;
INSERT INTO `site_seo` VALUES (1, 'tr', 'Bellasto Sağlık Turizm Organizasyon', 'Bellasto Sağlık Turizm Organizasyon Saç Ekimi, Protez Saç, Saç Dökülmeleri, Sağlık Turizm ve Organizasyon konusunda uzman kadrosuyla İzmir\'de sizlere hizmet vermektedir.', 'saç ekimi izmir,izmir saç ekimi,saç protezi izmir,izmir saç protezi,saç protezi,saç bakım merkezleri,saç bakım merkezleri izmir,saç bakım merkezi izmir,saç ekim merkezleri,saç ekim merkezleri izmir,izmir saç ekim fiyatları,saç ekimi izmir fiyatları,protez saç merkezleri,protez saç merkezleri izmir,saç ekimi nasıl yapılır,protez saç izmir,protez saç fiyatları izmir', 'Bellasto Sağlık Turizm Organizasyon');
INSERT INTO `site_seo` VALUES (2, 'en', 'Tosun Farm Machines Izmir', 'In parallel with developing and expanding our agricultural potential, the need for appropriate agricultural machinery to today\'s technology is constantly increasing.', 'tosun tarım, tarım makinaları, yem karma makinası, sıvı gübre pompası, silaj paketleme, silaj balyalama, katı gübre, gübre dağıtma, römork, ahır sıyırma, traktör', 'Livestock Machinery and Equipments');
COMMIT;

-- ----------------------------
-- Table structure for slider
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider` (
  `slider_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `slider_dil` char(2) NOT NULL,
  `kategori_id_fk` tinyint(3) unsigned NOT NULL,
  `urun_id_fk` smallint(5) unsigned NOT NULL,
  `slider_durum` tinyint(1) unsigned NOT NULL,
  `slider_sira` tinyint(3) unsigned NOT NULL,
  `slider_baslik_durum` tinyint(1) unsigned NOT NULL,
  `slider_baslik` char(60) NOT NULL,
  `slider_resim` char(60) NOT NULL,
  UNIQUE KEY `slider_id` (`slider_id`),
  KEY `kategori_id_fk` (`kategori_id_fk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sosyal_medya
-- ----------------------------
DROP TABLE IF EXISTS `sosyal_medya`;
CREATE TABLE `sosyal_medya` (
  `hesap_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `hesap_sira` tinyint(2) unsigned NOT NULL,
  `hesap_adi` char(30) NOT NULL,
  `hesap_linki` char(200) NOT NULL,
  PRIMARY KEY (`hesap_id`),
  UNIQUE KEY `hesap_id` (`hesap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for toplam_sayac
-- ----------------------------
DROP TABLE IF EXISTS `toplam_sayac`;
CREATE TABLE `toplam_sayac` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `toplam_tekil` mediumint(7) unsigned NOT NULL,
  `toplam_cogul` mediumint(7) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for urun_etiketler
-- ----------------------------
DROP TABLE IF EXISTS `urun_etiketler`;
CREATE TABLE `urun_etiketler` (
  `etiket_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `urun_id_fk` smallint(5) NOT NULL,
  `etiket_adi` char(50) NOT NULL,
  `etiket_link` char(50) NOT NULL,
  PRIMARY KEY (`etiket_id`),
  UNIQUE KEY `etiket_id` (`etiket_id`),
  KEY `urun_id_fk` (`urun_id_fk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for urun_kategori
-- ----------------------------
DROP TABLE IF EXISTS `urun_kategori`;
CREATE TABLE `urun_kategori` (
  `kategori_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `kategori_dil` char(2) NOT NULL,
  `kategori_durum` tinyint(1) unsigned NOT NULL,
  `kategori_sira` tinyint(3) unsigned NOT NULL,
  `kategori_adi` char(50) NOT NULL,
  `kategori_link` char(50) NOT NULL,
  `kategori_ana_menu` tinyint(1) unsigned NOT NULL,
  UNIQUE KEY `kategori_id` (`kategori_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for urun_resimler
-- ----------------------------
DROP TABLE IF EXISTS `urun_resimler`;
CREATE TABLE `urun_resimler` (
  `resim_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `urun_id_fk` smallint(5) unsigned NOT NULL,
  `resim_sira` smallint(5) unsigned NOT NULL,
  `resim_adi` char(100) NOT NULL,
  PRIMARY KEY (`resim_id`),
  UNIQUE KEY `resim_id` (`resim_id`),
  KEY `urun_id_fk` (`urun_id_fk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for urunler
-- ----------------------------
DROP TABLE IF EXISTS `urunler`;
CREATE TABLE `urunler` (
  `urun_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `urun_dil` char(2) NOT NULL,
  `urun_sira` smallint(5) unsigned NOT NULL,
  `kategori_id_fk` tinyint(3) unsigned NOT NULL,
  `urun_durum` tinyint(1) unsigned NOT NULL,
  `urun_hit` smallint(5) unsigned NOT NULL,
  `urun_adi` char(60) NOT NULL,
  `urun_link` char(60) NOT NULL,
  `urun_aciklama` text NOT NULL,
  `urun_teknik_bilgiler` text NOT NULL,
  `urun_ana_menu` tinyint(1) unsigned NOT NULL,
  `urun_anasayfa` tinyint(1) unsigned NOT NULL,
  `urun_video` char(50) DEFAULT NULL,
  PRIMARY KEY (`urun_id`),
  UNIQUE KEY `urun_id` (`urun_id`),
  KEY `kategori_id_fk` (`kategori_id_fk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for veritabani
-- ----------------------------
DROP TABLE IF EXISTS `veritabani`;
CREATE TABLE `veritabani` (
  `db_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `db_dosya` char(70) NOT NULL,
  `db_tarih` datetime NOT NULL,
  PRIMARY KEY (`db_id`) USING BTREE,
  UNIQUE KEY `db_id` (`db_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for yoneticiler
-- ----------------------------
DROP TABLE IF EXISTS `yoneticiler`;
CREATE TABLE `yoneticiler` (
  `yonetici_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `yonetici_durumu` tinyint(1) unsigned NOT NULL,
  `yonetici_ad_soyad` char(50) NOT NULL,
  `yonetici_sifre` char(60) NOT NULL,
  `yonetici_email` char(50) NOT NULL,
  `yonetici_aktivasyon` char(60) NOT NULL,
  PRIMARY KEY (`yonetici_id`) USING BTREE,
  UNIQUE KEY `yonetici_id` (`yonetici_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yoneticiler
-- ----------------------------
BEGIN;
INSERT INTO `yoneticiler` VALUES (1, 1, 'Ufuk Özdemir', 'e4da8fdd113ceab0566a9d4dbd34ec53', 'graftas@hotmail.com', '');
COMMIT;

-- ----------------------------
-- Table structure for ziyaretciler
-- ----------------------------
DROP TABLE IF EXISTS `ziyaretciler`;
CREATE TABLE `ziyaretciler` (
  `ziyaretci_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ziyaretci_referans` char(50) NOT NULL,
  `ziyaretci_ip` char(20) NOT NULL,
  `ziyaretci_request_url` char(100) NOT NULL,
  `ziyaret_tarihi` date NOT NULL,
  `ziyaret_zamani` time NOT NULL,
  PRIMARY KEY (`ziyaretci_id`) USING BTREE,
  UNIQUE KEY `ziyaretci_id` (`ziyaretci_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
