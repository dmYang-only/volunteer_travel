/*
Navicat MySQL Data Transfer

Source Server         : Distance
Source Server Version : 50718
Source Host           : 140.143.181.108:10028
Source Database       : travel_db

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2020-06-03 23:36:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attractions
-- ----------------------------
DROP TABLE IF EXISTS `attractions`;
CREATE TABLE `attractions` (
  `id` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `attractions_name` varchar(255) DEFAULT NULL,
  `attractions_address` varchar(255) DEFAULT NULL,
  `attractions_describe` varchar(255) DEFAULT NULL,
  `attractions_status` int(2) DEFAULT '0',
  `create_date` datetime NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of attractions
-- ----------------------------
INSERT INTO `attractions` VALUES ('1', 'MY_jingdian_01', '清凉寨景区', '蔡店街道西北部', '景区总面积6000余亩，年平均温度低于武汉市中心城区4-6度；山体高大陡峭，植被丰富，层峦叠嶂。木兰清凉寨十里中华樱花、映山红、油菜花、茶花花花飘香，推出的攀水瀑布、古炭窑、滴水观音、九龙飞瀑等旅游景点，加入丰富多彩的祈福、采茶等活动。', '1', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('10', 'MY_jingdian_02', '黄山风景区', '黄山市', '黄山自古以来就是中国数一数二的名山，奇松、怪石、云海、温泉被称为黄山的“四绝”。除此之外，雾凇、雪景、日出也是游人不会错过的景观，古人有“五岳归来不看山，黄山归来不看岳”的说法。 景区游览主要分为前山、后山两条上山路线，都通向主峰之一光明顶，在光明顶的另一侧，还有一条环线-西海大峡谷。\r\n\r\n', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('11', 'MY_jingdian_03', '屯溪老街', '黄山市屯溪区中心地段', '市内有名的小吃街、商业街。老街不宽，铺着青石板路，两侧林立着一幢幢徽派建筑，店铺便开在临街的屋子里，出售的也都是徽州特产。 一般晚上的老街要比白天更热闹些，店铺开了灯，一串串红灯笼与白墙黑瓦相映，带个三脚架，吃饭、逛街之余可以拍拍夜景。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('12', 'MY_jingdian_06', '宏村景区', '黄山市', '徽派古村中的代表，可拍摄南湖、月沼美景，欣赏精致的徽派三雕。 宏村是徽派古村中的代表，有“中国画里乡村”的美誉。来宏村一是看水利系统带来的水景，南湖、月沼是精华所在，二是看建筑上的徽派三雕，砖雕、石雕、木雕，像剪纸一样精细。而来此写生的美院学生又是另一道风景。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('13', 'MY_jingdian_06', '九寨沟', '四川省南坪县城西45千米处', '自然风景点都集中在沟两侧。九寨沟以原始的生态环境，一尘不染的清新空气和雪山、森林、湖泊组合成神妙、奇幻、幽美的自然风光，显现“自然的美，美的自然”，被誉为“童话世界”、“人间仙境”。九寨沟的高峰、彩林、翠海、叠瀑和藏族风情被称为“五绝”。\r\n', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('14', 'MY_jingdian_06', '峨眉山', '四川中南部，四川盆地西南边缘的峨眉境内，距成都约一百六十公里', '峨眉山以其秀丽的自然风光和神话般的佛教胜迹而闻名于世。她古雅神奇，巍峨媚丽。其山脉绵亘曲折、千岩万壑、瀑布溪流、奇秀清雅，故有“峨眉天下秀”之美称。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('15', 'MY_jingdian_06', '青城山', '都江堰市西南', '位于邛崃山东坡与成都平原交接处，背靠岷山雪岭，面向成都平原，山体主要由砾岸组成，有36峰，最高峰海拔1600余米。为道教第五洞天，全称洞天第五宝仙九室之天。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('16', 'MY_jingdian_06', '乐山大佛', '岷江、青衣江、大渡河三江汇流处', '景区周广17.88平方公里，人文景观和自然景观独具特色。山下江河争流、波光云影、沙鸥翔集、帆影点点；山上繁花似锦、茂林修竹、朱楼画檐、丹崖峭壁。有世界第一——乐山大佛、自然和人文奇观——“巨型睡佛”、西部普陀——乌尤寺、东汉麻浩崖墓、佛教艺术荟萃——东方佛都、宋元遗址——三龟九顶城、弥勒经变故事——佛国天堂、水上游江观佛诸壮景。此外，尚有著名历史文化景观和景点。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('17', 'MY_jingdian_06', '蜈支洲岛', '海南省三亚市', '这里海水能见度高，水下世界绚丽多彩，是我国热门的潜水胜地。同时，还是进行摩托艇、香蕉船、水上降落伞等水上活动的好地方。岛上有妈祖庙等历史遗迹，有兴趣的也可以去参观。除了美丽的风光，蜈支洲岛还有极具特色的别墅、木屋以及酒吧、海鲜餐厅等配套设施。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('18', 'MY_jingdian_06', '亚龙湾热带天堂森林公园', '海南省三亚市', '以雨林特色景观为主的亚龙湾热带天堂森林公园，是大多数游客来三亚的必去地之一，这里树木繁多茂密，登至山顶可将“天下第一湾”——亚龙湾的美景尽收眼底。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('19', 'MY_jingdian_06', '东方明珠塔', '上海市', '东方明珠电视塔选用了东方民族喜爱的圆曲线体作为基本建筑线条。主体有三个斜筒体，三个直筒体和11个球体组成，形成巨大空间框架结构。筒体内有6部电梯，其中一部是可载50人的双层电梯，还有一部在上球体和太空舱间运行。\r\n', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('2', 'MY_jingdian_02', '南京路步行街', '上海市南京东路', '整条南京东路灯光闪亮，五光十色。南京路以其华美的建筑、林立的商店、繁华的街市、辉煌的夜景而不负其中华商业第一街的美誉。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('20', 'MY_jingdian_06', '西安鼓楼', '陕西省西安市', '西安的标志性建筑，西安鼓楼位于古都西安市中心，明城墙内东西南北四条大街交汇处的西安钟楼西北方约200米处。建于明太祖朱元璋洪武十三年(1380年)，是中国古代遗留下来众多鼓楼中形制最大、保存最完整鼓楼之一。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('21', 'MY_jingdian_06', '西湖', '浙江省杭州市', '西湖，是一首诗，一幅天然图画，一个美丽动人的故事，不论是多年居住在这里的人还是匆匆而过的旅人，无不为这天下无双的美景所倾倒。 阳春三月，莺飞草长。苏白两堤，桃柳夹岸。两边是水波潋滟，游船点点，远处是山色空蒙，青黛含翠。此时走在堤上，你会被眼前的景色所惊叹，甚至心醉神驰，怀疑自己是否进入了世外仙境。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('22', 'MY_jingdian_06', '庐山', '江西省九江市。位于九江市南36公里处', '庐山，又称匡山或匡庐，隶属于江西省九江市。位于九江市南36公里处，北靠长江，南傍鄱阳湖。南北长约25公里，东西宽约20公里。大部分山峰在海拔1000米以上，主峰汉阳峰海拔1474米，云中山城牯岭镇海拔约1167米。 庐山雄奇秀拔，云雾缭绕，山中多飞泉瀑布和奇洞怪石，名胜古迹遍布，夏天气候凉爽宜人，是我国著名的旅游风景区和避暑疗养胜地。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('23', 'MY_jingdian_06', '西安曲江大雁塔', '西安曲江', '中国唯一的唐文化主题景区。这里有唐都长安玄奘译经之地、佛教祖庭-大慈恩寺；西安地标、千年古迹-大雁塔；构架山水、师法自然，保存唐大慈恩寺大雄宝殿殿基遗址的唐大慈恩寺遗址公园。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('24', 'MY_jingdian_06', '重庆人民解放碑', '重庆', '碑通高27.5有旋梯可达顶端。该碑落成于1940年3月12日孙中山逝世纪念日，原为低矮木结构。1945年抗战胜利后重建，题名为“抗战胜利纪功碑”。1950年由刘伯承改题为“重庆人民解放纪念碑”。解放碑是重庆的标志性建筑之一。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('25', 'MY_jingdian_06', '丽江古城', '丽江市古城区', '中国历史文化名城中唯一没有城墙的古城', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('26', 'MY_jingdian_06', '泸沽湖', '丽江市宁蒗县', '清澈的湖水，神秘的母系社会奇特的走婚习俗，古朴的民风都在诉说着这里的美丽与神秘。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('27', 'MY_jingdian_06', '西双版纳', '云南省西南端', '吊脚竹楼、异域风情，孔雀森林、佛国茶香、热带水果、绿色生态', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('28', 'MY_jingdian_06', '石林', '昆明市石林彝族自治县', '以其幽、奇的特点在世界自然景观中堪称一绝被誉为“天下第一奇观”\r\n', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('29', 'MY_jingdian_06', '故宫', '北京故宫', '北京故宫是中国明清两代的皇家宫殿，旧称为紫禁城，位于北京中轴线的中心，是中国古代宫廷建筑之精华。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('3', 'MY_jingdian_03', '圆明园', '北京圆明园', '圆明园又称圆明三园，是清代大型皇家园林，它坐落在北京西北郊，与颐和园毗邻，由圆明园、长春园和绮春园组成，所以也叫圆明三园。此外，还有许多小园，分布在东、西、南三面，众星拱月般环绕周围\r\n', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('30', 'MY_jingdian_06', '希拉穆仁草原', '内蒙古希拉穆仁草原', '草原旅游区的旅游活动内容丰富，各观赏美丽的草原，看草原日出日落；欣赏蒙古族的传统体育活动赛马、摔跤、射箭、和马术表演，以及蒙古族歌舞表演、篝火晚 会等；体验民俗风情，访问牧户，参加牧民的生产活劳动场面，如放牧、挤奶、制奶食品等；品尝蒙古族的传统食品手把肉、烤羊肉、奶食品等。在草原上骑马漫 游，充分领略草原风光等。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('4', 'MY_jingdian_04', '响沙湾', '内蒙古响沙湾', '这里因沙子会唱歌而蜚声中外，景区内的游玩项目众多，就像一个沙漠大型游乐园一样，在这里你可以尽情体验各种刺激和浪漫的沙漠娱乐项目。景区除传统的骑马、骑骆驼、篝火晚会、沙漠探险等沙漠旅游活动外，还新引进了沙漠滑翔伞、沙漠太空球、沙漠冲浪车等一系列', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('5', 'MY_jingdian_05', '广州石室圣心大教堂', '广州市区中心的一德路', '天主教广州教区宏伟而有特色的一间大教堂。该教堂建于1863年，落成于1888年，历时25年始建成，至今有130多年的历史。由于教堂的全部墙壁和柱子都是用花岗岩石砌造，所以又称之为\"石室\"或\"石室耶稣圣心堂\"、\"石室天主教堂\"。是省重点文物保护单位。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('6', 'MY_jingdian_06', '白云山', '广东省广州市广园中路白云山南路', '由30多座山峰组成，登高可俯览全市，遥望珠江。每当雨后天晴或暮春时节，山间白云综绕，山名由此得来。白云山自古以来就是有名的风景胜地，“蒲润源泉”、“白云晚望”、“景泰归增”等均被列入“羊城八景”。近年来又开辟了山顶和山北公园，修建了庭园式山庄旅舍、双溪别墅、松涛别院及观鸟园。\r\n', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('7', 'MY_jingdian_07', '鼓浪屿', '福建省厦门市思明区鼓浪屿龙头路', '鼓浪屿几乎是每一个到厦门旅游的人出行的第1站。鼓浪屿可是小清新们的真爱，清新的空气，好看的建筑，纯净的海风，耳边不时传来海浪拍岸的声音，在街角的小店给未来的自己慢递一张明信片，或者单纯逗趣一只偶遇的喵。\r\n', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('8', 'MY_jingdian_08', '西塘古镇', '浙江省嘉善县西塘镇南苑路258号', '：西塘全镇总面积83.61平方公里，其中古镇区面积1.04平方公里，人口近8.6万。西塘被誉为生活着的千年古镇。已被列入世界历史文化遗产预备名单，中国首批历史文化名镇，国家AAAA级景区。历史文化西塘历史悠久，是古代吴越文化的发祥地之一。', '0', '2019-06-04 20:00:09', '30');
INSERT INTO `attractions` VALUES ('9', 'MY_jingdian_06', '桐乡乌镇古镇旅游区', '：浙江省嘉兴桐乡市乌镇石佛南路18号', '乌镇是典型的江南水乡古镇，素有“鱼米之乡，丝绸之府”之称。全镇以河成街，桥街相连，依河筑屋，深宅大 院，重脊高檐，河埠廊坊，过街骑楼，穿竹石栏，临河水阁，古色古香，水镇一体，呈现一派古朴、明洁的幽静，是江南典型的“小桥、流水、人家”石板小路，古旧木屋，还有清清湖水的气息，仿佛都在提示着一种情致，一种氛围。\r\n', '0', '2019-06-04 20:00:09', '30');

-- ----------------------------
-- Table structure for attractions_comment
-- ----------------------------
DROP TABLE IF EXISTS `attractions_comment`;
CREATE TABLE `attractions_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(8000) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `attractions_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_attractions_commentId` (`user_id`),
  KEY `fk_attractiuons_id_attractions_commentId` (`attractions_id`),
  CONSTRAINT `fk_attractiuons_id_attractions_commentId` FOREIGN KEY (`attractions_id`) REFERENCES `attractions` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id_attractions_commentId` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attractions_comment
-- ----------------------------
INSERT INTO `attractions_comment` VALUES ('1', '非常好玩，强烈推荐', '2020-04-24 13:54:35', '695903942de94c60880e7ed58add0ea0', '12');
INSERT INTO `attractions_comment` VALUES ('4', '很想去玩哦', '2020-04-25 08:06:37', 'a64520eef28440f5910b6acaa4dbda85', '3');
INSERT INTO `attractions_comment` VALUES ('5', '哈哈哈哈', '2020-04-25 08:35:52', 'a64520eef28440f5910b6acaa4dbda85', '3');
INSERT INTO `attractions_comment` VALUES ('6', 'very good', '2020-04-25 08:36:48', 'a64520eef28440f5910b6acaa4dbda85', '3');
INSERT INTO `attractions_comment` VALUES ('7', 'very nice', '2020-04-25 08:38:19', 'a64520eef28440f5910b6acaa4dbda85', '3');
INSERT INTO `attractions_comment` VALUES ('8', '价格不贵哦', '2020-04-25 11:11:50', 'a64520eef28440f5910b6acaa4dbda85', '2');

-- ----------------------------
-- Table structure for diary_comment
-- ----------------------------
DROP TABLE IF EXISTS `diary_comment`;
CREATE TABLE `diary_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(8000) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `diary_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userid_diary` (`user_id`),
  KEY `fk_diary_id` (`diary_id`),
  CONSTRAINT `fk_diary_id` FOREIGN KEY (`diary_id`) REFERENCES `travel_diary` (`id`),
  CONSTRAINT `fk_userid_diary` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diary_comment
-- ----------------------------
INSERT INTO `diary_comment` VALUES ('1', '请问去黄山的线路怎么走', '2020-04-24 14:26:03', 'a76d66cbd08c4fe1a36e9ff7eaed9f75', '1');
INSERT INTO `diary_comment` VALUES ('2', '萌萌哒', '2020-04-25 08:53:45', 'a64520eef28440f5910b6acaa4dbda85', '1');
INSERT INTO `diary_comment` VALUES ('3', 'Test123456', '2020-04-25 11:10:30', 'a64520eef28440f5910b6acaa4dbda85', '1');

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `id` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `hotel_address` varchar(255) DEFAULT NULL,
  `hotel_describe` varchar(255) DEFAULT NULL,
  `hotel_status` int(2) DEFAULT '0',
  `create_date` datetime NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES ('1', 'MY_kezhan_01', '吉安国际酒店111', '吉安县城庐陵大道庐陵广场111', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场，可为宾客提供各式全新五星水准的酒店住宿、饮食、宴会、会议、康体和娱乐一体化的服务。另500多个车位的大型停车场，为宾客的出行提供了更多的便利。', '1', '2019-06-05 19:36:37', '80');
INSERT INTO `hotel` VALUES ('10', 'MY_kezhan_01', ' 营口仙人岛宾馆', '辽宁省营口仙人岛国家森林公园', '一座集度假、会议、住宿、餐饮、娱乐、温泉洗浴等多功能为一体的园林别墅式酒店。曾多次接待中央及省、市领导。是您迎春踏青、消夏避暑、金秋赏月、冬觅清幽的上佳之选。酒店环境——仙人岛宾馆依林傍海，景色怡人，万亩槐林环抱之中，形成了天然氧吧，漫步林间，享受大自然带给您的清幽与恬淡。', '0', '2019-06-04 19:37:01', '80');
INSERT INTO `hotel` VALUES ('11', 'MY_kezhan_01', '海澜大酒店', '江阴市苏南工业重镇新桥镇海澜工业园内', '海澜大酒店是一家商务、会议型豪华酒店，是江阴市首家五星级酒店。酒店座落在苏南工业重镇新桥镇海澜工业园内，北枕长江，南靠太湖，毗邻张家港市中心，宁太（沿江）高速横亘其侧，交通极其便利。酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', '0', '2019-06-04 19:37:04', '80');
INSERT INTO `hotel` VALUES ('12', 'MY_kezhan_01', '湖南隆华国际酒店（长沙）', '长沙市芙蓉区人民东路与红旗路交汇处', '  酒店设有各具风味特色的中、西、料理餐厅有6个，提供丰盛的美味佳肴，让您滋养身心，愉悦味蕾。法香咖啡厅24小时为您提供美味的自助餐及散点；会大堂吧是您品尝放飞心扉的鸡尾酒和香溢浓浓咖啡的舒适之所；禾荟中餐厅提供品质粤式美肴和湘式风味佳肴。', '0', '2019-06-04 19:37:06', '80');
INSERT INTO `hotel` VALUES ('12da045fb5cc4f16a28f0c46c2ba3d7f', 'MY_kezhan_01', '首都大酒店', '北京市东城区前门东大街3号', '北京首都大酒店座落于前门、王府井商业风景区内，近临故宫、天坛、景山等著名景点，步行就可到达闻名遐尔的天安门广场。酒店周围不仅名胜景点汇聚，还有市政府、商务部、对外友协、最高人民法院等市委政府机关和部委。酒店周边交通四通八达，横贯东西，纵穿南北，十分方便。', '1', '2019-06-04 11:50:32', '80');
INSERT INTO `hotel` VALUES ('13', 'MY_kezhan_01', '嘉兴富悦大酒店', '嘉兴市中环西路28号', '嘉兴富悦大酒店总面积7.4万平方米，拥有各类豪华客房450间套，宽敞豪华的大开间、通透舒适的落地大玻璃窗、风格时尚的卫浴设计、细心周到的贴身管家、无微不至的用心服务。豪华温馨的客房设施，将带给您品位非凡的享受。', '0', '2019-06-04 19:37:11', '80');
INSERT INTO `hotel` VALUES ('14', 'MY_kezhan_01', '西安W酒店', '西安 雁塔区 曲江池东路333号', '酒店店拥有三百余间客房和套房，步入其中令人耳目一新。每间客房均配有景观阳台，置身于此，便可一览壮丽的曲江盛景。房内配有W酒店特色睡床，及备受喜爱的Bliss洗浴用品、先进的娱乐设施等，为您打造潮奢的入住体验。酒店中所有细节都展现着自成一格的独特品味，阐述了古典雅致与现代趣味的惊喜碰撞。', '0', '2019-06-04 19:37:15', '80');
INSERT INTO `hotel` VALUES ('15', 'MY_kezhan_01', '宏远酒店', '广东省中山市', '宏远酒店以其优质的服务、典雅的环境、精美特色的餐饮文化而远近闻名，并荣获多项荣誉，其中包括在首届全国饭店系统服务技能比赛中荣获2005年全国十佳餐饮企业服务质量金奖、个人赛金奖、团体赛金奖、“国家级特级酒家（五钻级）”称号、“广东省餐饮名店”、“全国绿色餐饮企业”，“广东省的消费者最信赖的质量放心酒店”，2008年5月份宏远酒店被评为中国“优质服务酒店”。', '0', '2019-06-04 19:37:17', '80');
INSERT INTO `hotel` VALUES ('16', 'MY_kezhan_01', '北京京仪大酒店 ', '海淀区中关村科技园区', '酒店由美国著名的设计师设计，独特的天井式大堂富丽堂皇，三部观光电梯可从不同方位欣赏到酒店中西合璧的建筑艺术。步入大堂您会感受到优雅和奢华的氛围，同时享受到温馨周到的服务。\r\n', '0', '2019-06-04 19:37:19', '80');
INSERT INTO `hotel` VALUES ('17', 'MY_kezhan_01', '逸佳酒店', '武汉市江岸区', '：酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', '0', '2019-06-04 19:37:21', '80');
INSERT INTO `hotel` VALUES ('18', 'MY_kezhan_01', '怡观海酒店', '湖南省长沙市', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场', '0', '2019-06-04 19:37:23', '80');
INSERT INTO `hotel` VALUES ('19', 'MY_kezhan_01', '友谊酒店', '湖南省岳阳市', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所', '0', '2019-06-04 19:37:24', '80');
INSERT INTO `hotel` VALUES ('2', 'MY_kezhan_01', '洲际酒店', '山东省青岛市', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。\r\n酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。\r\n', '0', '2019-06-04 19:36:57', '80');
INSERT INTO `hotel` VALUES ('20', 'MY_kezhan_01', '堂舍酒店', '山东省济南市', '酒店店拥有三百余间客房和套房，步入其中令人耳目一新。每间客房均配有景观阳台，置身于此，便可一览壮丽的曲江盛景。房内配有特色睡床，及备受喜爱的Bliss洗浴用品、先进的娱乐设施等，为您打造潮奢的入住体验。', '0', '2019-06-04 19:37:26', '80');
INSERT INTO `hotel` VALUES ('21', 'MY_kezhan_01', '帝盛酒店', '广东珠海市省', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场', '0', '2019-06-04 19:37:28', '80');
INSERT INTO `hotel` VALUES ('22', 'MY_kezhan_01', '云鼎酒店', '海南省海口市', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', '0', '2019-06-04 19:37:33', '80');
INSERT INTO `hotel` VALUES ('23', 'MY_kezhan_01', '浪漫满屋酒店', '海南省三亚市', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场', '0', '2019-06-04 19:37:35', '80');
INSERT INTO `hotel` VALUES ('24', 'MY_kezhan_01', '丽豪酒店', '云南省昆明市', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所', '0', '2019-06-04 19:37:37', '80');
INSERT INTO `hotel` VALUES ('25', 'MY_kezhan_01', '静澜栈酒店', '陕西省西安市', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', '0', '2019-06-04 19:37:39', '80');
INSERT INTO `hotel` VALUES ('26', 'MY_kezhan_08', '品尚酒店', '江西省南昌市', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场', '0', '2019-06-04 19:37:40', '80');
INSERT INTO `hotel` VALUES ('27', 'MY_kezhan_07', '她他酒店', '四川省成都市', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', '0', '2019-06-04 19:37:42', '80');
INSERT INTO `hotel` VALUES ('28', 'MY_kezhan_06', '丹枫白露酒店', '贵州省贵阳市', '酒店店拥有三百余间客房和套房，步入其中令人耳目一新。每间客房均配有景观阳台，置身于此，便可一览壮丽的曲江盛景。房内配有特色睡床，及备受喜爱的Bliss洗浴用品、先进的娱乐设施等，为您打造潮奢的入住体验。', '0', '2019-06-04 19:37:43', '80');
INSERT INTO `hotel` VALUES ('29', 'MY_kezhan_04', '米兰酒店', '广西省南宁市', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', '0', '2019-06-04 19:37:49', '80');
INSERT INTO `hotel` VALUES ('2b330bf809484945ad9ffa95a41f95fd', 'MY_kezhan_05', '东方大酒店', '武汉市武昌区', '酒店店拥有三百余间客房和套房，步入其中令人耳目一新。每间客房均配有景观阳台，置身于此，便可一览壮丽的曲江盛景。房内配有特色睡床，及备受喜爱的Bliss洗浴用品、先进的娱乐设施等，为您打造潮奢的入住体验。', '1', '2019-06-04 19:37:47', '80');
INSERT INTO `hotel` VALUES ('3', 'MY_kezhan_01', '白玫瑰大酒店酒店', '武汉市江夏区', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所', '0', '2019-06-04 19:32:56', '80');
INSERT INTO `hotel` VALUES ('30', 'MY_kezhan_01', '国际饭店', '北京市清华大学旁', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', '0', '2019-06-04 19:32:54', '80');
INSERT INTO `hotel` VALUES ('368aa3bcf201415592743a64eae3c1ff', 'MY_kezhan_08', '七天酒店', '嘉园华府', 'very good good', '1', '2019-10-28 09:20:13', '80');
INSERT INTO `hotel` VALUES ('4', 'MY_kezhan_08', '一百假日酒店', '上海市黄浦区', '酒店店拥有三百余间客房和套房，步入其中令人耳目一新。每间客房均配有景观阳台，置身于此，便可一览壮丽的曲江盛景。房内配有特色睡床，及备受喜爱的Bliss洗浴用品、先进的娱乐设施等，为您打造潮奢的入住体验。', '0', '2019-06-04 19:32:51', '80');
INSERT INTO `hotel` VALUES ('5', 'MY_kezhan_01', '百合花酒店', '上海市硚口区', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场', '0', '2019-06-04 19:32:48', '80');
INSERT INTO `hotel` VALUES ('6', 'MY_kezhan_01', '福州如家快捷酒店', '福州市', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', '0', '2019-06-04 19:32:46', '80');
INSERT INTO `hotel` VALUES ('7', 'MY_kezhan_01', '宝丽来酒店', '深圳市', '酒店店拥有三百余间客房和套房，步入其中令人耳目一新。每间客房均配有景观阳台，置身于此，便可一览壮丽的曲江盛景。房内配有特色睡床，及备受喜爱的Bliss洗浴用品、先进的娱乐设施等，为您打造潮奢的入住体验。', '0', '2019-06-04 19:32:43', '80');
INSERT INTO `hotel` VALUES ('8', 'MY_kezhan_01', '联城酒店', '安徽省合肥市', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场', '0', '2019-06-04 19:32:41', '80');
INSERT INTO `hotel` VALUES ('854c4cac5f12477997a04c18b5aa8376', 'MY_kezhan_08', '如家', '湖北省武汉市', '酒店客房舒适清爽、格调典雅，配备有3D高清电视机、高级保险柜、迷你吧、电熨斗、电话及传真机等，为您入住和办公提供方便；各类洗漱、卫浴用品豪华气派，拥有整体淋浴房和单体高档浴缸等，并为您提供有线、无线上网、洗衣、送餐等各式贴心跟踪式服务；总之，让宾客入住体验舒适、便捷和惬意。', '0', '2020-03-28 04:13:44', '80');
INSERT INTO `hotel` VALUES ('ba1e6b9f82714fa3b3ac204a340b7850', 'MY_kezhan_03', '阿真酒店', '湖北省武汉市', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场，可为宾客提供各式全新五星水准的酒店住宿、饮食、宴会、会议、康体和娱乐一体化的服务。另500多个车位的大型停车场，为宾客的出行提供了更多的便利。', '1', '2019-06-05 11:57:40', '80');
INSERT INTO `hotel` VALUES ('fb548675a46646d3915ecfb10b677af5', 'MY_kezhan_02', '明阳酒店', '湖北省武汉市', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', '0', '2019-06-05 11:57:51', '80');

-- ----------------------------
-- Table structure for route_comment
-- ----------------------------
DROP TABLE IF EXISTS `route_comment`;
CREATE TABLE `route_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(8000) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `route_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_route_comment` (`route_id`),
  KEY `fk_route_userid` (`user_id`),
  CONSTRAINT `fk_route_comment` FOREIGN KEY (`route_id`) REFERENCES `travel_route` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_route_userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of route_comment
-- ----------------------------
INSERT INTO `route_comment` VALUES ('1', '还不错哦', '2020-04-24 14:09:18', 'a76d66cbd08c4fe1a36e9ff7eaed9f75', '14');
INSERT INTO `route_comment` VALUES ('2', '萌萌哒萌萌哒', '2020-04-25 09:14:09', 'a64520eef28440f5910b6acaa4dbda85', '14');
INSERT INTO `route_comment` VALUES ('3', '这个线路不错', '2020-04-25 11:11:06', 'a64520eef28440f5910b6acaa4dbda85', '14');

-- ----------------------------
-- Table structure for strategy_comment
-- ----------------------------
DROP TABLE IF EXISTS `strategy_comment`;
CREATE TABLE `strategy_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(8000) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `strategy_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_strategy_id` (`strategy_id`),
  KEY `fk_strategy_user_id` (`user_id`),
  CONSTRAINT `fk_strategy_id` FOREIGN KEY (`strategy_id`) REFERENCES `travel_strategy` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_strategy_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of strategy_comment
-- ----------------------------
INSERT INTO `strategy_comment` VALUES ('1', '这个攻略不错，收藏', '2020-04-25 17:31:01', '695903942de94c60880e7ed58add0ea0', '12');
INSERT INTO `strategy_comment` VALUES ('3', 'very good', '2020-04-25 11:11:26', 'a64520eef28440f5910b6acaa4dbda85', 'f0ac10d5dd444945b579cce0b8981b8c');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for tang_shan
-- ----------------------------
DROP TABLE IF EXISTS `tang_shan`;
CREATE TABLE `tang_shan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(8000) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `add_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tang_shan
-- ----------------------------
INSERT INTO `tang_shan` VALUES ('1', '唐山简介', '唐山，简称“唐”，河北省地级市，位于河北省东部、华北平原东北部，南临渤海，北依燕山，毗邻京津，地处华北与东北通道的咽喉要地，总面积为13472平方千米，是中国（河北）自由贸易试验区组成部分。 [1-2] \r\n唐山因唐太宗李世民东征高句丽驻跸而得名，素有“北方瓷都”之称。这里诞生了中国第一座机械化采煤矿井、第一条标准轨距铁路、第一台蒸汽机车、第一桶机制水泥。唐山是中国评剧的发源地，素有“冀东三支花”之称的皮影、评剧、乐亭大鼓，为国家级非物质文化遗产。\r\n唐山先后获得联合国人居奖、中国优秀旅游城市、国家园林城市、全国双拥模范城市等荣誉。曾于1991年举办第二届中华人民共和国城市运动会，并于2016年举办世界园艺博览会、金鸡百花电影节 [3]  、中国-中东欧国家地方领导人会议、第10届中国-拉美企业家高峰会。 [4-8] \r\n截至2018年，唐山市下辖7个市辖区、3个县级市、4个县，另设有3个开发区、1个管理区 [9]  ，2019常住人口796.4万人。2019年，唐山市实现地区生产总值（GDP）6890.0亿元。', '2020-04-23 14:00:22', 'admin');
INSERT INTO `tang_shan` VALUES ('3', '唐山旅游概况', '唐山旅游概况 ', '2020-04-24 02:25:12', 'admin');
INSERT INTO `tang_shan` VALUES ('5', '唐山旅游地图', '2233            ', '2020-04-24 02:52:51', 'admin');

-- ----------------------------
-- Table structure for travel_diary
-- ----------------------------
DROP TABLE IF EXISTS `travel_diary`;
CREATE TABLE `travel_diary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(8000) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_diary` (`user_id`),
  CONSTRAINT `fk_user_id_diary` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_diary
-- ----------------------------
INSERT INTO `travel_diary` VALUES ('1', '今天很高兴游玩了唐山', '哈哈哈哈', '2020-04-24 11:13:09', '695903942de94c60880e7ed58add0ea0');
INSERT INTO `travel_diary` VALUES ('2', 'very very happy', '非常非常高兴', '2020-04-25 11:18:43', '0bc85e2aa9ac44fbb6cb415271bb5014');
INSERT INTO `travel_diary` VALUES ('4', '哈哈', '呵呵', '2020-06-03 14:32:34', 'a64520eef28440f5910b6acaa4dbda85');

-- ----------------------------
-- Table structure for travel_route
-- ----------------------------
DROP TABLE IF EXISTS `travel_route`;
CREATE TABLE `travel_route` (
  `id` varchar(255) NOT NULL,
  `route_name` varchar(255) DEFAULT NULL,
  `route_describe` varchar(255) DEFAULT NULL,
  `route_status` int(2) NOT NULL DEFAULT '0',
  `route_address` varchar(255) DEFAULT NULL,
  `collect_number` int(32) NOT NULL DEFAULT '0',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of travel_route
-- ----------------------------
INSERT INTO `travel_route` VALUES ('10', '台湾高雄旅游路线', 'D1捷运美丽岛站光之穹顶(0.5小时) → 驳二艺术特区(2小时) → 打狗鉄道故事馆(1小时) → 西子湾风景区(1小时) → 打狗英国领事馆(1小时) → 真爱码头(0.5小时) → 高雄爱河(0.5小时) → 高雄六合夜市(2小时)', '0', '台湾高雄旅', '0', '2019-06-19 09:37:40', null);
INSERT INTO `travel_route` VALUES ('11', '澳门旅游路线', 'D1大三巴牌坊(1小时以下) → 恋爱巷(1小时以下) → 疯堂斜巷(1小时以下) → 澳门渔人码头(3小时以上)', '0', '澳门', '0', '2019-06-19 09:37:47', null);
INSERT INTO `travel_route` VALUES ('12', '\r\n江西婺源旅游路线', 'D1婺源汽车北站(老站)(10分钟) → 月亮湾(30分钟) → 李坑(2小时) → 江岭(2小时) → 庆源村(1小时)\r\n\r\nD2庆源村(1小时) → 晓起(3小时) → 汪口(2小时)\r\n\r\nD3婺源汽车北站(老站)(10分钟) → 思溪延村(2小时) → 彩虹桥(2小时) → 婺源博物馆(1小时)', '0', '\r\n江西婺源', '0', '2019-06-19 09:37:51', null);
INSERT INTO `travel_route` VALUES ('13', '杭州旅游路线', 'D1西湖(2小时以上) → 中国杭帮菜博物馆(1-3小时) → 杭州宋城景区(2小时以上) → 宋城千古情演出(1小时)\r\n\r\nD2老贯桥烧麦(中山北路店)(1小时) → 浙江省博物馆武林馆区(1-3小时) → 京杭大运河水上公交(1-2小时) → 桥西直街(1-3小时) → 中国伞博物馆(1-2小时) → 小河直街历史文化街区(1小时)', '0', '杭州', '0', '2019-06-19 09:37:56', null);
INSERT INTO `travel_route` VALUES ('14', '青岛旅游路线', 'D1栈桥(1小时) → 圣弥厄尔大教堂(1小时) → 中山路商业街(1-2小时) → 青岛啤酒博物馆(1-2小时) → 八大关风景区(1-3小时) → 青岛奥林匹克帆船中心(1-2小时) → 五四广场(1-2小时)\r\n\r\nD2仰口风景游览区(1-3小时) → 崂山太清宫(1-3小时)\r\n\r\nD3金沙滩(1-3小时) → 青岛东方影都万达乐园(1-3小时)', '0', '青岛', '0', '2019-06-19 09:38:01', null);
INSERT INTO `travel_route` VALUES ('15', '河北北戴河旅游路线：', '\r\nD1老虎石海上公园(3小时) → 碧螺塔酒吧公园(3小时)\r\n\r\nD2鸽子窝公园(2小时) → 奥林匹克大道公园(1小时) → 秦皇岛北戴河怪楼奇园景区(1小时) → 北戴河海滨浴场(2小时)', '1', '河北北戴河', '0', '2019-06-19 09:38:05', '2020-06-03 13:58:44');
INSERT INTO `travel_route` VALUES ('2', '云南路线', 'Day1，昆明接机，住昆明\r\nDay2，昆明乘车至石林，晚住楚雄\r\nDay3，楚雄至大理，大理VIP游艇、吉普车环洱海、大理古城，住大理\r\nDay4，大理至丽江，拉市海、丽水金沙、丽江古城，住丽江\r\nDay5，丽江雪山大索道、蓝月谷景区，晚火车卧铺回昆明\r\nDay6，昆明花市，送到昆明机场，结束愉快的行程  ', '0', '云南', '0', '2019-06-19 09:36:51', null);
INSERT INTO `travel_route` VALUES ('3', '上海旅游路线', '上海旅游路线\r\n第一站：城隍庙\r\n第二站：逛马路\r\n第三站：外滩\r\n第四站：东方明珠\r\n第五站：上海海洋水族馆\r\n第六站：正大广场\r\n第七站：滨江大道', '0', '上海', '0', '2019-06-19 09:37:01', null);
INSERT INTO `travel_route` VALUES ('4', '北京旅游路线', 'D1天安门广场(1.5小时) → 故宫(3小时) → 景山公园(1小时) → 北京全聚德(前门店)(1小时)\r\n\r\nD2雍和宫(2小时) → 孔庙和国子监博物馆(1.5小时) → 五道营胡同(1小时) → 簋街(2小时)\r\n\r\nD3恭王府(2.5小时) → 什刹海(3小时) → 南锣鼓巷(机动选择，1.5小时)\r\n\r\nD4天坛公园(2小时) → 鸟巢(0.5小时) → 水立方(0.5小时)', '0', '北京', '0', '2019-06-19 09:37:08', null);
INSERT INTO `travel_route` VALUES ('5', '海南旅游路线', 'D1大东海旅游区(2小时)\r\n\r\nD2鹿回头风景区(2小时) → 三亚千古情景区(3小时)\r\n\r\nD3海南槟榔谷黎苗文化旅游区(4小时) → 三亚湾椰梦长廊(2小时)\r\n\r\nD4分界洲岛(4小时) → 南湾猴岛(3小时)', '0', '海南', '0', '2019-06-19 09:37:14', null);
INSERT INTO `travel_route` VALUES ('6', '云南大理旅游路线', 'D1大理古城(2-3小时) → 崇圣寺三塔(2小时) → 三塔倒影公园(1小时) → 人民路(1-2小时)\r\n\r\nD2大理古城(出发) → 喜洲古镇(1-2小时) → 蝴蝶泉(1小时) → 双廊古镇(2小时) → 南诏风情岛(1小时) → 挖色镇(2小时) → 小普陀(30分钟) → 大理古城(返回)', '0', '云南大理', '0', '2019-06-19 09:37:19', null);
INSERT INTO `travel_route` VALUES ('7', '广州旅游路线', 'D1石室圣心大教堂(1小时) → 沙面岛(3小时) → 陈家祠(1小时) → 上下九步行街(3小时)\r\n\r\nD2越秀公园(2小时) → 中山纪念堂(2小时) → 北京路步行街(3小时) → 广州珠江夜游(1小时)\r\n\r\nD3中山大学(2小时) → 红专厂创意园(3小时) → 海心沙广场(1小时) → 广州塔(2小时)\r\n', '0', '广州', '0', '2019-06-19 09:37:24', null);
INSERT INTO `travel_route` VALUES ('8', '阿尔山旅游路线', 'D1阿尔山国家森林公园(一天)\r\n\r\nD2阿尔山国家森林公园(2小时以上) → 五里泉(1小时) → 阿尔山火车站(2小时) → 阿尔山温泉(2小时)\r\n\r\nD3阿尔山奥伦布坎景区(2小时) → 白狼峰景区(2小时) → 鹿村(2小时', '0', '阿尔山', '0', '2019-06-19 09:37:30', null);
INSERT INTO `travel_route` VALUES ('9', '拉萨路线', 'D1布达拉宫(3小时) → 宗角禄康公园(1小时) → 大昭寺(1.5小时) → 八廓街(2小时)\r\n\r\nD2哲蚌寺(2小时) → 娘热民俗风情园(2小时) → 色拉寺(2小时)\r\n\r\nD3念青唐古拉山(30分钟) → 那根拉(30分钟) → 纳木错(2小时)', '0', '拉萨', '0', '2019-06-19 09:37:36', null);
INSERT INTO `travel_route` VALUES ('b83c74c939064c26bae9884fc8c488b5', '湖北武汉一日游', '    咸宁隐水洞\r\n    旅游小贴士：洞内有三重十二关三十六大经典景点十分新颖，可以考考自己的想象力哦。如“众仙护丹”、“天鹅之吻”、“金瀑布”、“银瀑布”、“仙人造田”、“天将神靴”、“寒山古钟”、“玉兔观桃”、“龙宫洞府”、“鲤鱼跃龙门”、“玉树撑天”、“雏鹰展翅”、“观音送子”、“八卦迷宫”、“大圣腾空”、“东海神龟”、“玉雕溪窟”、“龙王戏妃”、“倒挂石林”、“长江三峡”、“水生石莲”、“八百罗汉”、“金字塔”、“女娲补天”等，吸引我们的眼球，真可谓是“三步一岩，五步一景，十步一变”。　　', '0', '湖北武汉', '0', '2019-06-15 07:49:16', null);
INSERT INTO `travel_route` VALUES ('ff99bc4eba4f4018a7ff375766fdf8ac', '北京故宫', '	咸宁隐水洞 旅游小贴士：洞内有三重十二关三十六大经典景点十分新颖，可以考考自己的想象力哦。如“众仙护丹”、“天鹅之吻”、“金瀑布”、“银瀑布”、“仙人造田”、“天将神靴”、“寒山古钟”、“玉兔观桃”、“龙宫洞府”、“鲤鱼跃龙门”、“玉树撑天”、“雏鹰展翅”、“观音送子”、“八卦迷宫”、“大圣腾空”、“东海神龟”、“玉雕溪窟”、“龙王戏妃”、“倒挂石林”、“长江三峡”、“水生石莲”、“八百罗汉”、“金字塔”、“女娲补天”等，吸引我们的眼球，真可谓是“三步一岩，五步一景，十步一变”。　　', '0', '北京', '0', '2019-06-15 10:29:33', null);

-- ----------------------------
-- Table structure for travel_strategy
-- ----------------------------
DROP TABLE IF EXISTS `travel_strategy`;
CREATE TABLE `travel_strategy` (
  `id` varchar(255) NOT NULL COMMENT '旅游攻略strategy',
  `user_id` varchar(255) DEFAULT NULL,
  `strategy_describe` varchar(255) DEFAULT NULL,
  `strategy_status` int(255) DEFAULT NULL COMMENT '0是审核通过,1是未审核,2是审核未通过',
  `create_date` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `error_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `travel_strategy_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of travel_strategy
-- ----------------------------
INSERT INTO `travel_strategy` VALUES ('10', '0bc85e2aa9ac44fbb6cb415271bb5014', '上海迪士尼离浦东机场打车30分钟，比虹桥近，想下飞机直接过去玩的小伙伴可以落在浦东。\r\n\r\n　　迪士尼有两个酒店??，一个是“乐园酒店”，一个是“玩具总动员酒店”，住这两个酒店的好处是在官网预定的话可以比别人多领一张?FP(快速通行证)，可以比别人早入园，早入园的好处我后面会讲。\r\n\r\n　　两个酒店都有班车去乐园，乐园酒店的班车还要再早10分钟。', '0', '2019-06-19 09:42:48', '迪士尼乐园攻略', null);
INSERT INTO `travel_strategy` VALUES ('11', '0bc85e2aa9ac44fbb6cb415271bb5014', '1）机票，3月份定港龙航空杭州直飞香港，1280/位；#原创新人#澳门—繁华又精致（4天3晚自由行）实际使用下来体验还不错~\r\n\r\n　　（3）淘宝、携程、Booking、Agoda几乎天天逛一圈，我们是提前一个月在Agoda上定的尖沙咀华美达，3晚含税1000，我就不说提前一周看的时候总价降到800多了#原创新人#澳门—繁华又精致（4天3晚自由行）\r\n\r\n　　（3）要带的东西：港澳通行证，港币（记得换些零钱，坐公交打车等），上网卡（通关处卖100港币，网上只要几十，网购需至少提前三天　\r\n买\r\n', '0', '2019-06-19 09:42:53', '香港旅游攻略', null);
INSERT INTO `travel_strategy` VALUES ('12', '0bc85e2aa9ac44fbb6cb415271bb5014', '　东方明珠塔的陈列馆还是非常值得一逛哦，特别是对于上海宁，这里是上海城市历史发展陈列馆 里面很多的历史场景，也许还都是你爷爷奶奶外公外婆辈的呢呢，所以也很值得带长辈来玩 就是可能会走比较累。\r\n\r\n　　登塔时间：\r\n\r\n　　如果想看白天的上海那就下午去，最好1点-3点。如果要看太阳西落及夜景，那就5点再去（必然会排队）去之前我查过很多攻略，都说登塔排队拍了好几个小时，我下午3点去的（本来定的2点，但买喜茶耽误到3点了）排队15分钟。', '0', '2019-06-19 09:43:02', '上海东方明珠广播电视塔攻略', '123');
INSERT INTO `travel_strategy` VALUES ('2', '0bc85e2aa9ac44fbb6cb415271bb5014', '有草原，河流，森林，口岸，能体验蒙古族和俄罗斯民族风情，不论到哪里旅游都是为了孩子开心快乐啊！\r\n\r\n　　呼伦贝尔首先是整个中国安全的地方，再有呼伦贝尔地广人稀，一公里才平均分布一人。蓝天白云绿草地，风吹草低现牛羊，带孩子亲近自然是一件特别美好的事情，而且来到草原后发现，那些高楼大厦不见了，车辆不见了，陌生人不见了，能看到的只有同行的家人和孩子。那种感觉真的是美极了。\r\n', '0', '2019-06-19 09:41:38', '游呼伦贝尔自由行攻略', null);
INSERT INTO `travel_strategy` VALUES ('240f4953dc5c437389886ceb01acb15c', 'a76d66cbd08c4fe1a36e9ff7eaed9f75', '因线路不同、景色各异，川藏线又被划分为川藏北线(国道317)和川藏南线(国道318)。起点同为成都，终点也同为拉萨，只不过从新都桥分路之后，北线向北部多延伸了一段距离，北线的总公里数较多。南线和北线的风景都很美丽，沿途都要经过高山峡谷、原始森林、高原湖泊、草原湿地、雪山冰川等景色优美的地方。川藏南线，最美的进藏路。南线自然风景相比北线更为秀丽，如: 摄影天堂新都桥，稻城亚丁，雅鲁藏布大峡谷，然乌湖，林芝等。南线相对北线而言所经过的地方，多为人口相对密集的地区。', '0', '2020-03-17 14:26:15', '西藏之行', 'Test');
INSERT INTO `travel_strategy` VALUES ('4', '0bc85e2aa9ac44fbb6cb415271bb5014', '\r\n　　比起以往的大巴团，自驾，火车，航班，而邮轮对于很多人来说却还是一种全新的旅游方式，充满陌生感和新奇感。\r\n\r\n　　而这次将搭乘前往西沙设施最豪华的邮轮——长乐公主号，从三亚到西沙群岛，四天的时间，去一次便能领略西沙群岛不同海岛的风貌。\r\n\r\n　　不得不说，相比人挤人的海岛游，这确实是一次诚意满满的海岛之旅。\r\n\r\n　　整个行程节奏把控的特别好，缓解了人们在路上的奔波疲劳，更加劳逸结合。', '0', '2019-06-19 09:42:01', '西沙群岛旅游攻略', null);
INSERT INTO `travel_strategy` VALUES ('5', '0bc85e2aa9ac44fbb6cb415271bb5014', '国内唯一一艘旅游潜艇，最大深度据说40米，芬兰进口，票价，不分大人小孩，超过1米，一律310元，找旅行社有优惠，260元\r\n\r\n　　分界洲岛不仅提供潜水、海钓等常规的海洋项目，而且还提供与众多海洋动物（海豚、海狮、海龟等）亲密互动的机会。\r\n\r\n　　等潜水艇游玩，上岸后，小船直接给送到海洋馆，海洋馆上午表演时间间隔较大，第一场9:30，第二场11:30\r\n\r\n　　有不少儿童互动项目：喂海豚，喂海龟\r\n意料之外的景点—海南省博物馆\r\n', '0', '2019-06-19 09:42:09', '分界洲岛攻略', null);
INSERT INTO `travel_strategy` VALUES ('5a7b135a9900419daeabf7003a942be9', '695903942de94c60880e7ed58add0ea0', '国内唯一一艘旅游潜艇，最大深度据说40米，芬兰进口，票价，不分大人小孩，超过1米，一律310元，找旅行社有优惠，260元分界洲岛不仅提供潜水、海钓等常规的海洋项目，而且还提供与众多海洋动物（海豚、海狮、海龟等）亲密互动的机会。等潜水艇游玩，上岸后，小船直接给送到海洋馆，海洋馆上午表演时间间隔较大，第一场9:30，第二场11:30有不少儿童互动项目：喂海豚，喂海龟 意料之外的景点—海南省博物馆。', '0', '2020-03-28 14:42:44', '分界洲岛攻略', null);
INSERT INTO `travel_strategy` VALUES ('67f9b435a83e4e7da005f4554597293e', '695903942de94c60880e7ed58add0ea0', '1）机票，3月份定港龙航空杭州直飞香港，1280/位；#原创新人#澳门—繁华又精致（4天3晚自由行）实际使用下来体验还不错~（3）淘宝、携程、Booking、Agoda几乎天天逛一圈，我们是提前一个月在Agoda上定的尖沙咀华美达，3晚含税1000，我就不说提前一周看的时候总价降到800多了#原创新人#澳门—繁华又精致（4天3晚自由行）（3）要带的东西：港澳通行证，港币（记得换些零钱，坐公交打车等），上网卡（通关处卖100港币，网上只要几十，网购需至少提前三天买。', '0', '2020-03-28 14:41:54', '香港旅游攻略', null);
INSERT INTO `travel_strategy` VALUES ('71b3c18a04fc40669e8bc9f1e91c434a', '695903942de94c60880e7ed58add0ea0', '上海迪士尼离浦东机场打车30分钟，比虹桥近，想下飞机直接过去玩的小伙伴可以落在浦东。迪士尼有两个酒店??，一个是“乐园酒店”，一个是“玩具总动员酒店”，住这两个酒店的好处是在官网预定的话可以比别人多领一张?FP(快速通行证)，可以比别人早入园，早入园的好处我后面会讲。两个酒店都有班车去乐园，乐园酒店的班车还要再早10分钟。\r\n', '0', '2020-03-28 14:41:12', ' 迪士尼乐园攻略', null);
INSERT INTO `travel_strategy` VALUES ('8', '0bc85e2aa9ac44fbb6cb415271bb5014', '1、南普陀请香与别处不同：小木屋可免费请一支清香（不可多取），功德随意投入，一元二元不拘，不投也无妨；\r\n\r\n　　2、烧香的地方在天王殿外，香烛不可带进寺院里面；如随身带有香烛的，可以寄放在天王殿门口的义工处，出来时取；\r\n旅行攻略8：\r\n鼓浪屿攻略\r\n至于游玩鼓浪屿的线路，建议走经典线路：龙头路+八卦楼+菽庄花园\r\n', '0', '2019-06-19 09:42:33', '厦门大学攻略', null);
INSERT INTO `travel_strategy` VALUES ('8ee2357bd1354d1a9724c94da36eae6f', 'a76d66cbd08c4fe1a36e9ff7eaed9f75', '因线路不同、景色各异，川藏线又被划分为川藏北线(国道317)和川藏南线(国道318)。起点同为成都，终点也同为拉萨，只不过从新都桥分路之后，北线向北部多延伸了一段距离，北线的总公里数较多。南线和北线的风景都很美丽，沿途都要经过高山峡谷、原始森林、高原湖泊、草原湿地、雪山冰川等景色优美的地方。川藏南线，最美的进藏路。南线自然风景相比北线更为秀丽，如: 摄影天堂新都桥，稻城亚丁，雅鲁藏布大峡谷，然乌湖，林芝等。南线相对北线而言所经过的地方，多为人口相对密集的地区。', '2', '2020-03-17 14:26:13', '西藏之行', '路线错误');
INSERT INTO `travel_strategy` VALUES ('9', '0bc85e2aa9ac44fbb6cb415271bb5014', '\r\n　　朱家角景区有一南一北两个门，以河道为界划分成南北两片区域，当中以放生桥相联结。放生桥\r\n\r\n　　作为“国际著名景点”，放生桥不得不看。代表朱家角形象的非他莫属，全桥总长72米，宽5.8米，高7.4米 为古代上海最大的五孔石桥。放生桥不但大气，且文气，素有“井带长虹 的美称，串起桥畔北大街上众多的百年老店。', '0', '2019-06-19 09:42:41', '朱家角古镇攻略', null);
INSERT INTO `travel_strategy` VALUES ('9135c97bc369431e84ae2249ad5cd33f', '695903942de94c60880e7ed58add0ea0', '1、南普陀请香与别处不同：小木屋可免费请一支清香（不可多取），功德随意投入，一元二元不拘，不投也无妨； 　　2、烧香的地方在天王殿外，香烛不可带进寺院里面；如随身带有香烛的，可以寄放在天王殿门口的义工处，出来时取； 旅行攻略8： 鼓浪屿攻略 至于游玩鼓浪屿的线路，建议走经典线路：龙头路+八卦楼+菽庄花园', '0', '2020-03-28 14:50:43', ' 厦门大学攻略', null);
INSERT INTO `travel_strategy` VALUES ('9a55917ccbb445cc91ac02f26269c58f', '695903942de94c60880e7ed58add0ea0', '比起以往的大巴团，自驾，火车，航班，而邮轮对于很多人来说却还是一种全新的旅游方式，充满陌生感和新奇感。而这次将搭乘前往西沙设施最豪华的邮轮——长乐公主号，从三亚到西沙群岛，四天的时间，去一次便能领略西沙群岛不同海岛的风貌。不得不说，相比人挤人的海岛游，这确实是一次诚意满满的海岛之旅。整个行程节奏把控的特别好，缓解了人们在路上的奔波疲劳，更加劳逸结合。\r\n', '0', '2020-03-28 14:42:16', '西沙群岛旅游攻略', null);
INSERT INTO `travel_strategy` VALUES ('b939872e068c4f4c9f5b26784b7a1a83', '695903942de94c60880e7ed58add0ea0', '在冷美冷美冷美的哈尔滨，有着诱人的马达尔冰棍，俄罗斯烤肠，以及遍地的小吃。当然还有着童话梦幻般的冰雪大世界，那里有着各种各样的冰雕，好看极了。还有热闹好玩的中央大街。你值得一去，来吧小可爱。', '0', '2020-03-26 14:41:24', '哈尔滨之旅', null);
INSERT INTO `travel_strategy` VALUES ('bc7191b5e3364dd5a8fb532e753c96c5', '01751d95b70b46ae85c96cb3cb70c939', '耳温枪', '0', '2020-02-25 07:49:46', '123', null);
INSERT INTO `travel_strategy` VALUES ('bd2cbc4285774cc3898e1130032f5b16', '0bc85e2aa9ac44fbb6cb415271bb5014', '1、南普陀请香与别处不同：小木屋可免费请一支清香（不可多取），功德随意投入，一元二元不拘，不投也无妨； 　　2、烧香的地方在天王殿外，香烛不可带进寺院里面；如随身带有香烛的，可以寄放在天王殿门口的义工处，出来时取； 旅行攻略8： 鼓浪屿攻略 至于游玩鼓浪屿的线路，建议走经典线路：龙头路+八卦楼+菽庄花园', '0', '2019-06-22 03:17:54', 'test', null);
INSERT INTO `travel_strategy` VALUES ('d20199afaa63434fbed53c5dc9847ade', 'a76d66cbd08c4fe1a36e9ff7eaed9f75', '因线路不同、景色各异，川藏线又被划分为川藏北线(国道317)和川藏南线(国道318)。起点同为成都，终点也同为拉萨，只不过从新都桥分路之后，北线向北部多延伸了一段距离，北线的总公里数较多。南线和北线的风景都很美丽，沿途都要经过高山峡谷、原始森林、高原湖泊、草原湿地、雪山冰川等景色优美的地方。川藏南线，最美的进藏路。南线自然风景相比北线更为秀丽，如: 摄影天堂新都桥，稻城亚丁，雅鲁藏布大峡谷，然乌湖，林芝等。南线相对北线而言所经过的地方，多为人口相对密集的地区。', '2', '2020-03-17 14:26:14', '西藏之行', '123123');
INSERT INTO `travel_strategy` VALUES ('d9b05e29c91942f9859a9621286421a0', '0bc85e2aa9ac44fbb6cb415271bb5014', '东方明珠塔的陈列馆还是非常值得一逛哦，特别是对于上海宁，这里是上海城市历史发展陈列馆 里面很多的历史场景，也许还都是你爷爷奶奶外公外婆辈的呢呢，所以也很值得带长辈来玩 就是可能会走比较累。 　　登塔时间： 　　如果想看白天的上海那就下午去，最好1点-3点。如果要看太阳西落及夜景，那就5点再去（必然会排队）去之前我查过很多攻略，都说登塔排队拍了好几个小时，我下午3点去的（本来定的2点，但买喜茶耽误到3点了）排队15分钟。', '2', '2019-06-22 02:17:18', '上海东方明珠攻略', '攻略写的不够详细');
INSERT INTO `travel_strategy` VALUES ('de0fc5f7a5414ca38d911c2d34980d93', '695903942de94c60880e7ed58add0ea0', '朱家角景区有一南一北两个门，以河道为界划分成南北两片区域，当中以放生桥相联结。放生桥 　　作为“国际著名景点”，放生桥不得不看。代表朱家角形象的非他莫属，全桥总长72米，宽5.8米，高7.4米 为古代上海最大的五孔石桥。放生桥不但大气，且文气，素有“井带长虹 的美称，串起桥畔北大街上众多的百年老店', '0', '2020-03-28 14:51:05', '朱家角古镇攻略', null);
INSERT INTO `travel_strategy` VALUES ('f0ac10d5dd444945b579cce0b8981b8c', '695903942de94c60880e7ed58add0ea0', '\r\n有草原，河流，森林，口岸，能体验蒙古族和俄罗斯民族风情，不论到哪里旅游都是为了孩子开心快乐啊！ 　　呼伦贝尔首先是整个中国安全的地方，再有呼伦贝尔地广人稀，一公里才平均分布一人。蓝天白云绿草地，风吹草低现牛羊，带孩子亲近自然是一件特别美好的事情，而且来到草原后发现，那些高楼大厦不见了，车辆不见了，陌生人不见了，能看到的只有同行的家人和孩子。那种感觉真的是美极了。', '0', '2020-03-28 14:51:31', ' 游呼伦贝尔自由行攻略', null);
INSERT INTO `travel_strategy` VALUES ('fe5e568bf02f4a0eb3035c62ce42c3a5', '695903942de94c60880e7ed58add0ea0', '\r\n东方明珠塔的陈列馆还是非常值得一逛哦，特别是对于上海宁，这里是上海城市历史发展陈列馆 里面很多的历史场景，也许还都是你爷爷奶奶外公外婆辈的呢呢，所以也很值得带长辈来玩 就是可能会走比较累。 　　登塔时间： 　　如果想看白天的上海那就下午去，最好1点-3点。如果要看太阳西落及夜景，那就5点再去（必然会排队）去之前我查过很多攻略，都说登塔排队拍了好几个小时，我下午3点去的（本来定的2点，但买喜茶耽误到3点了）排队15分钟。', '0', '2020-03-28 14:50:20', '上海东方明珠攻略', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('01751d95b70b46ae85c96cb3cb70c939', '123456789', '521123456', null);
INSERT INTO `user` VALUES ('0bc85e2aa9ac44fbb6cb415271bb5014', 'qwe', '1234', '张XXx');
INSERT INTO `user` VALUES ('1', 'admin', '123456', '小枫');
INSERT INTO `user` VALUES ('123123123', 'root', '111', 'admin11');
INSERT INTO `user` VALUES ('695903942de94c60880e7ed58add0ea0', '❤有佳人', '521521', null);
INSERT INTO `user` VALUES ('7002b06a77ef47bc9b0f88a86a03b469', '789', '789', null);
INSERT INTO `user` VALUES ('a64520eef28440f5910b6acaa4dbda85', 'xiaofeng', '123456', null);
INSERT INTO `user` VALUES ('a76d66cbd08c4fe1a36e9ff7eaed9f75', '123', '123', null);
INSERT INTO `user` VALUES ('b23add03d87049afbf43fc7f4c855657', 'admin1', '123456', null);
INSERT INTO `user` VALUES ('f6b4cbb4c3974bab9f73dffe6821fd55', '', '13311', null);

-- ----------------------------
-- Table structure for user_attractions
-- ----------------------------
DROP TABLE IF EXISTS `user_attractions`;
CREATE TABLE `user_attractions` (
  `id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `attractions_id` varchar(255) NOT NULL,
  `user_attractions_describe` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `attractions_id` (`attractions_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `user_attractions_ibfk_1` FOREIGN KEY (`attractions_id`) REFERENCES `attractions` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `user_attractions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_attractions
-- ----------------------------
INSERT INTO `user_attractions` VALUES ('1257ce026c44442a8eb7af7f9f18ee25', 'a64520eef28440f5910b6acaa4dbda85', '5', null, '2020-04-23 03:23:39', '1');
INSERT INTO `user_attractions` VALUES ('6ed652a4fa0b464d9cec2ba2cf02733f', '695903942de94c60880e7ed58add0ea0', '1', null, '2020-03-26 15:05:35', null);
INSERT INTO `user_attractions` VALUES ('76202120f9a540aea6b0f1538a4b3a8c', 'a64520eef28440f5910b6acaa4dbda85', '7', null, '2020-04-25 11:12:18', '1');
INSERT INTO `user_attractions` VALUES ('bdfbade3f8d1487d903e88790f7a7dcd', 'a64520eef28440f5910b6acaa4dbda85', '2', null, '2020-04-23 02:39:04', '2');

-- ----------------------------
-- Table structure for user_hotel
-- ----------------------------
DROP TABLE IF EXISTS `user_hotel`;
CREATE TABLE `user_hotel` (
  `id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL DEFAULT '',
  `hotel_id` varchar(255) NOT NULL DEFAULT '',
  `user_hotel_describe` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_hotel_ibfk_1` (`user_id`) USING BTREE,
  KEY `user_hotel_ibfk_2` (`hotel_id`) USING BTREE,
  CONSTRAINT `user_hotel_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_hotel_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_hotel
-- ----------------------------
INSERT INTO `user_hotel` VALUES ('42f9bfdb92af4843b294240402b4f717', '7002b06a77ef47bc9b0f88a86a03b469', 'fb548675a46646d3915ecfb10b677af5', null, '2020-04-15 10:51:37');
INSERT INTO `user_hotel` VALUES ('58b3bd99694e43a38004c6471c032c4b', 'a64520eef28440f5910b6acaa4dbda85', '2b330bf809484945ad9ffa95a41f95fd', null, '2019-10-30 02:58:17');
INSERT INTO `user_hotel` VALUES ('7580876669bc4c11a410a0d832b35841', '1', '29', null, '2020-03-23 15:04:00');
INSERT INTO `user_hotel` VALUES ('c0427e2053be43d39becea203d9a09f6', 'a64520eef28440f5910b6acaa4dbda85', '854c4cac5f12477997a04c18b5aa8376', null, '2020-06-03 02:48:59');
INSERT INTO `user_hotel` VALUES ('c432189fc61f4e42a5faf4ac08d461e9', 'a76d66cbd08c4fe1a36e9ff7eaed9f75', '29', null, '2020-03-23 14:58:59');
INSERT INTO `user_hotel` VALUES ('d9e2cc96f9464db88e3e6d490532d832', 'a64520eef28440f5910b6acaa4dbda85', '29', null, '2019-10-30 03:04:21');

-- ----------------------------
-- Table structure for user_route
-- ----------------------------
DROP TABLE IF EXISTS `user_route`;
CREATE TABLE `user_route` (
  `id` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `route_id` varchar(255) DEFAULT NULL,
  `create_date` datetime(6) NOT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `route_id` (`route_id`) USING BTREE,
  CONSTRAINT `user_route_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_route_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `travel_route` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_route
-- ----------------------------
INSERT INTO `user_route` VALUES ('5dc7d5ed501349d19ccbe7886691daf8', 'a64520eef28440f5910b6acaa4dbda85', '15', '2019-10-30 02:57:41.496000');
INSERT INTO `user_route` VALUES ('636c0926b7714773aad412a171f5d510', 'a64520eef28440f5910b6acaa4dbda85', '13', '2019-10-30 03:04:31.289000');
INSERT INTO `user_route` VALUES ('d9729c224a1f4553b9e1499f442ccd8d', 'a76d66cbd08c4fe1a36e9ff7eaed9f75', '15', '2020-03-17 14:16:25.068000');
INSERT INTO `user_route` VALUES ('e44a493be66d4d1cb03cac2a68c2b0e4', '7002b06a77ef47bc9b0f88a86a03b469', '14', '2020-04-15 11:06:15.941000');

-- ----------------------------
-- Table structure for user_strategy
-- ----------------------------
DROP TABLE IF EXISTS `user_strategy`;
CREATE TABLE `user_strategy` (
  `id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL DEFAULT '',
  `strategy_id` varchar(255) NOT NULL DEFAULT '',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_hotel_ibfk_1` (`user_id`) USING BTREE,
  KEY `user_hotel_ibfk_2` (`strategy_id`) USING BTREE,
  CONSTRAINT `user_strategy_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_strategy_ibfk_2` FOREIGN KEY (`strategy_id`) REFERENCES `travel_strategy` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_strategy
-- ----------------------------
INSERT INTO `user_strategy` VALUES ('3f113ba7519246249deadcf353c05e5f', 'a64520eef28440f5910b6acaa4dbda85', 'bd2cbc4285774cc3898e1130032f5b16', '2019-10-30 03:04:47', null);
INSERT INTO `user_strategy` VALUES ('58569c9822e9402c8aa4d46078004fdd', '7002b06a77ef47bc9b0f88a86a03b469', 'f0ac10d5dd444945b579cce0b8981b8c', '2020-04-15 10:52:20', null);
INSERT INTO `user_strategy` VALUES ('5d46e79399ac42aea74036b742b6b1a0', '695903942de94c60880e7ed58add0ea0', '71b3c18a04fc40669e8bc9f1e91c434a', '2020-03-28 15:01:33', null);
INSERT INTO `user_strategy` VALUES ('6b05e19845814b5ab2a1623ebcd3294e', 'a76d66cbd08c4fe1a36e9ff7eaed9f75', '12', '2020-03-17 14:27:41', null);
INSERT INTO `user_strategy` VALUES ('e08180a083ae45b2bdcbfbe6dae983be', '1', '12', '2020-03-24 15:26:43', null);
