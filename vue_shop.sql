/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : vue_shop

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2022-06-19 15:12:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cart_list`
-- ----------------------------
DROP TABLE IF EXISTS `cart_list`;
CREATE TABLE `cart_list` (
  `cart_id` int(99) NOT NULL AUTO_INCREMENT,
  `user_id` int(99) NOT NULL DEFAULT '1',
  `product_id` int(99) NOT NULL,
  `cart_title` varchar(99) NOT NULL,
  `cart_select` varchar(99) DEFAULT '颜色：黑色，尺码：M',
  `cart_num` int(255) DEFAULT '1',
  `cart_price` decimal(5,2) NOT NULL,
  `cart_choose` tinyint(1) DEFAULT '0',
  `img_url` varchar(255) NOT NULL,
  `is_del` int(10) DEFAULT '0' COMMENT '代表商品是否已从购物车移除，1代表是，0代表否',
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart_list
-- ----------------------------
INSERT INTO `cart_list` VALUES ('1', '1', '1000', '法式木耳边白色短袖衬衫女装夏季新款韩版设计感小众时尚洋气上衣', '颜色：黑色，尺码：M', '1', '45.12', '0', 'https://s11.mogucdn.com/mlcdn/c45406/210605_8a3k1bdf3b5j0dfa4h5cjbah0713d_4464x5999.jpg_750x9999.v1c7E.81.webp', '1');
INSERT INTO `cart_list` VALUES ('2', '1', '1000', '2022年夏装新款复古网红炸街开叉牛仔半身裙减龄两件套女', '颜色：套餐；尺码：M', '1', '78.10', '0', 'https://s5.mogucdn.com/mlcdn/c45406/210321_03bc83cdi1k5hiji9i91244c7l89g_640x960.jpg_999x999.v1c0.81.webp', '1');
INSERT INTO `cart_list` VALUES ('3', '1', '1000', '两件套装女流苏外穿吊带背心上衣+高腰a字开叉牛仔包臂半身裙子', '颜色：上衣+裙子；尺码：M', '1', '56.00', '0', 'https://s5.mogucdn.com/mlcdn/c45406/210426_4blbi6b33di684ha82a86aa6479ll_750x1125.jpg_750x9999.v1c7E.81.webp', '1');
INSERT INTO `cart_list` VALUES ('4', '1', '10002', '小个子连衣裙碎花', '颜色：黑色，尺码：M', '1', '60.00', '0', 'https://img2.baidu.com/it/u=3737093396,1621377536&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=672', '1');
INSERT INTO `cart_list` VALUES ('7', '1', '10003', '夏天牛仔上衣', '颜色：黑色，尺码：M', '1', '99.90', '0', 'https://img1.baidu.com/it/u=1402069713,1255887743&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667', '1');
INSERT INTO `cart_list` VALUES ('9', '1', '10004', '裙子夏季小清新百搭出门必备', '颜色：黑色，尺码：M', '1', '42.00', '0', 'https://img2.baidu.com/it/u=216398970,1842733352&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', '1');
INSERT INTO `cart_list` VALUES ('10', '1', '10001', '夏装长裙子仙女超仙森系法式复古放碎花连衣裙', '颜色：黑色，尺码：M', '1', '59.10', '0', 'https://img2.baidu.com/it/u=4158161521,429146869&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', '1');
INSERT INTO `cart_list` VALUES ('11', '1', '10007', '小香风马甲', '颜色：黑色，尺码：M', '1', '53.90', '0', 'https://img2.baidu.com/it/u=1432739844,3543623112&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667', '1');
INSERT INTO `cart_list` VALUES ('12', '1', '10005', '白色连衣裙蕾丝', '颜色：黑色，尺码：M', '1', '59.99', '0', 'https://img0.baidu.com/it/u=2236650118,4065904990&fm=253&fmt=auto&app=138&f=JPEG?w=333&h=499', '1');
INSERT INTO `cart_list` VALUES ('13', '1', '10008', '百搭背心', '颜色：黑色，尺码：M', '1', '41.00', '0', 'https://img1.baidu.com/it/u=498658788,3525927168&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', '1');
INSERT INTO `cart_list` VALUES ('14', '1', '10009', '2022新款卫衣女韩版潮流学生宽松百搭上衣', '颜色：黑色，尺码：M', '1', '34.00', '0', 'https://s11.mogucdn.com/mlcdn/c45406/210605_8a3k1bdf3b5j0dfa4h5cjbah0713d_4464x5999.jpg_750x9999.v1c7E.81.webp', '1');
INSERT INTO `cart_list` VALUES ('15', '1', '20002', '秋季小青蛙卫衣女宽松版2022新款爆款长袖连衣上衣', '颜色：黑色，尺码：M', '4', '168.00', '0', 'https://s11.mogucdn.com/mlcdn/c45406/200911_3iheb3h2l5l9l348f8ca44k22j047_640x800.jpg_999x999.v1c0.81.webp', '1');
INSERT INTO `cart_list` VALUES ('16', '1', '10010', '帽子围巾一体女冬天可爱毛绒连体保暖加绒加厚防寒手套护耳朵围脖', '颜色：黑色，尺码：M', '1', '0.00', '0', 'https://s11.mogucdn.com/mlcdn/55cf19/211111_35i49353hddcj749d7agf5afa0dl5_640x960.jpg_999x999.v1c0.81.webp', '1');
INSERT INTO `cart_list` VALUES ('17', '1', '20001', '圆领泡泡袖法式拼接名媛连衣裙', '颜色：黑色，尺码：M', '1', '87.89', '0', 'https://s5.mogucdn.com/mlcdn/c45406/220519_3c7a5g0dfkkje133735k22g6k131e_1079x1412.jpg_500x9999.v1c7E.81.webp', '1');
INSERT INTO `cart_list` VALUES ('18', '1', '10013', 'lolita法式复古欧根纱白色蕾丝镂空小花仙女jk小腿长筒袜', '颜色：黑色，尺码：M', '1', '25.48', '0', 'https://s5.mogucdn.com/mlcdn/55cf19/210728_14kb2fjl17l9g4cfhch8f7f1fcfi2_640x960.jpg_999x999.v1c0.81.webp', '1');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(99) NOT NULL AUTO_INCREMENT,
  `product_id` int(99) NOT NULL,
  `goods_type` int(99) NOT NULL,
  `goods_img1` varchar(999) DEFAULT NULL,
  `goods_img2` varchar(999) DEFAULT NULL,
  `goods_content` varchar(999) DEFAULT NULL,
  `goods_price` float(255,2) NOT NULL,
  `goods_star` int(255) NOT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '10001', '1', 'https://img2.baidu.com/it/u=4158161521,429146869&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', 'https://img2.baidu.com/it/u=4158161521,429146869&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', '夏装长裙子仙女超仙森系法式复古放碎花连衣裙', '59.10', '15');
INSERT INTO `goods` VALUES ('2', '10002', '1', 'https://img2.baidu.com/it/u=3737093396,1621377536&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=672', 'https://img2.baidu.com/it/u=3737093396,1621377536&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=672', '小个子连衣裙碎花', '60.00', '100');
INSERT INTO `goods` VALUES ('3', '10003', '1', 'https://img1.baidu.com/it/u=1402069713,1255887743&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667', 'https://img1.baidu.com/it/u=1402069713,1255887743&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667', '夏天牛仔上衣', '99.90', '21');
INSERT INTO `goods` VALUES ('4', '10004', '1', 'https://img2.baidu.com/it/u=216398970,1842733352&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', 'https://img2.baidu.com/it/u=216398970,1842733352&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', '裙子夏季小清新百搭出门必备', '42.00', '290');
INSERT INTO `goods` VALUES ('5', '10005', '1', 'https://img0.baidu.com/it/u=2236650118,4065904990&fm=253&fmt=auto&app=138&f=JPEG?w=333&h=499', 'https://img0.baidu.com/it/u=2236650118,4065904990&fm=253&fmt=auto&app=138&f=JPEG?w=333&h=499', '白色连衣裙蕾丝', '59.99', '10');
INSERT INTO `goods` VALUES ('6', '10006', '1', 'https://img2.baidu.com/it/u=159496502,3810480348&fm=253&fmt=auto&app=138&f=JPEG?w=333&h=499', 'https://img2.baidu.com/it/u=159496502,3810480348&fm=253&fmt=auto&app=138&f=JPEG?w=333&h=499', '蓝色裙子', '30.60', '1');
INSERT INTO `goods` VALUES ('7', '10007', '1', 'https://img2.baidu.com/it/u=1432739844,3543623112&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667', 'https://img2.baidu.com/it/u=1432739844,3543623112&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667', '小香风马甲', '53.90', '23');
INSERT INTO `goods` VALUES ('8', '10008', '1', 'https://img1.baidu.com/it/u=498658788,3525927168&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', 'https://img1.baidu.com/it/u=498658788,3525927168&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', '百搭背心', '41.00', '12');
INSERT INTO `goods` VALUES ('9', '10009', '1', 'https://s11.mogucdn.com/mlcdn/c45406/210605_8a3k1bdf3b5j0dfa4h5cjbah0713d_4464x5999.jpg_750x9999.v1c7E.81.webp', 'https://s11.mogucdn.com/mlcdn/c45406/210605_8a3k1bdf3b5j0dfa4h5cjbah0713d_4464x5999.jpg_750x9999.v1c7E.81.webp', '2022新款卫衣女韩版潮流学生宽松百搭上衣', '34.00', '231');
INSERT INTO `goods` VALUES ('10', '10001', '1', 'https://img2.baidu.com/it/u=4158161521,429146869&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', 'https://img2.baidu.com/it/u=4158161521,429146869&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', '夏装长裙子仙女超仙森系法式复古放碎花连衣裙', '59.10', '15');
INSERT INTO `goods` VALUES ('11', '10001', '1', 'https://img2.baidu.com/it/u=4158161521,429146869&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', 'https://img2.baidu.com/it/u=4158161521,429146869&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', '夏装长裙子仙女超仙森系法式复古放碎花连衣裙', '59.10', '15');
INSERT INTO `goods` VALUES ('12', '10001', '1', 'https://img2.baidu.com/it/u=4158161521,429146869&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', 'https://img2.baidu.com/it/u=4158161521,429146869&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750', '夏装长裙子仙女超仙森系法式复古放碎花连衣裙', '59.10', '15');
INSERT INTO `goods` VALUES ('13', '20001', '2', 'https://s5.mogucdn.com/mlcdn/c45406/220519_3c7a5g0dfkkje133735k22g6k131e_1079x1412.jpg_500x9999.v1c7E.81.webp', 'https://s5.mogucdn.com/mlcdn/c45406/220519_3c7a5g0dfkkje133735k22g6k131e_1079x1412.jpg_500x9999.v1c7E.81.webp', '圆领泡泡袖法式拼接名媛连衣裙', '87.89', '44');
INSERT INTO `goods` VALUES ('14', '20002', '2', 'https://s11.mogucdn.com/mlcdn/c45406/200911_3iheb3h2l5l9l348f8ca44k22j047_640x800.jpg_999x999.v1c0.81.webp', 'https://s11.mogucdn.com/mlcdn/c45406/200911_3iheb3h2l5l9l348f8ca44k22j047_640x800.jpg_999x999.v1c0.81.webp', '秋季小青蛙卫衣女宽松版2022新款爆款长袖连衣上衣', '168.00', '18');
INSERT INTO `goods` VALUES ('15', '30001', '3', 'https://s18.mogucdn.com/mlcdn/55cf19/211029_6312i52h4a8hkkdd4d5cjac8eia9f_640x960.jpg_400x534.v1cAC.40.webp', 'https://s18.mogucdn.com/mlcdn/55cf19/211029_6312i52h4a8hkkdd4d5cjac8eia9f_640x960.jpg_400x534.v1cAC.40.webp', '网红ins化妆包手提千鸟格大容量化妆包化妆品收纳神器', '19.24', '1');
INSERT INTO `goods` VALUES ('16', '40001', '3', 'https://s5.mogucdn.com/mlcdn/c45406/210810_5c68leg55ig4dfd7h0b48dakdg960_800x800.jpg_750x9999.v1c7E.81.webp', 'https://s5.mogucdn.com/mlcdn/c45406/210810_5c68leg55ig4dfd7h0b48dakdg960_800x800.jpg_750x9999.v1c7E.81.webp', '小细跟口红礼盒3支装亚光丝绒唇膏持久滋润不易掉色', '88.00', '44');
INSERT INTO `goods` VALUES ('17', '10010', '2', 'https://s11.mogucdn.com/mlcdn/55cf19/211111_35i49353hddcj749d7agf5afa0dl5_640x960.jpg_999x999.v1c0.81.webp', 'https://s11.mogucdn.com/mlcdn/55cf19/211111_35i49353hddcj749d7agf5afa0dl5_640x960.jpg_999x999.v1c0.81.webp', '帽子围巾一体女冬天可爱毛绒连体保暖加绒加厚防寒手套护耳朵围脖', '0.00', '0');
INSERT INTO `goods` VALUES ('18', '10011', '1', 'https://s5.mogucdn.com/mlcdn/c45406/220413_13adkd9fc7f4kfi8c3flb2g1cj374_640x960.jpg_999x999.v1c0.81.webp', 'https://s5.mogucdn.com/mlcdn/c45406/220413_13adkd9fc7f4kfi8c3flb2g1cj374_640x960.jpg_999x999.v1c0.81.webp', '女牛仔裤直筒宽松高腰阔腿裤学生百搭排扣裤', '58.19', '24');
INSERT INTO `goods` VALUES ('19', '10011', '1', 'https://s5.mogucdn.com/mlcdn/c45406/220413_13adkd9fc7f4kfi8c3flb2g1cj374_640x960.jpg_999x999.v1c0.81.webp', 'https://s5.mogucdn.com/mlcdn/c45406/220413_13adkd9fc7f4kfi8c3flb2g1cj374_640x960.jpg_999x999.v1c0.81.webp', '女牛仔裤直筒宽松高腰阔腿裤学生百搭排扣裤', '58.19', '24');
INSERT INTO `goods` VALUES ('20', '10011', '1', 'https://s5.mogucdn.com/mlcdn/c45406/220413_13adkd9fc7f4kfi8c3flb2g1cj374_640x960.jpg_999x999.v1c0.81.webp', 'https://s5.mogucdn.com/mlcdn/c45406/220413_13adkd9fc7f4kfi8c3flb2g1cj374_640x960.jpg_999x999.v1c0.81.webp', '女牛仔裤直筒宽松高腰阔腿裤学生百搭排扣裤', '58.19', '24');
INSERT INTO `goods` VALUES ('21', '10011', '1', 'https://s5.mogucdn.com/mlcdn/c45406/220413_13adkd9fc7f4kfi8c3flb2g1cj374_640x960.jpg_999x999.v1c0.81.webp', 'https://s5.mogucdn.com/mlcdn/c45406/220413_13adkd9fc7f4kfi8c3flb2g1cj374_640x960.jpg_999x999.v1c0.81.webp', '女牛仔裤直筒宽松高腰阔腿裤学生百搭排扣裤', '58.19', '24');
INSERT INTO `goods` VALUES ('22', '10011', '1', 'https://s5.mogucdn.com/mlcdn/c45406/220413_13adkd9fc7f4kfi8c3flb2g1cj374_640x960.jpg_999x999.v1c0.81.webp', 'https://s5.mogucdn.com/mlcdn/c45406/220413_13adkd9fc7f4kfi8c3flb2g1cj374_640x960.jpg_999x999.v1c0.81.webp', '女牛仔裤直筒宽松高腰阔腿裤学生百搭排扣裤', '58.19', '24');
INSERT INTO `goods` VALUES ('23', '10011', '1', 'https://s5.mogucdn.com/mlcdn/c45406/220413_13adkd9fc7f4kfi8c3flb2g1cj374_640x960.jpg_999x999.v1c0.81.webp', 'https://s5.mogucdn.com/mlcdn/c45406/220413_13adkd9fc7f4kfi8c3flb2g1cj374_640x960.jpg_999x999.v1c0.81.webp', '女牛仔裤直筒宽松高腰阔腿裤学生百搭排扣裤', '58.19', '24');
INSERT INTO `goods` VALUES ('24', '10012', '1', 'https://s5.mogucdn.com/mlcdn/55cf19/210728_14kb2fjl17l9g4cfhch8f7f1fcfi2_640x960.jpg_999x999.v1c0.81.webp', 'https://s5.mogucdn.com/mlcdn/55cf19/210728_14kb2fjl17l9g4cfhch8f7f1fcfi2_640x960.jpg_999x999.v1c0.81.webp', 'lolita法式复古欧根纱白色蕾丝镂空小花仙女jk小腿长筒袜', '25.48', '5');
INSERT INTO `goods` VALUES ('25', '10012', '1', 'https://s5.mogucdn.com/mlcdn/55cf19/210728_14kb2fjl17l9g4cfhch8f7f1fcfi2_640x960.jpg_999x999.v1c0.81.webp', 'https://s5.mogucdn.com/mlcdn/55cf19/210728_14kb2fjl17l9g4cfhch8f7f1fcfi2_640x960.jpg_999x999.v1c0.81.webp', 'lolita法式复古欧根纱白色蕾丝镂空小花仙女jk小腿长筒袜', '25.48', '5');
INSERT INTO `goods` VALUES ('26', '10012', '1', 'https://s5.mogucdn.com/mlcdn/55cf19/210728_14kb2fjl17l9g4cfhch8f7f1fcfi2_640x960.jpg_999x999.v1c0.81.webp', 'https://s5.mogucdn.com/mlcdn/55cf19/210728_14kb2fjl17l9g4cfhch8f7f1fcfi2_640x960.jpg_999x999.v1c0.81.webp', 'lolita法式复古欧根纱白色蕾丝镂空小花仙女jk小腿长筒袜', '25.48', '5');
INSERT INTO `goods` VALUES ('27', '10012', '1', 'https://s5.mogucdn.com/mlcdn/55cf19/210728_14kb2fjl17l9g4cfhch8f7f1fcfi2_640x960.jpg_999x999.v1c0.81.webp', 'https://s5.mogucdn.com/mlcdn/55cf19/210728_14kb2fjl17l9g4cfhch8f7f1fcfi2_640x960.jpg_999x999.v1c0.81.webp', 'lolita法式复古欧根纱白色蕾丝镂空小花仙女jk小腿长筒袜', '25.48', '5');
INSERT INTO `goods` VALUES ('28', '10012', '1', 'https://s5.mogucdn.com/mlcdn/55cf19/210728_14kb2fjl17l9g4cfhch8f7f1fcfi2_640x960.jpg_999x999.v1c0.81.webp', 'https://s5.mogucdn.com/mlcdn/55cf19/210728_14kb2fjl17l9g4cfhch8f7f1fcfi2_640x960.jpg_999x999.v1c0.81.webp', 'lolita法式复古欧根纱白色蕾丝镂空小花仙女jk小腿长筒袜', '25.48', '5');
INSERT INTO `goods` VALUES ('29', '10013', '1', 'https://s5.mogucdn.com/mlcdn/55cf19/210728_14kb2fjl17l9g4cfhch8f7f1fcfi2_640x960.jpg_999x999.v1c0.81.webp', 'https://s5.mogucdn.com/mlcdn/55cf19/210728_14kb2fjl17l9g4cfhch8f7f1fcfi2_640x960.jpg_999x999.v1c0.81.webp', 'lolita法式复古欧根纱白色蕾丝镂空小花仙女jk小腿长筒袜', '25.48', '5');

-- ----------------------------
-- Table structure for `list_detail`
-- ----------------------------
DROP TABLE IF EXISTS `list_detail`;
CREATE TABLE `list_detail` (
  `list_type` int(99) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `name` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list_detail
-- ----------------------------
INSERT INTO `list_detail` VALUES ('0', 'https://s18.mogucdn.com/mlcdn/c45406/210205_0aa709h9806b38101l7l86k567e5e_120x120.png_999x999.v1c0.81.webp', 'T恤');
INSERT INTO `list_detail` VALUES ('4', 'https://s2.mogucdn.com/mlcdn/c45406/210205_0gk1280g139gc4c4832lhf15ib42f_120x120.png_999x999.v1c0.81.webp', '雪纺衫');
INSERT INTO `list_detail` VALUES ('4', 'https://s2.mogucdn.com/mlcdn/c45406/210205_1346bkah9le7ij9lif2156ajei75i_120x120.png_999x999.v1c0.81.webp', '卫衣');
INSERT INTO `list_detail` VALUES ('4', 'https://s2.mogucdn.com/mlcdn/c45406/210205_1346bkah9le7ij9lif2156ajei75i_120x120.png_999x999.v1c0.81.webp', '针织衫');
INSERT INTO `list_detail` VALUES ('4', 'https://s2.mogucdn.com/mlcdn/c45406/210205_14geh183k518di1llc1l1febkade3_120x120.png_999x999.v1c0.81.webp', '打底背心');
INSERT INTO `list_detail` VALUES ('4', 'https://s2.mogucdn.com/mlcdn/c45406/210205_1697cb072gbckii7dd7hcg1j7e15f_120x120.png_999x999.v1c0.81.webp', '西装外套');
INSERT INTO `list_detail` VALUES ('4', 'https://s2.mogucdn.com/mlcdn/c45406/210205_1l33i3h0fd8g8lbk5bi950dfa82c5_120x120.png_999x999.v1c0.81.webp', '牛仔外套');
INSERT INTO `list_detail` VALUES ('4', 'https://s2.mogucdn.com/mlcdn/c45406/210205_2hcc6019i9h2g270f4a400g0e2gj8_120x120.png_999x999.v1c0.81.webp', '衬衫');
INSERT INTO `list_detail` VALUES ('0', 'https://s17.mogucdn.com/mlcdn/c45406/210205_1l2hff1000d3feja5dkb6bajg79h8_120x120.png_999x999.v1c0.81.webp', '其他上衣');
INSERT INTO `list_detail` VALUES ('6', 'https://s2.mogucdn.com/mlcdn/c45406/210205_2eh6643k0cje28e0bceikk3lidbhf_120x120.png_999x999.v1c0.81.webp', '牛仔裤');
INSERT INTO `list_detail` VALUES ('6', 'https://s18.mogucdn.com/mlcdn/c45406/210205_1d68cj6a5j62c39158dkbh3358a8l_120x120.png_999x999.v1c0.81.webp', '格子裤');
INSERT INTO `list_detail` VALUES ('6', 'https://s2.mogucdn.com/mlcdn/c45406/210205_4f2j3539451ij0h83e1kf5dce0f97_120x120.png_999x999.v1c0.81.webp', '打底裤');
INSERT INTO `list_detail` VALUES ('6', 'https://s2.mogucdn.com/mlcdn/c45406/210205_51d6di39h1fe52kfj1hl3f9lk05i1_120x120.png_999x999.v1c0.81.webp', '工装裤');
INSERT INTO `list_detail` VALUES ('6', 'https://s2.mogucdn.com/mlcdn/c45406/210205_3b5420ll5ije8f77ggj4aajagi9l7_120x120.png_999x999.v1c0.81.webp', '阔腿裤');
INSERT INTO `list_detail` VALUES ('6', 'https://s2.mogucdn.com/mlcdn/c45406/210205_3b5420ll5ije8f77ggj4aajagi9l7_120x120.png_999x999.v1c0.81.webp', '休闲裤');
INSERT INTO `list_detail` VALUES ('2', 'https://s17.mogucdn.com/mlcdn/c45406/210205_6hla7k821a443h2ag5hel00bd3eh9_120x120.png_999x999.v1c0.81.webp', '连衣裙');
INSERT INTO `list_detail` VALUES ('2', 'https://s18.mogucdn.com/mlcdn/c45406/210205_67i2h7148ckdbih3i7096060haha8_120x120.png_999x999.v1c0.81.webp', '短款半裙');
INSERT INTO `list_detail` VALUES ('2', 'https://s2.mogucdn.com/mlcdn/c45406/210205_6ii06g2jdj21j4e6ke71i9i2hegf9_120x120.png_999x999.v1c0.81.webp', '长款半裙');
INSERT INTO `list_detail` VALUES ('2', 'https://s2.mogucdn.com/mlcdn/c45406/210205_5i790dd46eb7d0diclkhaj823j601_120x120.png_999x999.v1c0.81.webp', '碎花裙');
INSERT INTO `list_detail` VALUES ('2', 'https://s2.mogucdn.com/mlcdn/c45406/210205_007df2k7498b112h61k4il1c76hi5_120x120.png_999x999.v1c0.81.webp', '背带裙');
INSERT INTO `list_detail` VALUES ('9', 'https://s17.mogucdn.com/p2/170310/64548447_3j60liei1ag19hgk7lie838e5hh7i_120x120.jpg_999x999.v1c0.81.webp', '运动内衣');
INSERT INTO `list_detail` VALUES ('9', 'https://s11.mogucdn.com/mlcdn/c45406/200414_6j4g5blbckfilj330ebf9bb93d9jj_180x180.png_999x999.v1c0.81.webp', '美背吊带');
INSERT INTO `list_detail` VALUES ('9', 'https://s2.mogucdn.com/mlcdn/c45406/171031_1e56i66eekd918fkjdbaalci431c3_120x120.png_999x999.v1c0.81.webp', '纯棉内裤');
INSERT INTO `list_detail` VALUES ('9', 'https://s2.mogucdn.com/mlcdn/c45406/200414_7l1jke308k73fjk7h23c31kf6hhgg_180x180.png_999x999.v1c0.81.webp', '文胸套装');
INSERT INTO `list_detail` VALUES ('9', 'https://s2.mogucdn.com/mlcdn/c45406/200430_1de0fhb302gh5438kc6jl5ii25hid_180x180.png_999x999.v1c0.81.webp', '聚拢文胸');
INSERT INTO `list_detail` VALUES ('5', 'https://s2.mogucdn.com/mlcdn/c45406/210205_0gk1280g139gc4c4832lhf15ib42f_120x120.png_999x999.v1c0.81.webp', '雪纺衫');
INSERT INTO `list_detail` VALUES ('5', 'https://s2.mogucdn.com/mlcdn/c45406/210205_1346bkah9le7ij9lif2156ajei75i_120x120.png_999x999.v1c0.81.webp', '卫衣');
INSERT INTO `list_detail` VALUES ('5', 'https://s2.mogucdn.com/mlcdn/c45406/210205_1346bkah9le7ij9lif2156ajei75i_120x120.png_999x999.v1c0.81.webp', '针织衫');
INSERT INTO `list_detail` VALUES ('5', 'https://s2.mogucdn.com/mlcdn/c45406/210205_14geh183k518di1llc1l1febkade3_120x120.png_999x999.v1c0.81.webp', '打底背心');
INSERT INTO `list_detail` VALUES ('5', 'https://s2.mogucdn.com/mlcdn/c45406/210205_1697cb072gbckii7dd7hcg1j7e15f_120x120.png_999x999.v1c0.81.webp', '西装外套');
INSERT INTO `list_detail` VALUES ('5', 'https://s2.mogucdn.com/mlcdn/c45406/210205_1l33i3h0fd8g8lbk5bi950dfa82c5_120x120.png_999x999.v1c0.81.webp', '牛仔外套');
INSERT INTO `list_detail` VALUES ('5', 'https://s2.mogucdn.com/mlcdn/c45406/210205_2hcc6019i9h2g270f4a400g0e2gj8_120x120.png_999x999.v1c0.81.webp', '衬衫');
INSERT INTO `list_detail` VALUES ('0', 'https://s2.mogucdn.com/mlcdn/c45406/210205_0gk1280g139gc4c4832lhf15ib42f_120x120.png_999x999.v1c0.81.webp', '雪纺衫');
INSERT INTO `list_detail` VALUES ('0', 'https://s2.mogucdn.com/mlcdn/c45406/210205_1346bkah9le7ij9lif2156ajei75i_120x120.png_999x999.v1c0.81.webp', '卫衣');
INSERT INTO `list_detail` VALUES ('0', 'https://s2.mogucdn.com/mlcdn/c45406/210205_1346bkah9le7ij9lif2156ajei75i_120x120.png_999x999.v1c0.81.webp', '针织衫');
INSERT INTO `list_detail` VALUES ('0', 'https://s2.mogucdn.com/mlcdn/c45406/210205_14geh183k518di1llc1l1febkade3_120x120.png_999x999.v1c0.81.webp', '打底背心');
INSERT INTO `list_detail` VALUES ('0', 'https://s2.mogucdn.com/mlcdn/c45406/210205_1697cb072gbckii7dd7hcg1j7e15f_120x120.png_999x999.v1c0.81.webp', '西装外套');
INSERT INTO `list_detail` VALUES ('0', 'https://s2.mogucdn.com/mlcdn/c45406/210205_1l33i3h0fd8g8lbk5bi950dfa82c5_120x120.png_999x999.v1c0.81.webp', '牛仔外套');
INSERT INTO `list_detail` VALUES ('0', 'https://s2.mogucdn.com/mlcdn/c45406/210205_2hcc6019i9h2g270f4a400g0e2gj8_120x120.png_999x999.v1c0.81.webp', '衬衫');
INSERT INTO `list_detail` VALUES ('7', 'https://s2.mogucdn.com/mlcdn/c45406/210205_2eh6643k0cje28e0bceikk3lidbhf_120x120.png_999x999.v1c0.81.webp', '牛仔裤');
INSERT INTO `list_detail` VALUES ('7', 'https://s18.mogucdn.com/mlcdn/c45406/210205_1d68cj6a5j62c39158dkbh3358a8l_120x120.png_999x999.v1c0.81.webp', '格子裤');
INSERT INTO `list_detail` VALUES ('7', 'https://s2.mogucdn.com/mlcdn/c45406/210205_4f2j3539451ij0h83e1kf5dce0f97_120x120.png_999x999.v1c0.81.webp', '打底裤');
INSERT INTO `list_detail` VALUES ('7', 'https://s2.mogucdn.com/mlcdn/c45406/210205_51d6di39h1fe52kfj1hl3f9lk05i1_120x120.png_999x999.v1c0.81.webp', '工装裤');
INSERT INTO `list_detail` VALUES ('7', 'https://s2.mogucdn.com/mlcdn/c45406/210205_3b5420ll5ije8f77ggj4aajagi9l7_120x120.png_999x999.v1c0.81.webp', '阔腿裤');
INSERT INTO `list_detail` VALUES ('7', 'https://s2.mogucdn.com/mlcdn/c45406/210205_3b5420ll5ije8f77ggj4aajagi9l7_120x120.png_999x999.v1c0.81.webp', '休闲裤');
INSERT INTO `list_detail` VALUES ('8', 'https://s2.mogucdn.com/mlcdn/c45406/210205_2eh6643k0cje28e0bceikk3lidbhf_120x120.png_999x999.v1c0.81.webp', '牛仔裤');
INSERT INTO `list_detail` VALUES ('8', 'https://s18.mogucdn.com/mlcdn/c45406/210205_1d68cj6a5j62c39158dkbh3358a8l_120x120.png_999x999.v1c0.81.webp', '格子裤');
INSERT INTO `list_detail` VALUES ('8', 'https://s2.mogucdn.com/mlcdn/c45406/210205_4f2j3539451ij0h83e1kf5dce0f97_120x120.png_999x999.v1c0.81.webp', '打底裤');
INSERT INTO `list_detail` VALUES ('8', 'https://s2.mogucdn.com/mlcdn/c45406/210205_51d6di39h1fe52kfj1hl3f9lk05i1_120x120.png_999x999.v1c0.81.webp', '工装裤');
INSERT INTO `list_detail` VALUES ('8', 'https://s2.mogucdn.com/mlcdn/c45406/210205_3b5420ll5ije8f77ggj4aajagi9l7_120x120.png_999x999.v1c0.81.webp', '阔腿裤');
INSERT INTO `list_detail` VALUES ('8', 'https://s2.mogucdn.com/mlcdn/c45406/210205_3b5420ll5ije8f77ggj4aajagi9l7_120x120.png_999x999.v1c0.81.webp', '休闲裤');
INSERT INTO `list_detail` VALUES ('1', 'https://s2.mogucdn.com/mlcdn/c45406/210205_2eh6643k0cje28e0bceikk3lidbhf_120x120.png_999x999.v1c0.81.webp', '牛仔裤');
INSERT INTO `list_detail` VALUES ('1', 'https://s18.mogucdn.com/mlcdn/c45406/210205_1d68cj6a5j62c39158dkbh3358a8l_120x120.png_999x999.v1c0.81.webp', '格子裤');
INSERT INTO `list_detail` VALUES ('1', 'https://s2.mogucdn.com/mlcdn/c45406/210205_4f2j3539451ij0h83e1kf5dce0f97_120x120.png_999x999.v1c0.81.webp', '打底裤');
INSERT INTO `list_detail` VALUES ('1', 'https://s2.mogucdn.com/mlcdn/c45406/210205_51d6di39h1fe52kfj1hl3f9lk05i1_120x120.png_999x999.v1c0.81.webp', '工装裤');
INSERT INTO `list_detail` VALUES ('1', 'https://s2.mogucdn.com/mlcdn/c45406/210205_3b5420ll5ije8f77ggj4aajagi9l7_120x120.png_999x999.v1c0.81.webp', '阔腿裤');
INSERT INTO `list_detail` VALUES ('1', 'https://s2.mogucdn.com/mlcdn/c45406/210205_3b5420ll5ije8f77ggj4aajagi9l7_120x120.png_999x999.v1c0.81.webp', '休闲裤');
INSERT INTO `list_detail` VALUES ('3', 'https://s17.mogucdn.com/p2/170310/64548447_3j60liei1ag19hgk7lie838e5hh7i_120x120.jpg_999x999.v1c0.81.webp', '运动内衣');
INSERT INTO `list_detail` VALUES ('3', 'https://s11.mogucdn.com/mlcdn/c45406/200414_6j4g5blbckfilj330ebf9bb93d9jj_180x180.png_999x999.v1c0.81.webp', '美背吊带');
INSERT INTO `list_detail` VALUES ('3', 'https://s2.mogucdn.com/mlcdn/c45406/171031_1e56i66eekd918fkjdbaalci431c3_120x120.png_999x999.v1c0.81.webp', '纯棉内裤');
INSERT INTO `list_detail` VALUES ('3', 'https://s2.mogucdn.com/mlcdn/c45406/200414_7l1jke308k73fjk7h23c31kf6hhgg_180x180.png_999x999.v1c0.81.webp', '文胸套装');
INSERT INTO `list_detail` VALUES ('3', 'https://s2.mogucdn.com/mlcdn/c45406/200430_1de0fhb302gh5438kc6jl5ii25hid_180x180.png_999x999.v1c0.81.webp', '聚拢文胸');

-- ----------------------------
-- Table structure for `product_list`
-- ----------------------------
DROP TABLE IF EXISTS `product_list`;
CREATE TABLE `product_list` (
  `list_id` int(99) NOT NULL AUTO_INCREMENT,
  `text` varchar(99) NOT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_list
-- ----------------------------
INSERT INTO `product_list` VALUES ('1', '上衣');
INSERT INTO `product_list` VALUES ('2', '裤子');
INSERT INTO `product_list` VALUES ('3', '裙子');
INSERT INTO `product_list` VALUES ('4', '内衣');
INSERT INTO `product_list` VALUES ('5', '女鞋');
INSERT INTO `product_list` VALUES ('6', '包包');
INSERT INTO `product_list` VALUES ('7', '运动');
INSERT INTO `product_list` VALUES ('8', '美妆');
INSERT INTO `product_list` VALUES ('9', '个护');
INSERT INTO `product_list` VALUES ('10', '家居');
INSERT INTO `product_list` VALUES ('11', '母婴');
INSERT INTO `product_list` VALUES ('12', '零食');

-- ----------------------------
-- Table structure for `swiper`
-- ----------------------------
DROP TABLE IF EXISTS `swiper`;
CREATE TABLE `swiper` (
  `img_id` int(99) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(999) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of swiper
-- ----------------------------
INSERT INTO `swiper` VALUES ('1', 'https://img0.baidu.com/it/u=2506090976,4055403301&fm=253&fmt=auto&app=138&f=JPEG?w=1209&h=500');
INSERT INTO `swiper` VALUES ('2', 'https://img0.baidu.com/it/u=3239723868,3580079680&fm=253&fmt=auto&app=138&f=JPEG?w=1209&h=500');
INSERT INTO `swiper` VALUES ('3', 'https://img2.baidu.com/it/u=1795203237,3132465753&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=207');
INSERT INTO `swiper` VALUES ('4', 'https://img2.baidu.com/it/u=3607826433,1809399375&fm=253&fmt=auto&app=138&f=JPEG?w=1210&h=500');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(99) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'user11', '123456');
INSERT INTO `user` VALUES ('2', 'test11', '123456');
INSERT INTO `user` VALUES ('3', 'qianduan666', '123456');
INSERT INTO `user` VALUES ('4', 'qianduan22', '123456');
INSERT INTO `user` VALUES ('5', 'qianduan33', '654321');
INSERT INTO `user` VALUES ('6', 'admin1', '987654');
