
--Drop the tables
DROP TABLE IF EXISTS student_aid_bc;
DROP TABLE IF EXISTS degree_granting_type;
DROP TABLE IF EXISTS region;
DROP TABLE IF EXISTS institution;
DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS institution_type;
DROP TABLE IF EXISTS campus;
DROP TABLE IF EXISTS relationships;

--Create the degree_granting_type table
CREATE TABLE degree_granting_type
(degree_granting_type_id SERIAL, 
degree_granting_type VARCHAR(60) NOT NULL,
PRIMARY KEY ( degree_granting_type_id )
);

--Load the degree_granting_type table
INSERT INTO degree_granting_type (degree_granting_type_id,degree_granting_type) VALUES(1,'B.C. Private Degree Granting');
INSERT INTO degree_granting_type (degree_granting_type_id,degree_granting_type) VALUES(2,'B.C. Public');
INSERT INTO degree_granting_type (degree_granting_type_id,degree_granting_type) VALUES(3,'Non-B.C. Degree Granting');

--Create the region table
CREATE TABLE region
(region_id SERIAL, 
region VARCHAR(40) NOT NULL,
PRIMARY KEY ( region_id )
);

--Load the region table
INSERT INTO region (region_id,region) VALUES(1,'Cariboo');
INSERT INTO region (region_id,region) VALUES(2,'Kootenay');
INSERT INTO region (region_id,region) VALUES(3,'Mainland/Southwest');
INSERT INTO region (region_id,region) VALUES(4,'Nechako');
INSERT INTO region (region_id,region) VALUES(5,'North Coast');
INSERT INTO region (region_id,region) VALUES(6,'Northeast');
INSERT INTO region (region_id,region) VALUES(7,'Thompson Okanagan');
INSERT INTO region (region_id,region) VALUES(8,'Vancouver Island/Coast');

--Create the institution table
CREATE TABLE institution
(institution_id SERIAL, 
institution VARCHAR(80) NOT NULL,
institution_website VARCHAR(140) NOT NULL,
PRIMARY KEY ( institution_id )
);

