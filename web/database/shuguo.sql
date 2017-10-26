/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : shuguo

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-10-26 09:55:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(10) DEFAULT NULL,
  `u_reviewer` varchar(20) DEFAULT NULL,
  `comment_date` datetime DEFAULT NULL,
  `comment_content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '28', 'yehongmei', '2017-09-15 11:19:30', '做的真好！');
INSERT INTO `comment` VALUES ('2', '28', 'yehongmei', '2017-09-15 14:33:20', 'ghhgh ');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `c_name` varchar(200) DEFAULT NULL,
  `c_type` varchar(10) DEFAULT NULL,
  `c_date` datetime NOT NULL,
  `c_praise` int(15) DEFAULT '0',
  `c_operation` varchar(10000) DEFAULT NULL,
  `c_firstImage` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '1', '家常菠菜拌粉丝的做法', '家常菜谱', '2017-09-14 07:19:10', '0', '<p><img src=\"/upload/fbrkr5qh5os.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>菠菜拌粉丝食材介绍：</strong>菠菜4-5棵，粉丝1小把，红椒1/2个，蒜3瓣，盐适量，醋1勺，香油几滴，糖1/2勺，鸡精少许（或不放</p>', '/upload/fbrkr5qh5os.jpg');
INSERT INTO `course` VALUES ('2', '1', ' 椰浆早餐包的做法', '家常菜谱', '2017-09-14 07:23:31', '0', '<p><img src=\"/upload/adhj10yro51.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>椰浆早餐包食材介绍：</strong>高粉350g，鸡蛋1只，椰浆160g，糖50g，酵母4g，黑芝麻1匙</p>', '/upload/adhj10yro51.jpg');
INSERT INTO `course` VALUES ('3', '1', '土豆火腿焖饭的做法', '家常菜谱', '2017-09-14 07:29:56', '0', '<p><strong><img src=\"/upload/eDVkrt3s.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></strong></p><p><strong>土豆火腿焖饭食材介绍：</strong>双汇蒜香火腿(半根) 盐(适量) 调料(少许) 生抽(半勺)，喜欢吃土豆火腿焖饭的朋友，其实可以在家自己动手做土豆火腿焖饭</p>', '/upload/eDVkrt3s.jpg');
INSERT INTO `course` VALUES ('4', '1', '咖喱肉丸盖浇饭的做法', '家常菜谱', '2017-09-14 07:33:47', '0', '<p><img src=\"/upload/glzefzvfin1.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>咖喱肉丸盖浇饭食材介绍：</strong>土豆一个，胡萝卜一根，牛肉丸适量，洋葱半个，咖喱一块，葱一根，米饭一碗，生姜2片，花生油一勺，盐少许，玉米淀粉一小勺</p>', '/upload/glzefzvfin1.jpg');
INSERT INTO `course` VALUES ('5', '1', ' 家常五香豌豆的做法', '家常菜谱', '2017-09-14 07:46:08', '0', '<p><img src=\"/upload/pzu3gxwjzvd.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>五香豌豆食材介绍：</strong>豌豆200g，盐一勺，五香粉一勺，豌豆的时令特别短，一年之中大约只有一到二个礼拜的时间，才是最鲜嫩可口的。</p>', '/upload/pzu3gxwjzvd.jpg');
INSERT INTO `course` VALUES ('6', '1', '家常粽子做好吃的做法', '家常菜谱', '2017-09-14 08:00:31', '0', '<p><img src=\"/upload/1vwbkkebsss.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>粽子食材介绍：</strong>糯米1小碗，豆沙馅20克/个，果粉少许（装饰用），海苔片少许（装饰用），一提到粽子、月饼这类传统食品，有些年轻人就会摇头说不喜欢。</p>', '/upload/1vwbkkebsss.jpg');
INSERT INTO `course` VALUES ('7', '1', '家常西红柿炒花菜的做法', '家常菜谱', '2017-09-14 08:03:45', '0', '<p><strong><img src=\"/upload/3tcx553tna0.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></strong></p><p><strong>西红柿炒花菜食材介绍：</strong>西红柿2个，有机花菜200克，食用油适量，盐1勺，绵白糖少许，西红柿入菜，酸酸的特别开胃，绝对是米饭杀手呀。</p>', '/upload/3tcx553tna0.jpg');
INSERT INTO `course` VALUES ('8', '1', '彩椒炒肉片最正宗的做法', '家常菜谱', '2017-09-14 09:53:42', '0', '<p><img src=\"/upload/l2pmudjasdt (1).jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>彩椒炒肉片食材介绍:</strong>猪肉150g，红椒半个，黄椒半个，青椒半个，油适量，盐适量，五香粉适量，醋适量，味极鲜酱油适量，葱姜适量，</p>', '/upload/l2pmudjasdt (1).jpg');
INSERT INTO `course` VALUES ('11', '1', '家常五香卤猪耳朵的做法 ', '家常菜谱', '2017-09-14 10:02:30', '0', '<p><img src=\"/upload/3tjercvumfk.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><br></p><p><strong>五香卤猪耳朵食材介绍:</strong>猪耳朵适量，草果10克，八角15克，花椒10克，桂皮5克，香叶5克，甘草适量，白芷10克，干辣椒5克，葱段1段，姜适量，蒜适量，黄片糖1片，老抽3汤匙，生抽10汤匙，盐2汤匙，水适量，</p>', '/upload/3tjercvumfk.jpg');
INSERT INTO `course` VALUES ('12', '1', ' 家常美味卤鸡腿的做法', '家常菜谱', '2017-09-14 10:23:12', '1', '<p><img src=\"/upload/abz0hzuzkrj.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>美味卤鸡腿食材介绍:</strong>鸡腿10个，姜5块葱2颗料酒，干辣椒8个，辣椒粉2g，植物油2g，盐8g，老抽0.5勺，生抽1勺，八角1个，桂皮1块，草果1个，白果5颗，料酒1勺，冰糖2块，</p>', '/upload/abz0hzuzkrj.jpg');
INSERT INTO `course` VALUES ('13', '1', '卤汁小龙虾最正宗的做法 ', '家常菜谱', '2017-09-14 10:33:53', '0', '<p><img src=\"/upload/dliqpzu3glu.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>黄金蛋炒饭食材介绍:</strong>大米150克，土鸡蛋3个，香葱50克，橄榄油3ml，盐1克，酱油1ml,清清白白出水，红红火火&ldquo;献身&rdquo;。广东天气已经开启了30&deg;＋的模式。</p>', '/upload/dliqpzu3glu.jpg');
INSERT INTO `course` VALUES ('14', '1', '卤牛肉的做法大全,卤牛肉最正宗的做法', '家常菜谱', '2017-09-14 10:39:46', '0', '<p><img src=\"/upload/1RT02U8-0.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>卤牛肉的介绍：</strong>是下酒菜中最常欢迎，味道最好的一种，因为各个地方的人所用的卤料均不相同，所以卤牛肉风味十足，不管是晚上的夜啤，还是家中熬夜看球，卤牛肉都是一个不错的选择。因为卤牛肉的做法各不相同，小编就像大家介绍几个我所熟知的做法。</p>', '/upload/1RT02U8-0.jpg');
INSERT INTO `course` VALUES ('15', '1', '怎么做开放式三明治最好吃', '家常菜谱', '2017-09-14 10:46:47', '0', '<p><img src=\"/upload/ebx20pxk1q3.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p>开放式三明治食材介绍：吐司4片，鹅肝酱50克，罐装鱼籽适量，牛油果半个，海盐少许，黑胡椒少许，果醋1勺，柠檬小半个，黄油适量</p>', '/upload/ebx20pxk1q3.jpg');
INSERT INTO `course` VALUES ('16', '1', ' 家常巧克力草莓棉花糖三明治的做法', '家常菜谱', '2017-09-14 10:50:31', '0', '<p><img src=\"/upload/dw3dn3rc0dl.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p>巧克力草莓棉花糖三明治食材介绍：餐包3个，草莓2个，棉花糖3个，巧克力半板，黄油5g，杏仁片适量</p>', '/upload/dw3dn3rc0dl.jpg');
INSERT INTO `course` VALUES ('17', '1', '家常乌龟全麦三明治的做法 ', '家常菜谱', '2017-09-14 10:53:14', '0', '<p><img src=\"/upload/vc4aqipwn5u.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>乌龟全麦三明治食材介绍：</strong>高筋面粉260克，全麦面包粉40克，牛奶160克，鸡蛋1个，盐2克，白砂糖60克，耐高糖酵母4.5克，黄油30克，火腿片6小片，生菜叶1片，沙拉酱适量，番茄酱适量，鸡蛋1个</p>', '/upload/vc4aqipwn5u.jpg');
INSERT INTO `course` VALUES ('18', '1', '家常水果花三明治的做法', '家常菜谱', '2017-09-14 10:59:09', '0', '<p><img src=\"/upload/uojzno5xyij.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>水果花三明治食材介绍：</strong>高筋面粉250g，水100g(汤种），牛奶60g，蛋液70g，白砂糖适（煮苹果用），盐2g，酵母3g，黄油25g，芒果1个，苹果1个，芝士1片，草莓果酱适量</p>', '/upload/uojzno5xyij.jpg');
INSERT INTO `course` VALUES ('19', '1', '丝瓜鲫鱼汤最正宗的做法', '家常菜谱', '2017-09-15 08:58:38', '0', '<p><img src=\"/upload/sox31fofbcb.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>丝瓜鲫鱼汤食材介绍：</strong>野生鲤鱼5条，丝瓜1根，姜适量，油适量，盐适量，料酒适量，醋适量，丝瓜鲫鱼汤最正宗的做法 家常丝瓜鲫鱼汤的做法。</p>', '/upload/sox31fofbcb.jpg');
INSERT INTO `course` VALUES ('20', '1', '奶香四溢的大米布丁最正宗的做法', '家常菜谱', '2017-09-15 09:03:14', '0', '<p><img src=\"/upload/j2bdgecks32.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>奶香四溢的大米布丁食材介绍：</strong>大米140g，牛奶550ml，冰糖30g，大米除了蒸熟直接吃以外，还有很多其他吃法，大米和牛奶的组合也是相当美味的。</p>', '/upload/j2bdgecks32.jpg');
INSERT INTO `course` VALUES ('21', '1', '家常咖啡牛奶布丁的做法 ', '家常菜谱', '2017-09-15 09:06:47', '0', '<p><img src=\"/upload/ppv1r0gg5ky.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>咖啡牛奶布丁食材介绍：</strong>咖啡1袋，热水100克，牛奶120克，吉利丁粉8克，棉花糖50克，今天来做一款好吃又简单，而且很凉快的小甜点&mdash;&mdash;布丁。</p>', '/upload/ppv1r0gg5ky.jpg');
INSERT INTO `course` VALUES ('22', '1', '怎么做芒果奇亚籽椰奶布丁最好吃', '家常菜谱', '2017-09-15 09:10:38', '0', '<p><img src=\"/upload/p1d0hjnve4n.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>芒果奇亚籽椰奶布丁食材介绍：</strong>淡椰浆400ml，枫树糖浆60ml，奇亚籽50g，芒果2个，这款芒果奇亚籽椰奶布丁，食材很简单也很简单天然健康。</p>', '/upload/p1d0hjnve4n.jpg');
INSERT INTO `course` VALUES ('23', '1', '奶香四溢的大米布丁最正宗的做法', '家常菜谱', '2017-09-15 09:18:49', '0', '<p><img src=\"/upload/j2bdgecks32.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>奶香四溢的大米布丁食材介绍：</strong>大米140g，牛奶550ml，冰糖30g，大米除了蒸熟直接吃以外，还有很多其他吃法，大米和牛奶的组合也是相当美味。</p>', '/upload/j2bdgecks32.jpg');
INSERT INTO `course` VALUES ('24', '1', '番茄鸡蛋面最正宗的做法', '特色面食', '2017-09-15 09:21:13', '0', '<p><img src=\"/upload/ppv1r0gg5ky.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>奶香四溢的大米布丁食材介绍：</strong>大米140g，牛奶550ml，冰糖30g，大米除了蒸熟直接吃以外，还有很多其他吃法，大米和牛奶的组合也是相当美味。</p>', '/upload/ppv1r0gg5ky.jpg');
INSERT INTO `course` VALUES ('25', '1', '丝瓜鲫鱼汤最正宗的做法 ', '家常菜谱', '2017-09-15 09:23:17', '0', '<p><img src=\"/upload/sox31fofbcb.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>丝瓜鲫鱼汤食材介绍：</strong>野生鲤鱼5条，丝瓜1根，姜适量，油适量，盐适量，料酒适量，醋适量，盐适量，料酒适量，醋适量</p>', '/upload/sox31fofbcb.jpg');
INSERT INTO `course` VALUES ('26', '1', '黑椒红酒爆猪肝的家常做法', '八大菜系', '2017-09-15 09:28:02', '0', '<p><img src=\"/upload/p1d0hjnve4n.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>油条蒸鸡蛋食材介绍：</strong>主料：鸡蛋(3个) 油条(1小段)，辅料：凉开水(200毫升) 葱花(少许)，辅料：凉开水(200毫升) 葱花(少许)</p>', '/upload/p1d0hjnve4n.jpg');
INSERT INTO `course` VALUES ('27', '1', '油条蒸鸡蛋的做法', '四季食谱', '2017-09-15 09:30:46', '0', '<p><img src=\"/upload/yn3unpwois0.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>油条蒸鸡蛋食材介绍主料：</strong>鸡蛋(3个) 油条(1小段)辅料：凉开水(200毫升) 葱花(少许)</p>', '/upload/yn3unpwois0.jpg');
INSERT INTO `course` VALUES ('28', '1', '川辣红烧牛肉的做法', '家常菜谱', '2017-09-15 11:00:27', '1', '<p><br><img src=\"/upload/kia2ncifch2.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>川辣红烧牛肉食材介绍：</strong>牛肉1000g，红萝卜1000g，牛板筋300g，青蒜两颗，大蒜5瓣，干辣椒10个，花椒3g，老姜3片，八角3个，桂皮5g，山萘5g，香叶两片，豆瓣酱2勺</p><p>1、备料<img src=\"/upload/kia2ncifch2.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p>2.、大火收汁，起锅前加入青蒜拌匀（青蒜加入后翻炒一分钟即可，用菜的热气把青蒜闷熟，煮太久青蒜会老）</p><p><img src=\"/upload/kia2ncifch2.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>', '/upload/kia2ncifch2.jpg');
INSERT INTO `course` VALUES ('29', '1', '西红柿土豆牛肉汤的家常做法', '家常菜谱', '2017-09-15 01:42:01', '0', '<p><img src=\"/upload/0oUGl9ot.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><strong>西红柿土豆牛肉汤食材介绍：</strong>西红柿1个，土豆1个，牛肉250克，洋葱小半个，山楂干片，盐3勺，糖1勺，料酒少许，生抽半勺，八角1个花椒粉少许，葱花少许</p>', '/upload/0oUGl9ot.jpg');
INSERT INTO `course` VALUES ('30', '1', '2222', '家常菜谱', '2017-09-15 02:34:34', '0', '<p><img src=\"/upload/1ceh02uu1pp.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>', '/upload/1ceh02uu1pp.jpg');
INSERT INTO `course` VALUES ('31', '1', '', '家常菜谱', '2017-10-01 05:08:10', '0', '<p><a class=\"fr-file\" href=\"https://i.froala.com/download/34e8127c523920a5bb2a62e818a359268315eee0.doc?1506848888\">149000311-叶洪梅（励志）.doc</a></p>', null);

-- ----------------------------
-- Table structure for praise
-- ----------------------------
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of praise
-- ----------------------------
INSERT INTO `praise` VALUES ('21', '4', '64');
INSERT INTO `praise` VALUES ('22', '1', '12');
INSERT INTO `praise` VALUES ('23', '1', '28');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `repassword` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'yehongmei', '123456', '123456');
INSERT INTO `user` VALUES ('2', 'bailinzi', '123456', '123456');
INSERT INTO `user` VALUES ('3', 'bailinzi', '123456', '123456');
INSERT INTO `user` VALUES ('4', 'bailinzi', '111111', '111111');