--Load the institution table
INSERT INTO institution (institution_id,institution,institution_website) VALUES(1,'British Columbia Institute of Technology','http://www.bcit.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(2,'Adler School of Professional Psychology','http://www.adler.edu/page/campuses/vancouver');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(3,'Alexander College','http://www.alexandercollege.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(4,'Art Institute of Vancouver','http://www.wherecreativitygoestoschool.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(5,'Athabasca University','http://www.athabascau.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(6,'British Columbia Institute of Technology','http://www.bcit.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(7,'Camosun College','http://camosun.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(8,'Capilano University','https://www.capilanou.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(9,'City University of Seattle','http://www.cityu.edu/locations/americas/vancouverbc.aspx');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(10,'City University of Seattle','http://www.cityu.edu/locations/americas/victoria.aspx');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(11,'College of New Caledonia','http://www.cnc.bc.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(12,'College of the Rockies','http://www.cotr.bc.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(13,'Columbia College','http://www.columbiacollege.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(14,'Corpus Christi College','http://corpuschristi.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(15,'Douglas College','http://www.douglas.bc.ca/home.html');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(16,'Emily Carr University of Art and Design','http://www.ecuad.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(17,'Fairleigh Dickinson University','http://view.fdu.edu/default.aspx?id=3553');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(18,'Fraser International College','http://www.fraseric.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(19,'Gonzaga University','http://www.gonzaga.edu/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(20,'Justice Institute of British Columbia','http://www.jibc.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(21,'Kwantlen Polytechnic University','http://www.kwantlen.ca/home.html');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(22,'Langara College','http://www.langara.bc.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(23,'New York Institute of Technology','http://www.nyit.edu/canada/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(24,'Nicola Valley Institute of Technology','http://www.nvit.bc.ca/default.htm');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(25,'North Island College','http://www.nic.bc.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(26,'Northern Lights College','http://www.nlc.bc.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(27,'Northwest Community College','http://www.nwcc.bc.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(28,'Okanagan College','http://www.okanagan.bc.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(29,'Queen’s University ','http://business.queensu.ca/invancouver/index.php');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(30,'Quest University Canada','http://www.questu.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(31,'Royal Roads University','http://www.royalroads.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(32,'Selkirk College','http://www.selkirk.bc.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(33,'Simon Fraser University','http://www.sfu.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(34,'Sprott-Shaw Degree College','http://www.acsenda.com/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(35,'Thompson Rivers University','http://www.tru.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(36,'Trinity Western University','http://twu.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(37,'University Canada West','http://www.ucanwest.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(38,'University of British Columbia','http://www.ubc.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(39,'University of Northern British Columbia','http://www.unbc.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(40,'University of Oregon','https://education.uoregon.edu/program/educational-leadership-ms-canada');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(41,'University of the Fraser Valley','http://www.ufv.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(42,'University of Victoria','http://www.uvic.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(43,'Vancouver Community College','http://www.vcc.bc.ca/');
INSERT INTO institution (institution_id,institution,institution_website) VALUES(44,'Vancouver Island University','http://www.viu.ca/');

--Create the city table
CREATE TABLE city
(city_id SERIAL,
city VARCHAR(40) NOT NULL,
PRIMARY KEY ( city_id )
);

--Load the city table
INSERT INTO city (city_id,city) VALUES(1,'100 Mile House');
INSERT INTO city (city_id,city) VALUES(2,'Abbotsford');
INSERT INTO city (city_id,city) VALUES(3,'Agassiz');
INSERT INTO city (city_id,city) VALUES(4,'Ahousaht');
INSERT INTO city (city_id,city) VALUES(5,'Ashcroft');
INSERT INTO city (city_id,city) VALUES(6,'Atlin');
INSERT INTO city (city_id,city) VALUES(7,'Barriere');
INSERT INTO city (city_id,city) VALUES(8,'Bowser');
INSERT INTO city (city_id,city) VALUES(9,'Brentwood Bay');
INSERT INTO city (city_id,city) VALUES(10,'Burnaby');
INSERT INTO city (city_id,city) VALUES(11,'Burns Lake');
INSERT INTO city (city_id,city) VALUES(12,'Campbell River');
INSERT INTO city (city_id,city) VALUES(13,'Castlegar');
INSERT INTO city (city_id,city) VALUES(14,'Chetwynd');
INSERT INTO city (city_id,city) VALUES(15,'Chilliwack');
INSERT INTO city (city_id,city) VALUES(16,'Clearwater');
INSERT INTO city (city_id,city) VALUES(17,'Coquitlam');
INSERT INTO city (city_id,city) VALUES(18,'Cortes Island');
INSERT INTO city (city_id,city) VALUES(19,'Courtenay');
INSERT INTO city (city_id,city) VALUES(20,'Cranbrook');
INSERT INTO city (city_id,city) VALUES(21,'Creston');
INSERT INTO city (city_id,city) VALUES(22,'Dawson Creek');
INSERT INTO city (city_id,city) VALUES(23,'Dease Lake');
INSERT INTO city (city_id,city) VALUES(24,'Delta');
INSERT INTO city (city_id,city) VALUES(25,'Duncan');
INSERT INTO city (city_id,city) VALUES(26,'Fernie');
INSERT INTO city (city_id,city) VALUES(27,'Fort Nelson');
INSERT INTO city (city_id,city) VALUES(28,'Fort St. James');
INSERT INTO city (city_id,city) VALUES(29,'Fort St. John');
INSERT INTO city (city_id,city) VALUES(30,'Fraser Lake');
INSERT INTO city (city_id,city) VALUES(31,'Gingolx');
INSERT INTO city (city_id,city) VALUES(32,'Gitwinksihlkw');
INSERT INTO city (city_id,city) VALUES(33,'Gold River');
INSERT INTO city (city_id,city) VALUES(34,'Golden');
INSERT INTO city (city_id,city) VALUES(35,'Grand Forks');
INSERT INTO city (city_id,city) VALUES(36,'Greenville');
INSERT INTO city (city_id,city) VALUES(37,'Hagensborg');
INSERT INTO city (city_id,city) VALUES(38,'Hazelton');
INSERT INTO city (city_id,city) VALUES(39,'Hope');
INSERT INTO city (city_id,city) VALUES(40,'Houston');
INSERT INTO city (city_id,city) VALUES(41,'Hudsons Hope');
INSERT INTO city (city_id,city) VALUES(42,'Invermere');
INSERT INTO city (city_id,city) VALUES(43,'Kamloops');
INSERT INTO city (city_id,city) VALUES(44,'Kaslo');
INSERT INTO city (city_id,city) VALUES(45,'Kelowna');
INSERT INTO city (city_id,city) VALUES(46,'Kimberley');
INSERT INTO city (city_id,city) VALUES(47,'Kispiox');
INSERT INTO city (city_id,city) VALUES(48,'Kitimat');
INSERT INTO city (city_id,city) VALUES(49,'Kitwanga');
INSERT INTO city (city_id,city) VALUES(50,'Langley');
INSERT INTO city (city_id,city) VALUES(51,'Lillooet');
INSERT INTO city (city_id,city) VALUES(52,'Mackenzie');
INSERT INTO city (city_id,city) VALUES(53,'Maple Ridge');
INSERT INTO city (city_id,city) VALUES(54,'Masset');
INSERT INTO city (city_id,city) VALUES(55,'Merritt');
INSERT INTO city (city_id,city) VALUES(56,'Metchosin');
INSERT INTO city (city_id,city) VALUES(57,'Mission');
INSERT INTO city (city_id,city) VALUES(58,'Mount Currie');
INSERT INTO city (city_id,city) VALUES(59,'Nakusp');
INSERT INTO city (city_id,city) VALUES(60,'Nanaimo');
INSERT INTO city (city_id,city) VALUES(61,'Nelson');
INSERT INTO city (city_id,city) VALUES(62,'New Aiyansh');
INSERT INTO city (city_id,city) VALUES(63,'New Westminster');
INSERT INTO city (city_id,city) VALUES(64,'North Vancouver');
INSERT INTO city (city_id,city) VALUES(65,'Oliver');
INSERT INTO city (city_id,city) VALUES(66,'Parksville');
INSERT INTO city (city_id,city) VALUES(67,'Penticton');
INSERT INTO city (city_id,city) VALUES(68,'Pitt Meadows');
INSERT INTO city (city_id,city) VALUES(69,'Port Alberni');
INSERT INTO city (city_id,city) VALUES(70,'Port Hardy');
INSERT INTO city (city_id,city) VALUES(71,'Port Simpson');
INSERT INTO city (city_id,city) VALUES(72,'Powell River');
INSERT INTO city (city_id,city) VALUES(73,'Prince George');
INSERT INTO city (city_id,city) VALUES(74,'Prince Rupert');
INSERT INTO city (city_id,city) VALUES(75,'Queen Charlotte City');
INSERT INTO city (city_id,city) VALUES(76,'Quesnel');
INSERT INTO city (city_id,city) VALUES(77,'Revelstoke');
INSERT INTO city (city_id,city) VALUES(78,'Richmond');
INSERT INTO city (city_id,city) VALUES(79,'Salmon Arm');
INSERT INTO city (city_id,city) VALUES(80,'Sechelt');
INSERT INTO city (city_id,city) VALUES(81,'Skidegate');
INSERT INTO city (city_id,city) VALUES(82,'Smithers');
INSERT INTO city (city_id,city) VALUES(83,'South Hazelton');
INSERT INTO city (city_id,city) VALUES(84,'Squamish');
INSERT INTO city (city_id,city) VALUES(85,'Summerland');
INSERT INTO city (city_id,city) VALUES(86,'Surrey');
INSERT INTO city (city_id,city) VALUES(87,'Terrace');
INSERT INTO city (city_id,city) VALUES(88,'Trail');
INSERT INTO city (city_id,city) VALUES(89,'Tumbler Ridge');
INSERT INTO city (city_id,city) VALUES(90,'Ucluelet');
INSERT INTO city (city_id,city) VALUES(91,'Valemount');
INSERT INTO city (city_id,city) VALUES(92,'Vancouver');
INSERT INTO city (city_id,city) VALUES(93,'Vanderhoof');
INSERT INTO city (city_id,city) VALUES(94,'Vernon');
INSERT INTO city (city_id,city) VALUES(95,'Victoria');
INSERT INTO city (city_id,city) VALUES(96,'Williams Lake');

--Create the institution_type table
CREATE TABLE institution_type
(type_id SERIAL,
type VARCHAR(30) NOT NULL,
PRIMARY KEY ( type_id )
);

--Load the institution_type table
INSERT INTO institution_type (type_id,type) VALUES(1,'Access Centre');
INSERT INTO institution_type (type_id,type) VALUES(2,'Campus');
INSERT INTO institution_type (type_id,type) VALUES(3,'Learning Centre');
INSERT INTO institution_type (type_id,type) VALUES(4,'Property');
INSERT INTO institution_type (type_id,type) VALUES(5,'Regional Campus');
INSERT INTO institution_type (type_id,type) VALUES(6,'Regional Centre');
INSERT INTO institution_type (type_id,type) VALUES(7,'Resource Centre');
INSERT INTO institution_type (type_id,type) VALUES(8,'Satellite');
INSERT INTO institution_type (type_id,type) VALUES(9,'Teaching Centre');
INSERT INTO institution_type (type_id,type) VALUES(10,'Training Centre');
INSERT INTO institution_type (type_id,type) VALUES(11,'Vocational Centre');

--Create the campus table
CREATE TABLE campus
(campus_id SERIAL,
campus	VARCHAR(100) NOT NULL,
address	VARCHAR(100) NOT NULL,
latitude DECIMAL(20,10) NOT NULL,
longitude DECIMAL(20,10) NOT NULL,
PRIMARY KEY ( campus_id )
);

--Load the campus table
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(1,'BCIT Aerospace Technology Campus','3800 Cessna Drive, Richmond, BC',-123.1449150063,49.1847609973);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(2,'BCIT Centre for Applied Research and Innovation','4355 Mathissi Place, Burnaby, BC',-123.0054400022,49.2462230007);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(3,'BCIT Downtown Campus','555 Seymour Street, Vancouver, BC',-123.115245001,49.2835640036);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(4,'BCIT DW Poppy Secondary School Location','23752 - 52 Avenue, Langley, BC',-122.5661589941,49.0963090014);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(5,'BCIT Garibaldi Secondary School Location','24789 Dewdney Trunk Road, Maple Ridge, BC',-122.5350670018,49.2235820041);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(6,'BCIT Great Northern Way Campus','555 Great Northern Way, Vancouver, BC',-123.0897899972,49.2677770023);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(7,'BCIT Kelowna Hollywood High School Location','775 Graham Road, Kelowna, BC',-119.4003800066,49.8817219998);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(8,'BCIT Langley Secondary School Location','21405 - 56th Avenue, Langley, BC',-122.6298879985,49.1046120019);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(9,'BCIT Main Campus','3700 Willingdon Avenue, Burnaby, BC',-123.0013850041,49.2516860002);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(10,'BCIT Marine Campus','265 West Esplanade, North Vancouver, BC',-123.0842220036,49.3132749966);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(11,'BCIT North Delta Secondary School Location','11447 - 82nd Avenue, Delta, BC',-122.9019069951,49.1524219974);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(12,'BCIT Princess Margaret Senior Secondary School Location','12870 - 72 Avenue, Surrey, BC',-122.8662229939,49.1335279967);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(13,'BCIT Rutland Senior Secondary School Location','705 Rutland Road North, Kelowna, BC',-119.3826559965,49.8972610032);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(14,'BCIT Thomas Haney Centre Location','23000 - 116th Avenue, Maple Ridge, BC',-122.5824669999,49.2129300033);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(15,'BCIT Westview Secondary School Location','20905 Wicklund Avenue, Maple Ridge, BC',-122.6419039946,49.2236099997);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(16,'CAM Interurban Campus','4461 Interurban Road , Victoria, BC',-123.4195520003,48.4913120001);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(17,'CAM Main Campus','3100 Foul Bay Road, Victoria, BC',-123.3229279963,48.4468530039);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(18,'CAM Metchosin Property','4970 Barrow Road, Metchosin, BC',-123.6005899976,48.3772619978);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(19,'CAM Saanich Adult Education Centre','7449 West Saanich Road, Brentwood Bay, BC',-123.4507079964,48.5791770031);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(20,'CAM Songhees Employment Learning Centre','1500B Admirals Road, Victoria, BC',-123.426075002,48.4475640005);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(21,'CAM Victoria Native Friendship Centre','231 Regina Avenue, Victoria, BC',-123.3882669965,48.4556340025);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(22,'CAPU Main Campus','2055 Purcell Way, North Vancouver, BC',-123.0206319964,49.3160170035);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(23,'CAPU Mt. Currie','Lot 367 Ir 10 Road, Mount Currie, BC',-122.7234649937,50.3222310014);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(24,'CAPU Squamish Campus','1150 Carson Place, Squamish, BC',-123.1503439974,49.7077610037);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(25,'CAPU Sunshine Coast Campus','5627 Inlet Avenue, Sechelt, BC',-123.7564370025,49.4761139996);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(26,'CNC Fort St. James','179 Douglas, Fort St. James, BC',-124.2508540013,54.4410979984);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(27,'CNC Fraser Lake Learning Centre','298 McMillan Avenue, Fraser Lake, BC',-124.8466159961,54.0562769979);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(28,'CNC John A. Brink Trades & Technology Centre','1727 West Central, Prince George, BC',-122.7870330035,53.9035210017);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(29,'CNC Lakes District Campus','545 Highway 16 West, Burns Lake, BC',-125.4940459989,54.1889430009);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(30,'CNC Mackenzie Campus','540 Mackenzie BoulevaRoad, Mackenzie, BC',-123.1071280023,55.3436370006);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(31,'CNC Main Campus','3330 - 22nd Avenue, Prince George, BC',-122.7839759948,53.905595997);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(32,'CNC Nechako Campus','3231 Hospital Road, Vanderhoof, BC',-124.0079000027,54.0280539964);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(33,'CNC Nicholson Campus','2211 South Nicholson Avenue, Prince George, BC',-122.7870330035,53.9035210017);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(34,'CNC Quesnel Campus','100 Campus Way, Quesnel, BC',-122.4691059932,52.9830930027);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(35,'CNC Valemount Learning Centre','99 Gorse Street, Valemount, BC',-119.2733499982,52.8305010037);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(36,'COTR Creston Campus','301 - 16th Avenue, Creston, BC',-116.5068720046,49.0930209993);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(37,'COTR Elk Valley - Fernie Campus','342 - 3rd Avenue, Fernie, BC',-115.0643630047,49.5023050017);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(38,'COTR Gold Creek Campus','1305 - 24th Avenue South, Cranbrook, BC',-115.7487989979,49.4960330022);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(39,'COTR Golden Campus','1305 South 9th Street, Golden, BC',-116.9556429984,51.2966519999);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(40,'COTR Invermere Campus','1535 - 14th Street, Invermere, BC',-116.0410739926,50.5026460031);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(41,'COTR Job Seekers Program','24 - 11th Avenue South, Cranbrook, BC',-115.766007999,49.5111659959);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(42,'COTR Kimberley Campus','1850 Warren Avenue, Kimberley, BC',-115.9796190004,49.6714749977);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(43,'COTR Main Campus','2700 College Way, Cranbrook, BC',-115.7419970002,49.5184110038);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(44,'COTR Mount Baker Annex','25 - 17th Avenue North, Cranbrook, BC',-115.7581329997,49.513242003);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(45,'DOUG Abbotsford Campus','102 - 31943 South Fraser Way, Abbotsford, BC',-122.3389860032,49.0492189982);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(46,'DOUG Burnaby Campus','202 - 4250 Kingsway, Burnaby, BC',-123.0097100008,49.2318630032);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(47,'DOUG Chilliwack Training Centre','200 - 45905 Yale Road, Chilliwack, BC',-121.9581989971,49.1679139983);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(48,'DOUG David Lam Campus','1250 Pinetree Way, Coquitlam, BC',-122.7913999986,49.2869970032);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(49,'DOUG Main Campus','700 Royal Avenue, New Westminster, BC',-122.9141589968,49.2036209995);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(50,'DOUG Maple Ridge Campus','300 - 22470 Dewdney Trunk Road, Maple Ridge, BC',-122.6002550061,49.2206099971);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(51,'DOUG Surrey Training Centre','10060 King George Highway, Surrey, BC',-122.8453019934,49.1855319962);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(52,'ECUAD 1535 West 3rd Avenue','1535 West 3rd Avenue, Vancouver, BC',-123.1389070017,49.2689670009);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(53,'ECUAD 1706 Mitchell Press Building','1706 West 1st Avenue, Vancouver, BC',-123.1432199983,49.2706889968);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(54,'ECUAD Granville Island/Main Campus','1399 Johnston St, Granville Island, Vancouver, BC',-123.1329630011,49.2705069961);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(55,'ECUAD Great Northern Way Campus','577 Great Northern Way, Vancouver, BC',-123.0905630009,49.2672579997);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(56,'JIBC Chilliwack Campus','5470 Dieppe Street, Chilliwack, BC',-121.9686700051,49.1003130042);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(57,'JIBC Main Campus','715 McBride Boulevard, New Westminster, BC',-122.9105109986,49.2214509959);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(58,'JIBC Maple Ridge Campus','13500 - 256th Street, Maple Ridge, BC',-122.5086310006,49.2471339986);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(59,'JIBC Okanagan Campus','825 Walrod Street, Kelowna, BC',-119.4870039943,49.9004529974);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(60,'JIBC Pitt Meadows: Traffic Safety Centre','18799 Airport Way, Pitt Meadows, BC',-122.7049039995,49.2094249973);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(61,'JIBC Vancouver Campus','102 - 555 Great Northern Way, Vancouver, BC',-123.0897899972,49.2677770023);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(62,'JIBC Victoria Campus','810 Fort Street, Victoria, BC',-123.3619169996,48.4243449972);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(63,'KWAN CloveRoadale Campus','5500 - 180 St, Surrey, BC',-122.7236799969,49.1041910004);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(64,'KWAN Langley Campus','20901 Langley Bypass, Langley, BC',-122.6459169968,49.1095010028);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(65,'KWAN Main Campus','12666 72nd Avenue, Surrey, BC',-122.8715439997,49.133527997);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(66,'KWAN Richmond Campus','8771 Lansdowne Road, Richmond, BC',-123.1274909941,49.1744509969);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(67,'LANG Alderbridge Way Centre','116 - 4940 No 3 Road, Richmond, BC',-123.1357310065,49.1776499988);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(68,'LANG Broadway Campus','601 West Broadway, Vancouver, BC',-123.1179860067,49.2634499974);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(69,'LANG Cambie Street Centre','6111 Cambie Street, Vancouver, BC',-123.1167629973,49.229719001);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(70,'LANG Main Campus','100 West 49th Avenue, Vancouver, BC',-123.1084590006,49.2249409976);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(71,'NVIT Main Campus','4155 Belshaw Street, Merritt, BC',-120.7659700042,50.1247290038);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(72,'NVIT Seabird Island','2895 Chowat Road, Agassiz, BC',-121.7318420023,49.2535209988);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(73,'NVIT Vancouver Campus','200 - 4355 Mathissi Place, Burnaby, BC',-123.0056330033,49.2462369977);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(74,'NIC Ahousaht Centre','412 Ahousaht Reserve, Ahousaht, BC',-126.0666129945,49.2831340037);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(75,'NIC Bella Coola Centre','1969 Highway 20, Hagensborg, BC',-126.5294340038,52.387871996);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(76,'NIC Campbell River Campus','1685 South Dogwood Street, Campbell River, BC',-125.246093005,49.9787840045);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(77,'NIC Comox Valley Main Campus','2300 Ryan Road, Courtenay, BC',-124.9704690004,49.7080939996);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(78,'NIC Cortes Island Centre','Manson’s Landing, Cortes Island, BC',-124.9814129964,50.0588749966);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(79,'NIC Gold River Centre','13 - 375 Nimpkish, Gold River, BC',-126.0510990011,49.7782639994);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(80,'NIC Mount Waddington Regional Campus','9300 Trustee Road, Port Hardy, BC',-127.5042290057,50.7179350043);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(81,'NIC Port Alberni Campus','3699 Roger Street, Port Alberni, BC',-124.7877999965,49.2550609985);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(82,'NIC Tebo Vocational Centre','4781 Tebo Avenue, Port Alberni, BC',-124.7928209941,49.2630580037);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(83,'NIC Ucluelet Centre','10 - 1636 Peninsula Road, Ucluelet, BC',-125.547938004,48.9423330006);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(84,'NIC Vigar Vocational Centre','2780 Vigar Road, Campbell River, BC',-125.273108005,50.0449040001);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(85,'NLC Atlin Learning Centre','3rd Street and Pearl Avenue, Atlin, BC',-133.6912540052,59.577569003);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(86,'NLC Chetwynd Campus','5132 - 50th Street, Chetwynd, BC',-121.6294460013,55.6941079971);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(87,'NLC Dawson Creek Campus','11401 - 8th Street, Dawson Creek, BC',-120.2246119967,55.7469819963);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(88,'NLC Fort Nelson Campus','5201 Simpson Trail, Fort Nelson, BC',-122.7116849978,58.8073630029);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(89,'NLC Fort St. John Campus','9820 - 120th Avenue, Fort St. John, BC',-120.8427110029,56.2665399975);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(90,'NLC Hudson s Hope Centre','10801 Dudley Drive, Hudson s Hope, BC',-121.9206480024,56.0230920004);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(91,'NLC Stikine Centre ','Lot 10 Commercial Drive, Dease Lake, BC',-129.9883680008,58.4346269974);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(92,'NLC Tumbler Ridge Campus','180 Southgate, Tumbler Ridge, BC',-121.0013790052,55.1241830027);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(93,'NWCC Canyon City (Gitwinksihkw)','3001 T sol Tsap Avenue, Gitwinksihlkw, BC',-129.2214059939,55.1933109996);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(94,'NWCC Gitanyow (Kitwancool)','1363 First Avenue, Kitwanga, BC',-128.026385005,55.1118140037);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(95,'NWCC Gitsegukla','21 Seymour Avenue, South Hazelton, BC',-127.830830999,55.0881309955);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(96,'NWCC Gitwangak (Kitwanga)','90 College Crescent, Kitwanga, BC',-128.026385005,55.1118140037);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(97,'NWCC Greenville (Laxgalts ap)','416 North Road, Greenville, BC',-129.577367001,55.0335189972);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(98,'NWCC Hazelton Campus','4815 Swannell Drive, Hazelton, BC',-127.6499959988,55.2620620019);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(99,'NWCC Houston Campus','3221-14th Street West, Houston, BC',-126.6513560013,54.3965190006);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(100,'NWCC Kaay Llnagaay','No 2 Second Beach Road, Skidegate, BC',-131.9973639987,53.2495269972);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(101,'NWCC Kincolith (Gingolx)','607 Front Street, Gingolx, BC',-129.9558810046,54.9930040005);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(102,'NWCC Kispiox','1425 Mary Blackwater Drive, Kispiox, BC',-127.6870429977,55.3565630023);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(103,'NWCC Kitimaat Village','358 Haisla Boulevard, Kitimat, BC',-128.6892659995,54.0543619971);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(104,'NWCC Kitimat Campus','606 Mountainview Square, Kitimat, BC',-128.649386995,54.0506719975);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(105,'NWCC Main Campus','5331 McConnell Avenue, Terrace, BC',-128.6327360031,54.5286529969);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(106,'NWCC Masset Campus','1730 Hodges, Masset, BC',-132.1423639975,54.0122830001);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(107,'NWCC New Aiyansh (Gitlakdamix)','5130 Skateen Avenue, New Aiyansh, BC',-129.0816840076,55.2069099999);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(108,'NWCC Port Simpson (Lax Kw alaams)','206 Shashaak Street, Port Simpson, BC',-130.433121007,54.5585259965);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(109,'NWCC Prince Rupert Campus','353 - 5th Street, Prince Rupert, BC',-130.3261649962,54.3113290025);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(110,'NWCC Queen Charlotte City Campus','138 Bay Street, Queen Charlotte City, BC',-132.0816280068,53.2546880038);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(111,'NWCC Smithers Campus','3966 - 2nd Avenue, Smithers, BC',-127.1727129996,54.7817189973);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(112,'OKAN Aircraft Maintenance Centre','6225 Okanagan Landing Road, Vernon, BC',-119.3233250004,50.2469029965);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(113,'OKAN Kalamalka Campus','7000 College Way, Vernon, BC',-119.2823409999,50.2349499974);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(114,'OKAN Main Campus','1000 KLO Road, Kelowna, BC',-119.4792799931,49.8611300037);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(115,'OKAN Oliver Centre','339 Fairview Road, Oliver, BC',-119.5507979937,49.1823630014);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(116,'OKAN Penticton Campus','583 Duncan Avenue West, Penticton, BC',-119.6048500051,49.4874199982);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(117,'OKAN Revelstoke Centre','1401 West 1st Street, Revelstoke, BC',-118.2105089958,51.0075980026);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(118,'OKAN Salmon Arm Campus','2552 Trans-Canada Highway North-East, Salmon Arm, BC',-119.2556909971,50.7035250025);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(119,'OKAN Salmon Arm Trades Centre','5450 - 48th Avenue, Salmon Arm, BC',-119.2226030047,50.6642339985);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(120,'OKAN Summerland Centre','13211 Henry Avenue, Summerland, BC',-119.6823549952,49.6024640007);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(121,'RRU Main Campus','2005 Sooke Road, Victoria, BC',-123.473453994,48.4354080015);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(122,'SEL Grand Forks Campus','486 - 72nd Avenue, Grand Forks, BC',-118.439612002,49.0306369968);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(123,'SEL Kaslo Campus','421 Front Street, Kaslo, BC',-116.9049169997,49.9122069987);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(124,'SEL Kootenay School of the Arts','606 Victoria Street, Nelson, BC',-117.2917769933,49.4917899996);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(125,'SEL Main Campus','301 Frank Beinder Way, Castlegar, BC',-117.6532530052,49.3109950009);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(126,'SEL Nakusp Campus','311 Broadway Street, Nakusp, BC',-117.8021589935,50.2390119972);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(127,'SEL Silver King Campus','2001 Silver King Road, Nelson, BC',-117.2961119941,49.4778980034);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(128,'SEL Tenth Street Campus','820 Tenth Street, Nelson, BC',-117.268941001,49.5068890035);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(129,'SEL Trail Campus','900 Helena Street, Trail, BC',-117.7071329994,49.0944760039);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(130,'SFU Great Northern Way','577 Great Northern Way, Vancouver, BC',-123.0906270036,49.2673280019);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(131,'SFU Main Campus','8888 University Drive, Burnaby, BC',-122.9131719972,49.2758550007);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(132,'SFU Surrey Campus','250 - 13450 - 102nd Avenue, Surrey, BC',-122.849593001,49.1875800012);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(133,'SFU Vancouver Campus','515 West Hastings Street, Vancouver, BC',-123.1120880038,49.2841719971);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(134,'TRU Ashcroft/Cache Creek Regional Centre','310 Railway Avenue, Ashcroft, BC',-121.2792320015,50.714626002);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(135,'TRU Barrier Regional Centre','629 Barriere Town Road, Barriere, BC',-120.1414309953,51.1861420006);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(136,'TRU Clearwater Regional Centre','751 Clearwater Village Road, Clearwater, BC',-120.0096270038,51.6499809961);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(137,'TRU Hundred Mile House','485 South Birch Avenue, 100 Mile House, BC',-121.2958749956,51.6402070004);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(138,'TRU Lillooet Regional Centre','10 - 155 Main, Lillooet, BC',-121.925878005,50.7035790023);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(139,'TRU Main Campus','900 McGill Road, Kamloops, BC',-120.3643229934,50.667715999);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(140,'TRU Williams Lake Campus','1250 Western Avenue, Williams Lake, BC',-122.1531630061,52.1491850038);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(141,'UBC Great Northern Way Campus','577 Great Northern Way, Vancouver, BC',-123.0897899972,49.2677770023);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(142,'UBC Main Campus','2329 West Mall, Vancouver, BC',-123.2529330021,49.2607890005);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(143,'UBC Okanagan Campus','3333 University Way, Kelowna, BC',-119.3963670062,49.9394969966);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(144,'UBC Robson Square','800 Robson Street, Vancouver, BC',-123.1213760062,49.2823780022);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(145,'UNBC Main Campus','3333 University Way, Prince George, BC',-122.8086950019,53.8941480012);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(146,'UNBC Northwest Campus','4837 Keith Avenue, Terrace, BC',-128.6038759976,54.5133339975);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(147,'UNBC Peace River-Liard Campus','9820 - 120th Avenue, Fort St. John, BC',-120.8427110029,56.2665399975);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(148,'UNBC Prince Rupert Campus','353 - 5th Street, Prince Rupert, BC',-130.3261649962,54.3113290025);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(149,'UNBC South-Central Campus','S100 - 100 Campus Way, Quesnel, BC',-122.4691059932,52.9830930027);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(150,'UFV Aerospace Centre','30645 Firecat Avenue, Abbotsford, BC',-122.3780070047,49.0304609966);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(151,'UFV Chilliwack Campus','45635 Yale Road, Chilliwack, BC',-121.961287993,49.1548920038);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(152,'UFV Clearbrook Centre','32355 Veterans Way, Abbotsford, BC',-122.3284940063,49.0537050029);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(153,'UFV Hope','1250 - 7th Avenue, Hope, BC',-121.4267890017,49.3765890012);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(154,'UFV Main Campus','33844 King Road, Abbotsford, BC',-122.2851919962,49.0314249995);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(155,'UFV Mission Campus','33700 Prentis Avenue, Mission, BC',-122.2893329963,49.1446189961);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(156,'UFV Trades and Technology Centre','5579 Tyson Road, Chilliwack, BC',-121.9765819959,49.1036429958);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(157,'UVIC Main Campus','3800 Finnerty Road, Victoria, BC',-123.3105900054,48.4635169966);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(158,'VCC Downtown Campus','250 West Pender Street, Vancouver, BC',-123.1105860028,49.2818620041);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(159,'VCC Main Campus','1155 East Broadway, Vancouver, BC',-123.0803489942,49.2624559988);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(160,'VIU Cowichan Campus','2011 University Way, Duncan, BC',-123.7056679956,48.7851799972);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(161,'VIU Deep Bay Marine Field Station','370 Crome Point Road, Bowser, BC',-124.7260239972,49.463271001);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(162,'VIU Foundation Office','59 Wharf Street, Nanaimo, BC',-123.9367890053,49.1656440005);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(163,'VIU Horticultural Centre','2324 Wellington Road East, Nanaimo, BC',-124.0069989951,49.1803710024);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(164,'VIU Main Campus','900 Fifth Street, Nanaimo, BC',-123.9654349962,49.1565060005);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(165,'VIU Parksville Qualicum Centre','100 Jensen Avenue East, Parksville, BC',-124.3119759971,49.3182269978);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(166,'VIU Powell River Campus','7085 Nootka Street, Powell River, BC',-124.5171440049,49.8227639977);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(167,'ADLER Vancouver Campus','1200 - 1090 West Georgia Street, Vancouver, BC',-123.1229849965,49.2857649975);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(168,'ALEXANDER Burnaby Campus','100 - 4603 Kingsway, Burnaby, BC',-123.0017150064,49.2297019975);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(169,'ALEXANDER Vancouver Campus','100 - 602 West Hastings, Vancouver, BC',-123.1132969936,49.2847999986);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(170,'AI Burnaby Campus','2665 Renfrew Street, Burnaby, BC',-123.044836998,49.2598369977);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(171,'AI International Culinary School','609 Granville Street, Vancouver, BC',-123.1167329965,49.283617003);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(172,'ATHABASCA Vancouver Art Therapy Institute Campus','1575 Johnston Street, Vancouver, BC',-123.1350660012,49.2720430016);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(173,'CITYUoS Vancouver Campus','310 - 789 W Pender Street, Vancouver, BC',-123.1155289952,49.2851250041);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(174,'CITYUoS Victoria Campus','305 - 877 Goldstream Avenue, Victoria, BC',-123.5045299934,48.4499410006);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(175,'COLUMBIA Vancouver Campus','500 - 555 Seymour Street, Vancouver, BC',-123.1151529969,49.2832949971);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(176,'CC Vancouver Campus','5935 Iona Drive, Vancouver, BC',-123.2485559992,49.2722039982);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(177,'FD Vancouver Campus','842 Cambie Street, Vancouver, BC',-123.1155560025,49.2776960014);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(178,'FRASER Burnaby Campus','8999 Nelson Way, Burnaby, BC',-122.9124529943,49.2742760022);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(179,'GONZAGA Alwin Holland Elementary Campus','10615 - 96 Street, Fort St. John, BC',-120.8401890061,56.2526670011);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(180,'GONZAGA Claremont Secondary Campus','4980 Wesley Road, Victoria, BC',-123.3742229952,48.5159999971);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(181,'GONZAGA Henry Grube Center','245 Kitchener Crescent, Kamloops, BC',-120.3478860058,50.6829620016);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(182,'GONZAGA Hollywood Education Services Campus','1040 Hollywood Road, Kelowna, BC',-119.398427006,49.8766340044);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(183,'GONZAGA KVR Middle School Campus','1437 Allison Street, Penticton, BC',-119.5563229959,49.4860400004);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(184,'GONZAGA Trafalgar Junior Secondary Middle School Campus','1201 Josephine St, Nelson, BC',-117.2879470041,49.4872279977);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(185,'NYIT Vancouver Campus','1700 - 701 West Georgia Street, Vancouver, BC',-123.1185380008,49.2828329994);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(186,'QUEENS Vancouver Campus','1185 - 555 Burrard Street, Vancouver, BC',-123.118281001,49.2862870006);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(187,'QUEST Squamish Campus','3200 University Boulevard, Squamish, BC',-123.1005839952,49.737377998);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(188,'SS Vancouver Campus','728 Granville Street, Vancouver, BC',-123.117808995,49.2817150023);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(189,'TWU Main Campus','7600 Glover Road, Langley, BC',-122.6003350024,49.1398919965);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(190,'UCW Vancouver Campus','200 - 1111 Melville Street, Vancouver, BC',-123.1222339942,49.2868059957);
INSERT INTO campus (campus_id,campus,address,latitude,longitude) VALUES(191,'UO Scott Creek Middle School Campus','1240 Lansdowne Drive, Coquitlam, BC',-122.8131419932,49.2852790009);

--Create the relationships table
CREATE TABLE relationships
(id SERIAL,
city_id	INT NOT NULL references city(city_id),
institution_id INT NOT NULL references institution(institution_id),
region_id INT NOT NULL references region(region_id),
campus_id INT NOT NULL references campus(campus_id),
type_id	INT NOT NULL references institution_type(type_id),
degree_granting_type_id	INT NOT NULL references degree_granting_type(degree_granting_type_id),
PRIMARY KEY ( id )
);

--Load the relationships table
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(78,1,3,1,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(10,1,3,2,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,1,3,3,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(50,1,3,4,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(53,1,3,5,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,1,3,6,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(45,1,7,7,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(50,1,3,8,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(10,1,3,9,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(64,1,3,10,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(24,1,3,11,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(86,1,3,12,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(45,1,7,13,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(53,1,3,14,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(53,1,3,15,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(95,7,8,16,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(95,7,8,17,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(56,7,8,18,4,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(9,7,8,19,3,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(95,7,8,20,3,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(95,7,8,21,3,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(64,8,3,22,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(58,8,3,23,3,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(84,8,3,24,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(80,8,3,25,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(28,11,4,26,3,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(30,11,4,27,3,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(73,11,1,28,3,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(11,11,4,29,5,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(52,11,1,30,5,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(73,11,1,31,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(93,11,4,32,5,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(73,11,1,33,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(76,11,1,34,5,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(91,11,1,35,3,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(21,12,2,36,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(26,12,2,37,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(20,12,2,38,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(34,12,7,39,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(42,12,2,40,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(20,12,2,41,7,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(46,12,2,42,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(20,12,2,43,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(20,12,2,44,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(2,15,3,45,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(10,15,3,46,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(15,15,3,47,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(17,15,3,48,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(63,15,3,49,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(53,15,3,50,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(86,15,3,51,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,16,3,52,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,16,3,53,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,16,3,54,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,16,3,55,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(15,20,3,56,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(63,20,3,57,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(53,20,3,58,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(45,20,7,59,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(68,20,3,60,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,20,3,61,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(95,20,8,62,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(86,21,3,63,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(50,21,3,64,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(86,21,3,65,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(78,21,3,66,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(78,22,3,67,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,22,3,68,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,22,3,69,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,22,3,70,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(55,24,7,71,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(3,24,3,72,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(10,24,3,73,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(4,25,8,74,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(37,25,8,75,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(12,25,8,76,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(19,25,8,77,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(18,25,8,78,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(33,25,8,79,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(70,25,8,80,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(69,25,8,81,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(69,25,8,82,11,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(90,25,8,83,10,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(12,25,8,84,11,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(6,26,4,85,1,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(14,26,6,86,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(22,26,6,87,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(27,26,6,88,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(29,26,6,89,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(41,26,6,90,1,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(23,26,4,91,1,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(89,26,6,92,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(32,27,5,93,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(49,27,5,94,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(83,27,5,95,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(49,27,5,96,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(36,27,5,97,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(38,27,5,98,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(40,27,4,99,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(81,27,5,100,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(31,27,5,101,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(47,27,5,102,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(48,27,5,103,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(48,27,5,104,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(87,27,5,105,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(54,27,5,106,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(62,27,5,107,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(71,27,5,108,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(74,27,5,109,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(75,27,5,110,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(82,27,4,111,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(94,28,7,112,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(94,28,7,113,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(45,28,7,114,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(65,28,7,115,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(67,28,7,116,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(77,28,7,117,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(79,28,7,118,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(79,28,7,119,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(85,28,7,120,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(95,31,8,121,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(35,32,2,122,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(44,32,2,123,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(61,32,2,124,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(13,32,2,125,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(59,32,2,126,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(61,32,2,127,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(61,32,2,128,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(88,32,2,129,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,33,3,130,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(10,33,3,131,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(86,33,3,132,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,33,3,133,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(5,35,7,134,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(7,35,7,135,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(16,35,7,136,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(1,35,1,137,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(51,35,3,138,6,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(43,35,7,139,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(96,35,1,140,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,38,3,141,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,38,3,142,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(45,38,7,143,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,38,3,144,3,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(73,39,1,145,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(87,39,5,146,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(29,39,6,147,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(74,39,5,148,9,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(76,39,1,149,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(2,41,3,150,9,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(15,41,3,151,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(2,41,3,152,9,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(39,41,3,153,9,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(2,41,3,154,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(57,41,3,155,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(15,41,3,156,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(95,42,8,157,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,43,3,158,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,43,3,159,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(25,44,8,160,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(8,44,8,161,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(60,44,8,162,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(60,44,8,163,8,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(60,44,8,164,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(66,44,8,165,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(72,44,8,166,2,2);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,2,3,167,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(10,3,3,168,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,3,3,169,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(10,4,3,170,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,4,3,171,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,5,3,172,2,3);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,9,3,173,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(95,9,8,174,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,13,3,175,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,14,3,176,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,17,3,177,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(10,18,3,178,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(29,19,6,179,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(95,19,8,180,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(43,19,7,181,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(45,19,7,182,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(67,19,7,183,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(61,19,2,184,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,23,3,185,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,29,3,186,2,3);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(84,30,3,187,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,34,3,188,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(50,36,3,189,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(92,37,3,190,2,1);
INSERT INTO relationships (city_id,institution_id,region_id,campus_id,type_id,degree_granting_type_id) VALUES(17,40,3,191,2,3);


--Create the student_aid_bc table
CREATE TABLE student_aid_bc
(institution_id INT NOT NULL references institution(institution_id), 
FY_200708_201112 DECIMAL(20,20) NULL,
FY_200607_201011 DECIMAL(20,20) NULL,
FY_200506_200910 DECIMAL(20,20) NULL,
FY_200405_200809 DECIMAL(20,20) NULL,
PRIMARY KEY ( institution_id )
);


--Load the student_aid_bc table
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(1,0.059,0.058,0.054,0.059);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(2,0.048,0.021,0,0);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(3,0,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(4,NULL,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(5,NULL,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(6,0.059,0.058,0.054,0.059);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(7,0.115,0.116,0.116,0.121);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(8,0.105,0.096,0.105,0.11);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(9,0.146,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(10,0.146,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(11,0.211,0.211,0.223,0.23);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(12,0.158,0.171,0.184,0.182);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(13,0,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(14,0,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(15,0.11,0.104,0.114,0.13);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(16,NULL,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(17,NULL,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(18,NULL,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(19,NULL,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(20,0.032,0.046,0.016,0.018);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(21,0.102,0.103,0.104,0.112);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(22,0.13,0.135,0.136,0.146);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(23,0,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(24,0.336,0.421,0.463,0.53);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(25,0.148,0.151,0.177,0.201);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(26,0.152,0.177,0.204,0.215);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(27,0.348,0.369,0.404,0.384);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(28,0.127,0.124,0.113,0.116);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(29,NULL,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(30,0,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(31,0.044,0.036,0.043,0.046);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(32,0.125,0.142,0.148,0.152);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(33,0.046,0.048,0.049,0.051);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(34,NULL,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(35,0.121,0.112,0.115,0.128);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(36,0.052,0.054,0.063,0.068);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(37,0.16,NULL,0.2,0.3);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(38,0.029,0.03,0.032,0.037);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(39,0.077,0.081,0.088,0.089);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(40,NULL,NULL,NULL,NULL);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(41,0.111,0.12,0.12,0.13);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(42,0.043,0.04,0.042,0.047);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(43,0.083,0.089,0.089,0.092);
INSERT INTO student_aid_bc (institution_id,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809) VALUES(44,0.125,0.133,0.143,0.163);


--table JOIN
SELECT c.campus,c.address,i_t.type,rg.region,cy.city,c.latitude,c.longitude,d_g_t.degree_granting_type,i.institution,i.institution_website,FY_200708_201112,FY_200607_201011,FY_200506_200910,FY_200405_200809 FROM relationships r
INNER JOIN (SELECT * FROM city) cy ON r.city_id = cy.city_id
INNER JOIN (SELECT * FROM institution) i ON r.institution_id = i.institution_id
INNER JOIN (SELECT * FROM region) rg ON r.region_id = rg.region_id
INNER JOIN (SELECT * FROM campus) c ON r.campus_id = c.campus_id
INNER JOIN (SELECT * FROM institution_type) i_t ON r.type_id = i_t.type_id
INNER JOIN (SELECT * FROM degree_granting_type) d_g_t ON r.degree_granting_type_id = d_g_t.degree_granting_type_id
INNER JOIN (SELECT * FROM student_aid_bc) aid ON i.institution_id = aid.institution_id