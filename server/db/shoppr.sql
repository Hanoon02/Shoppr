CREATE DATABASE IF NOT EXISTS `shoppr` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE shoppr;

DROP TABLE IF EXISTS Store;
CREATE TABLE Store (
    Store_Name char(6) NOT NULL PRIMARY KEY
);

DROP TABLE IF EXISTS Admin;
CREATE TABLE Admin (
           admin_id INT NOT NULL PRIMARY KEY,
           username VARCHAR(50) NOT NULL,
           password VARCHAR(50) NOT NULL,
           Store_Name char(6) NOT NULL,
           FOREIGN KEY (Store_Name) REFERENCES STORE(Store_Name)
);
#Shoppr Store
INSERT INTO Store VALUES ('Shoppr');

#Admin
INSERT INTO Admin VALUES (1, 'admin', 'admin', 'Shoppr');

DROP TABLE IF EXISTS `Cart`;

CREATE TABLE `Cart` (
                        `Cart_ID` int(11) NOT NULL,
                        `Product_ID` int(11) NOT NULL,
                        `Quantity` int(11) NOT NULL,
                        KEY `Cart_ID` (`Cart_ID`),
                        KEY `Product_ID` (`Product_ID`),
                        CONSTRAINT `Cart_ibfk_1` FOREIGN KEY (`Cart_ID`) REFERENCES `Customer` (`Customer_ID`),
                        CONSTRAINT `Cart_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `Product` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (0, 0, 3);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (2, 1, 1);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (3, 2, 4);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (4, 3, 8);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (5, 4, 2);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (6, 5, 3);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (7, 8, 3);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (9, 9, 3);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (17, 16, 1);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (29, 17, 1);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (50, 20, 9);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (57, 33, 2);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (69, 35, 3);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (71, 36, 9);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (73, 37, 5);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (80, 39, 9);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (83, 43, 7);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (90, 54, 8);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (94, 55, 4);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (127, 65, 7);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (187, 69, 5);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (391, 77, 2);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (472, 93, 9);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (587, 99, 4);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (719, 132, 6);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (807, 298, 7);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (950, 340, 5);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (1169, 418, 3);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (2288, 443, 1);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (3038, 451, 6);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (4223, 525, 1);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (4920, 529, 3);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (5582, 628, 7);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (5665, 675, 1);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (5999, 792, 5);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (6566, 889, 7);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (7371, 937, 3);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (7429, 955, 5);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (8459, 969, 3);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (9298, 1211, 4);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (9595, 1889, 8);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (10576, 2307, 7);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (11731, 2405, 8);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (26679, 3799, 5);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (28191, 4244, 2);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (38128, 6200, 4);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (57155, 6421, 8);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (58316, 6554, 3);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (67135, 7064, 3);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (82263, 8316, 7);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (82589, 8878, 6);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (87823, 12397, 4);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (89650, 19214, 3);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (187587, 35059, 7);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (190736, 35294, 7);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (228664, 41643, 8);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (238792, 48694, 5);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (408135, 54274, 5);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (475112, 57788, 5);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (510954, 61005, 8);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (514004, 83175, 5);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (732391, 96833, 7);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (872967, 185924, 8);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (959998, 606023, 2);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (1753554, 881456, 9);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (2251351, 1567897, 5);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (2422669, 2206334, 2);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (3022622, 2378033, 1);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (3804374, 3391978, 7);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (4054059, 5210385, 9);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (4583379, 5334923, 2);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (5033868, 5899348, 7);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (10619661, 6290924, 1);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (14481360, 7438550, 4);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (20307090, 8744512, 2);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (20759733, 9164394, 7);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (28011240, 9448444, 4);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (29392583, 9702957, 6);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (34145714, 10256296, 9);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (36163424, 15210899, 3);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (47637093, 19829251, 4);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (53288126, 30804743, 8);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (63675803, 55126994, 4);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (69633051, 59194069, 6);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (70287717, 63215887, 4);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (70907859, 68273797, 5);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (73738556, 73194714, 8);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (83161741, 82528160, 2);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (84887725, 83458801, 9);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (95078627, 95053434, 2);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (98030668, 130188810, 1);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (99881774, 150812679, 3);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (203350525, 251292916, 9);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (253400677, 310611651, 6);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (421057412, 381109690, 2);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (504205898, 456360923, 8);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (561984165, 477343332, 2);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (631963252, 789542847, 9);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (861025943, 866736024, 4);
INSERT INTO `Cart` (`Cart_ID`, `Product_ID`, `Quantity`) VALUES (882065848, 903822370, 4);

DROP TABLE IF EXISTS `Customer`;

CREATE TABLE `Customer` (
                            `Customer_ID` int(11) NOT NULL,
                            `Customer_Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                            `Customer_Username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                            `Customer_Password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                            `Customer_Address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                            `Customer_Payment` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                            PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (0, 'et', 'veniam', '67414', '53405 Yundt Summit\nLeuschkebury, SC 45177-6964', '6011126129078015');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (2, 'porro', 'aut', '5429401', '1428 Candelario Radial\nWest Salvador, PA 77005-847', '4929580778464');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (3, 'ipsum', 'est', '', '43795 Paucek Spring Apt. 903\nWest Julien, UT 93850', '342521549280215');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (4, 'ratione', 'quas', '17895', '123 Harris Greens\nSerenityhaven, AZ 39204', '379999663505682');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (5, 'qui', 'nihil', '8', '0039 Jordan Plaza Apt. 679\nMarcelinoburgh, UT 9688', '5374609951617978');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (6, 'veritatis', 'molestias', '681957', '49050 Rath Valleys\nNorth Corene, WV 97314', '5507977670940041');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (7, 'rerum', 'quisquam', '79854', '552 Quincy Tunnel\nLake Koleborough, NJ 70224', '5595767487489448');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (9, 'laboriosam', 'laborum', '86816279', '567 Carter Heights Suite 042\nPort Noble, OR 79054', '4485664105752125');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (17, 'eum', 'enim', '68', '873 Lazaro View\nEast Doris, KS 02061', '5382074023624821');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (29, 'beatae', 'fugit', '', '443 Vinnie Springs\nWest Okey, WV 53707-7023', '4929910972835');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (50, 'at', 'illo', '551351905', '6339 Art Passage Apt. 203\nLake Kayla, TN 04159-307', '4556063277268');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (57, 'ipsa', 'iure', '8', '931 Minnie Crossing Suite 708\nWest Koleville, NY 0', '5138579934322968');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (69, 'molestias', 'id', '18', '4940 Kerluke Forges\nBlickshire, FL 47847-4593', '5189561189980252');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (71, 'vitae', 'tempore', '15512', '4699 Runolfsdottir Hollow\nNorth Rupertchester, MO ', '5169289610965765');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (73, 'enim', 'odit', '373723', '39266 Celine Plains Apt. 710\nPort Marionfurt, MA 3', '6011097250554219');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (80, 'a', 'ad', '', '0472 Santina Roads Suite 677\nWelchshire, MO 54469-', '5513984279561393');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (83, 'nobis', 'labore', '865246', '370 Michael Shoals Suite 355\nUptonside, ME 47740', '5323141710744037');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (90, 'in', 'error', '149', '393 Keven Squares Apt. 065\nNolanmouth, ME 13911', '5126874610570536');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (94, 'qui', 'harum', '', '357 Fay Alley\nCummingsfort, CT 03237', '5219880929121225');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (127, 'quod', 'deserunt', '23106', '27371 Wilderman Stravenue Suite 595\nPort Adrienneb', '4716388713548');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (187, 'iste', 'aut', '88949333', '122 Willa Mountains Suite 654\nZemlakfurt, KY 52819', '4929102570321645');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (391, 'optio', 'ut', '128525344', '3110 Pacocha Forest\nWest Donnell, AK 38836', '4324038464475894');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (472, 'aut', 'ex', '739466', '35084 McClure Mill\nSouth Nona, IA 72039', '4163048314730651');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (587, 'mollitia', 'qui', '6', '0814 Rolfson Ridge Suite 059\nSouth Irvingtown, MD ', '4539238779541');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (719, 'occaecati', 'deserunt', '406', '3014 Jett Overpass\nCarleyview, AL 52030-6762', '6011483998178405');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (807, 'numquam', 'illo', '6096916', '5737 Madonna Turnpike Apt. 466\nNew Arnoldoshire, N', '4916547166773');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (950, 'earum', 'aut', '7208', '84035 Braun Crossing Suite 155\nPort Sanford, MT 55', '4716217669461277');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (1169, 'laudantium', 'dolorem', '29961329', '480 Jennyfer Road\nColeberg, DE 55062', '5593086158685709');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (2288, 'enim', 'occaecati', '', '6512 Weimann Drives Apt. 247\nSwaniawskibury, AR 77', '4600956298920196');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (3038, 'ex', 'repellat', '13583212', '31698 Liliana Landing Apt. 319\nLake Maria, MS 8218', '5286116435376590');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (4223, 'ducimus', 'illo', '7870', '114 Borer Hills\nSouth Noel, NC 98559-0015', '4916945087698');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (4920, 'et', 'et', '430', '6702 Stewart Cliff Suite 797\nNew Rudolphton, NM 71', '4929081592883490');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (5582, 'veritatis', 'quaerat', '20403358', '83112 Okuneva Roads\nTrompmouth, MO 70849-3766', '5199034217273646');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (5665, 'enim', 'repellat', '252', '374 Kohler Turnpike Apt. 181\nKemmerland, DE 05342', '5188809740140691');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (5999, 'temporibus', 'laudantium', '25', '32786 Lelia Shores Apt. 839\nRunolfsdottirfort, OK ', '5360725562095694');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (6566, 'reprehenderit', 'vero', '', '32393 Sipes Trail Apt. 407\nPort Brendanmouth, TX 5', '5566281201994960');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (7371, 'aperiam', 'illum', '', '622 Strosin Turnpike Suite 985\nRippinhaven, CA 517', '5220367234712610');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (7429, 'vel', 'minima', '355016', '549 Dallin Shore\nO\'Reillyfurt, DE 95447-3547', '4997521106843');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (8459, 'sint', 'molestiae', '3', '5147 Huel Land Suite 848\nFraneckiton, RI 78090-856', '5152305557446811');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (9298, 'voluptatem', 'quas', '12208097', '0589 Olin Street Suite 505\nNorth Melynashire, NE 9', '5188413660170541');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (9595, 'doloribus', 'iste', '4756', '790 Brain Valley Apt. 324\nJuliuston, UT 09520-1895', '4747151096022');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (10576, 'aut', 'tempore', '76378940', '0813 Martine Way\nNorth Waldo, DC 05000-7512', '5353030924628144');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (11731, 'impedit', 'sed', '38683', '4789 Hudson Divide\nNorth Clifford, MD 33031', '4539416105061346');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (26679, 'eos', 'officiis', '', '24332 Pfannerstill Manors Suite 026\nRomagueraland,', '5137857815260050');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (28191, 'quisquam', 'sit', '224704', '77200 Shayna Key\nLake Allenfort, DC 64241-9613', '5191447137532279');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (38128, 'cupiditate', 'eum', '44', '6994 Carter Center\nDedricshire, OR 69877', '5188784649898343');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (57155, 'eaque', 'tempore', '', '595 Bartoletti Path\nNorth Aurore, KY 11294-4458', '4024007121736');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (58316, 'molestiae', 'voluptas', '42', '9658 Arvilla Creek\nDereckchester, NM 77677', '4916526633494847');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (67135, 'ad', 'inventore', '169033', '214 Isom Falls\nReggieton, UT 31141', '4916092036467');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (82263, 'vel', 'in', '26834705', '6747 Kuphal Rapids\nWildermanfort, CO 36930-4020', '5548908083524912');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (82589, 'veritatis', 'ipsa', '845011766', '36732 Kamille Harbors\nNew Alivia, MS 27473-2052', '5498708175014191');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (87823, 'distinctio', 'eum', '578', '506 Crist Radial\nSouth Lester, WY 79772', '5122290434149450');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (89650, 'eum', 'voluptatibus', '19', '067 Smith Ville\nNew Misael, VA 87867', '5431262025736489');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (187587, 'ab', 'consequuntur', '2160961', '66966 Rocio Villages Suite 691\nMoenburgh, HI 28872', '341386700951056');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (190736, 'cum', 'quasi', '66357079', '70772 Hayes Highway Apt. 623\nReingermouth, ME 0174', '5284181880784138');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (228664, 'et', 'necessitatibus', '34', '70253 Haag Landing Apt. 080\nWest Mckennatown, IL 4', '6011886166353608');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (238792, 'rerum', 'nisi', '155', '244 Rickey Alley\nSouth Idell, AR 57550', '4716826925320');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (408135, 'quo', 'soluta', '83494239', '482 Ibrahim Shoal Suite 092\nPort Sasha, TN 27501', '5432611164453893');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (475112, 'et', 'animi', '2', '47502 Stehr Motorway\nLake Mortimerchester, ME 0537', '5356343131110656');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (510954, 'quo', 'eaque', '989', '4920 Gusikowski Springs Suite 071\nSouth Krystalton', '4539884978360');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (514004, 'dolorem', 'qui', '483791', '38465 Dayton Forge\nTayafurt, ND 06333-6780', '5154642456370077');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (732391, 'qui', 'unde', '651', '809 Trantow Place Suite 960\nLake Elvie, MS 48721-8', '4556136721836');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (872967, 'labore', 'consequatur', '', '820 Libby Pass Apt. 156\nRicetown, SD 29640', '4916330558640');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (959998, 'at', 'optio', '80', '9850 Fadel Place Apt. 182\nGleasonbury, SC 39997', '4024007174284946');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (1753554, 'iste', 'laborum', '447', '248 Lorna Ports\nEast Stanton, NH 73064', '5555267272537273');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (2251351, 'totam', 'perferendis', '7', '8258 Valentine Ridge\nNitzschefort, ID 78064-3974', '6011005899994913');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (2422669, 'hic', 'est', '4693000', '91134 Nannie Wall\nEast Kadinburgh, HI 22222-3926', '4539713049814222');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (3022622, 'in', 'dolorem', '6', '4967 Brakus Mission\nEast Margarete, WI 08961', '4566000826957');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (3804374, 'sunt', 'quia', '7758', '24055 Bernhard Forest Apt. 228\nPort Edgardo, PA 05', '5170977785058060');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (4054059, 'velit', 'minima', '81', '890 Lehner Village\nWest Leola, NJ 96215', '6011641438962535');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (4583379, 'quidem', 'et', '6919727', '5161 Hammes Islands\nRosalindaborough, WA 70337', '4485122978408010');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (5033868, 'possimus', 'iusto', '5602', '06377 Grimes Ford Suite 500\nCollinsfurt, MT 67185-', '4929325590971');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (10619661, 'a', 'in', '23714211', '5203 Coralie Center Apt. 792\nWest Annie, NH 34171', '5220672926780239');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (14481360, 'cupiditate', 'suscipit', '837213662', '6527 Shanahan Locks\nNew Leo, MO 65076-6452', '4810176122656');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (20307090, 'dolor', 'et', '65', '1718 Ari Center Apt. 546\nEast Kieranstad, WA 15155', '4532805354481');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (20759733, 'iure', 'vel', '1024140', '5244 Klocko Expressway\nBednarstad, IL 49976', '6011477491278522');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (28011240, 'odit', 'saepe', '31554262', '662 Streich Pines\nNorth Rosalynland, FL 52471-4869', '340992515245683');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (29392583, 'pariatur', 'non', '434081137', '2023 Emely Stravenue\nHillaryfurt, AR 65262-2386', '6011663216020700');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (34145714, 'natus', 'sit', '903', '85711 Reynolds Isle Suite 576\nLake Boris, NV 45323', '5390540286039667');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (36163424, 'quidem', 'quia', '2366', '27258 Romaguera Expressway\nMariaville, MD 63219', '4929029162081262');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (47637093, 'natus', 'sequi', '4049425', '07810 Powlowski Ferry Suite 544\nWest Carmelhaven, ', '4485918151108164');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (53288126, 'qui', 'odit', '', '4430 Weldon Center Apt. 944\nJenkinsville, WY 76164', '349493307242981');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (63675803, 'quis', 'impedit', '847768', '50973 Teagan Island\nWest Vidaltown, GA 58606', '4929161551306536');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (69633051, 'fuga', 'velit', '46231096', '343 Rebecca Pike Suite 525\nLake Tavares, AK 98561-', '5403819565472932');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (70287717, 'saepe', 'nulla', '90109166', '3078 Reilly Trace\nClydestad, HI 73789-3012', '4532285633670');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (70907859, 'facere', 'qui', '62491406', '5420 Ayden Corner Suite 688\nLake Gerhardchester, N', '4539933345750939');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (73738556, 'porro', 'incidunt', '37652', '13196 Brooklyn Ford\nWest Alfonzo, NM 86161', '4532028971757');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (83161741, 'quibusdam', 'sunt', '98347', '073 Schultz Summit Apt. 117\nManteland, WI 12195', '5384304523747963');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (84887725, 'dignissimos', 'itaque', '290824', '63240 Bailey Glens Suite 591\nWintheiserport, MA 26', '347014455468264');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (95078627, 'reprehenderit', 'quibusdam', '333124', '196 Franz Manor Apt. 372\nWest Garryland, OH 05784-', '5229746624551560');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (98030668, 'expedita', 'consequuntur', '18298300', '620 Curtis Lane\nPinkmouth, MN 47839', '4929347149721395');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (99881774, 'voluptates', 'laboriosam', '2093', '6648 Sanford Rapid Suite 200\nLake Genevieveview, M', '374158768136132');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (203350525, 'et', 'sint', '35400', '73112 Bart Ridge Suite 640\nMcDermottport, AK 08035', '5569179496268429');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (253400677, 'magni', 'autem', '42692719', '5108 Schinner Gardens Apt. 987\nTyreekmouth, TX 046', '4532357873221244');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (421057412, 'sequi', 'molestiae', '4', '10946 Kohler Street Suite 870\nNew Franco, FL 53893', '5393374530632722');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (504205898, 'est', 'sint', '58', '1909 Kutch Route Suite 668\nLake Terrellfort, OR 90', '5203082030245594');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (561984165, 'incidunt', 'animi', '332', '2554 Legros Ville Apt. 296\nLake Raheem, OK 76467', '4556468832015');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (631963252, 'vel', 'cupiditate', '18340', '2022 Strosin Drives\nLake Eliseview, NE 99043-8118', '4701501162222082');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (861025943, 'culpa', 'omnis', '90555', '707 Hilpert Cliffs Suite 643\nTristianshire, NM 993', '5471051319491601');
INSERT INTO `Customer` (`Customer_ID`, `Customer_Name`, `Customer_Username`, `Customer_Password`, `Customer_Address`, `Customer_Payment`) VALUES (882065848, 'ullam', 'quis', '3', '78336 Johns Grove\nRohanland, MN 19421', '4716217882013475');


DROP TABLE IF EXISTS `Orders`;

CREATE TABLE `Orders` (
                          `Order_ID` int(11) NOT NULL,
                          `Order_Cost` int(11) NOT NULL,
                          `CART_ID` int(11) NOT NULL,
                          PRIMARY KEY (`Order_ID`),
                          KEY `CART_ID` (`CART_ID`),
                          CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`CART_ID`) REFERENCES `Cart` (`Cart_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (0, 0, 127);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (1, 1, 3804374);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (2, 1, 4920);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (3, 1794, 7429);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (4, 270, 94);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (5, 36, 53288126);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (6, 0, 2422669);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (7, 1637132, 7371);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (8, 54, 10576);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (9, 48, 5582);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (26, 0, 14481360);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (39, 25669189, 0);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (42, 216, 17);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (60, 13617, 10619661);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (63, 38, 69633051);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (69, 0, 73);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (70, 87, 861025943);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (96, 5, 73738556);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (153, 2248044, 67135);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (287, 3, 29392583);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (362, 5025, 587);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (404, 11488, 28011240);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (414, 0, 69);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (426, 17, 63675803);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (428, 11744, 9298);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (459, 124, 732391);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (483, 2711456, 719);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (645, 39618847, 20307090);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (652, 641812, 9595);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (710, 257307, 2251351);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (727, 0, 82263);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (788, 16853626, 83);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (901, 21, 1753554);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (927, 1129001, 4054059);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (980, 2, 11731);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (2093, 3231, 228664);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (2095, 94264264, 7);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (2832, 27, 58316);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (3653, 1646, 2288);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (5314, 174228, 959998);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (7155, 2347, 510954);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (7309, 86025, 47637093);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (8634, 192515250, 29);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (20170, 6283, 203350525);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (20367, 30148055, 9);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (20571, 6, 6566);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (22573, 75, 187);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (73572, 49893634, 83161741);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (76866, 0, 80);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (84967, 274, 3022622);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (90024, 4936, 561984165);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (92456, 2, 36163424);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (93937, 5668, 26679);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (95458, 1622, 84887725);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (140142, 21, 5999);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (212820, 266218649, 238792);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (373097, 70408, 408135);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (436180, 0, 90);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (471692, 0, 872967);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (553489, 0, 95078627);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (723084, 377572315, 475112);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (738142, 57, 2);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (953556, 31328, 5033868);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (1648267, 167116, 253400677);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (1937968, 0, 70907859);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (1973633, 0, 38128);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (2463610, 35881912, 882065848);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (3053649, 7239202, 8459);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (3741384, 2940716, 82589);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (4318233, 51584, 950);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (5111010, 0, 3);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (5406042, 26, 391);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (6717356, 18, 87823);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (8320820, 35, 5);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (8347628, 13, 4);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (8848656, 39693, 89650);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (9317917, 4732, 5665);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (12421976, 0, 71);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (14258948, 74064551, 4223);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (21168393, 738350, 57155);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (29179943, 281653, 4583379);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (34858746, 915362, 421057412);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (41371237, 14, 504205898);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (47190122, 3, 57);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (65323501, 507998, 472);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (70296975, 175181208, 514004);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (74766672, 0, 1169);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (75086433, 14080924, 20759733);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (78942497, 678, 187587);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (80128676, 1644102, 807);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (80719987, 1715, 99881774);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (82929382, 15, 70287717);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (95676511, 0, 98030668);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (113838246, 5, 6);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (342966121, 202639, 190736);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (534921187, 14481651, 34145714);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (694725165, 1040139, 3038);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (715973924, 2219804, 50);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (762962567, 572891080, 28191);
INSERT INTO `Orders` (`Order_ID`, `Order_Cost`, `CART_ID`) VALUES (875850944, 625975, 631963252);

DROP TABLE IF EXISTS `Product`;

CREATE TABLE `Product` (
                           `Product_ID` int(11) NOT NULL,
                           `Product_Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                           `Price` int(11) NOT NULL,
                           `Warehouse_ID` int(11) NOT NULL,
                           `Vendor_ID` int(11) NOT NULL,
                           `Category_ID` int(11) NOT NULL,
                           PRIMARY KEY (`Product_ID`),
                           KEY `Warehouse_ID` (`Warehouse_ID`),
                           KEY `Vendor_ID` (`Vendor_ID`),
                           KEY `Category_ID` (`Category_ID`),
                           CONSTRAINT `Product_ibfk_1` FOREIGN KEY (`Warehouse_ID`) REFERENCES `Warehouse` (`Warehouse_ID`),
                           CONSTRAINT `Product_ibfk_2` FOREIGN KEY (`Vendor_ID`) REFERENCES `Vendor` (`Vendor_ID`),
                           CONSTRAINT `Product_ibfk_3` FOREIGN KEY (`Category_ID`) REFERENCES `Product_Category` (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (0, 'minima', 51578596, 3, 4, 4);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (1, 'dolorem', 445569, 1851, 5224, 5448);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (2, 'illum', 124, 312, 188, 712);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (3, 'expedita', 365826108, 34164, 46811, 76353);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (4, 'quia', 182402631, 10747, 44063, 54527);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (5, 'quis', 222122923, 6989, 29729, 40252);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (8, 'possimus', 0, 13118262, 31417816, 53039313);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (9, 'aut', 578973, 35, 38, 60);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (16, 'fugit', 11111, 5, 7, 7);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (17, 'consectetur', 54364, 502338729, 571974835, 757116170);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (20, 'voluptatibus', 227, 9240, 39241, 52809);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (33, 'perferendis', 1341563, 300, 143, 708);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (35, 'inventore', 14, 4277, 8172, 8181);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (36, 'recusandae', 40, 66568495, 92453089, 93267146);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (37, 'nostrum', 2717, 865507, 3839867, 8325811);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (39, 'quis', 19098768, 91141157, 189744364, 359335238);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (43, 'qui', 38, 4, 6, 5);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (54, 'labore', 0, 8, 10, 9);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (55, 'eveniet', 36247810, 90731081, 178189945, 163964893);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (65, 'aperiam', 43622, 5639, 8881, 10632);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (69, 'quam', 1, 2902838, 7148693, 15787765);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (77, 'aut', 58, 1312249, 5075245, 9184110);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (93, 'praesentium', 77186399, 13766544, 33269168, 62283440);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (99, 'minus', 0, 94664445, 270726928, 535943758);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (132, 'itaque', 450481, 6137, 29039, 38145);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (298, 'provident', 6091231, 665, 729, 1627);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (340, 'delectus', 20, 77, 82, 135);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (418, 'repellat', 18462203, 50165, 141825, 232816);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (443, 'provident', 7, 3951, 7506, 5933);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (451, 'perferendis', 6, 641683795, 718322933, 887108544);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (525, 'non', 518117041, 619919936, 622966248, 878290265);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (529, 'sit', 53, 65952, 360566, 556223);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (628, 'ab', 2184, 9, 19, 11);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (675, 'dolor', 4, 5040166, 9192283, 20426845);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (792, 'reiciendis', 5551, 6505413, 19206376, 37477381);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (889, 'quis', 393384, 887758958, 986188511, 987508199);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (937, 'provident', 2, 7, 8, 8);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (955, 'consectetur', 17310668, 75, 77, 133);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (969, 'modi', 6317, 3494, 7240, 5547);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (1211, 'magni', 7340867, 79304409, 99628115, 105222454);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (1889, 'rem', 58, 5693, 13449, 11529);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (2307, 'facere', 0, 538713272, 590455644, 858484004);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (2405, 'aut', 1475, 553, 510, 1315);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (3799, 'nihil', 33952, 3378845, 7378586, 15839174);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (4244, 'sed', 909, 19, 33, 31);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (6200, 'sed', 33269, 503, 381, 968);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (6421, 'debitis', 0, 123, 88, 523);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (6554, 'nemo', 1, 786, 1531, 2428);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (7064, 'et', 36971, 11, 23, 26);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (8316, 'et', 3, 13257, 44546, 59872);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (8878, 'omnis', 450, 5460073, 9331638, 25390983);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (12397, 'voluptas', 84, 459262687, 543128742, 700026021);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (19214, 'qui', 0, 0, 0, 0);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (35059, 'explicabo', 25042, 9463410, 21276935, 48783590);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (35294, 'in', 64, 99188570, 442054470, 574794222);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (41643, 'fugit', 2, 93501177, 256106091, 478937051);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (48694, 'saepe', 15, 926, 1775, 4021);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (54274, 'eos', 0, 128845, 482919, 720273);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (57788, 'repellat', 4368, 45, 47, 87);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (61005, 'et', 478, 14903135, 41516262, 69040743);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (83175, 'voluptas', 30012800, 404, 346, 875);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (96833, 'sit', 238286734, 59556, 350015, 389222);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (185924, 'sequi', 370093279, 1007, 3196, 4605);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (606023, 'aspernatur', 20392946, 8138666, 20442807, 38859320);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (881456, 'iusto', 9, 75265697, 93655784, 96439531);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (1567897, 'iusto', 124261959, 7407, 36162, 43726);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (2206334, 'voluptatem', 688, 87535427, 111361997, 114206766);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (2378033, 'ad', 19, 121915, 444318, 559254);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (3391978, 'suscipit', 1716516, 39438, 86644, 138384);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (5210385, 'ex', 28448964, 2879, 7070, 5490);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (5334923, 'perspiciatis', 595, 61293116, 71864372, 86106770);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (5899348, 'molestiae', 1, 760857385, 869789264, 986657438);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (6290924, 'qui', 12, 148, 94, 617);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (7438550, 'natus', 2, 2443626, 5423461, 10966367);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (8744512, 'totam', 29422, 2, 3, 2);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (9164394, 'atque', 37281, 78, 85, 428);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (9448444, 'mollitia', 655598, 5812, 20959, 31112);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (9702957, 'omnis', 437626704, 464413, 592785, 2879820);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (10256296, 'qui', 26597183, 255368, 583652, 920866);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (15210899, 'dignissimos', 268, 27, 36, 39);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (19829251, 'ad', 281321, 814554, 975680, 5147490);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (30804743, 'magni', 9197, 339, 291, 829);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (55126994, 'aperiam', 251, 594702, 813079, 4895370);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (59194069, 'placeat', 35061, 84, 86, 481);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (63215887, 'sed', 42798, 1806, 3685, 4928);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (68273797, 'fugiat', 0, 35428, 75366, 89179);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (73194714, 'veniam', 1, 862342, 3425445, 6141723);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (82528160, 'occaecati', 0, 158716, 486729, 840923);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (83458801, 'quos', 14591018, 52218871, 51759784, 81655328);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (95053434, 'quisquam', 9091842, 840126, 1345587, 5248412);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (130188810, 'dolorem', 1781, 524703, 609293, 3925324);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (150812679, 'ullam', 7469, 1, 1, 1);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (251292916, 'sint', 5, 46502, 104587, 176421);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (310611651, 'debitis', 0, 5758, 17434, 15877);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (381109690, 'quasi', 567591824, 374, 338, 868);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (456360923, 'sunt', 416, 6063526, 17055802, 28182197);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (477343332, 'rerum', 87046, 918203, 4429123, 8502435);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (789542847, 'cum', 0, 4342, 8659, 9422);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (866736024, 'a', 399, 58, 60, 96);
INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Price`, `Warehouse_ID`, `Vendor_ID`, `Category_ID`) VALUES (903822370, 'ducimus', 0, 62, 61, 115);

DROP TABLE IF EXISTS `Product_Category`;

CREATE TABLE `Product_Category` (
                                    `Category_ID` int(11) NOT NULL,
                                    `Category_Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                                    PRIMARY KEY (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (0, 'eum');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (1, 'doloribus');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (2, 'ex');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (4, 'itaque');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (5, 'ipsa');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (7, 'quos');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (8, 'iure');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (9, 'qui');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (11, 'qui');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (26, 'placeat');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (31, 'et');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (39, 'est');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (60, 'atque');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (87, 'omnis');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (96, 'voluptatem');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (115, 'enim');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (133, 'enim');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (135, 'consequatur');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (428, 'sit');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (481, 'sit');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (523, 'harum');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (617, 'modi');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (708, 'et');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (712, 'perferendis');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (829, 'aut');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (868, 'doloribus');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (875, 'aliquid');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (968, 'cumque');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (1315, 'eum');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (1627, 'quam');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (2428, 'occaecati');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (4021, 'sunt');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (4605, 'minima');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (4928, 'et');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (5448, 'et');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (5490, 'voluptatibus');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (5547, 'et');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (5933, 'vel');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (8181, 'rerum');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (9422, 'omnis');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (10632, 'repudiandae');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (11529, 'rerum');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (15877, 'soluta');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (31112, 'pariatur');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (38145, 'dignissimos');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (40252, 'autem');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (43726, 'facere');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (52809, 'ipsum');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (54527, 'quas');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (59872, 'blanditiis');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (76353, 'suscipit');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (89179, 'aut');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (138384, 'temporibus');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (176421, 'totam');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (232816, 'dolores');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (389222, 'impedit');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (556223, 'et');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (559254, 'itaque');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (720273, 'amet');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (840923, 'corporis');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (920866, 'ipsa');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (2879820, 'facilis');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (3925324, 'suscipit');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (4895370, 'esse');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (5147490, 'quasi');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (5248412, 'sunt');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (6141723, 'minima');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (8325811, 'quam');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (8502435, 'aut');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (9184110, 'cumque');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (10966367, 'veritatis');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (15787765, 'qui');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (15839174, 'deleniti');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (20426845, 'eum');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (25390983, 'eum');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (28182197, 'pariatur');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (37477381, 'architecto');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (38859320, 'reiciendis');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (48783590, 'amet');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (53039313, 'neque');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (62283440, 'qui');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (69040743, 'molestias');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (81655328, 'voluptatem');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (86106770, 'molestiae');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (93267146, 'in');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (96439531, 'et');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (105222454, 'assumenda');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (114206766, 'et');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (163964893, 'necessitatibus');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (359335238, 'incidunt');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (478937051, 'dolorem');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (535943758, 'voluptas');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (574794222, 'debitis');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (700026021, 'dolorum');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (757116170, 'vero');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (858484004, 'amet');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (878290265, 'aspernatur');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (887108544, 'harum');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (986657438, 'sequi');
INSERT INTO `Product_Category` (`Category_ID`, `Category_Name`) VALUES (987508199, 'repellendus');


DROP TABLE IF EXISTS `Shipping`;

CREATE TABLE `Shipping` (
                            `Shipping_ID` int(11) NOT NULL,
                            `Shipping_Cost` int(11) NOT NULL,
                            `Shipping_Address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                            `Order_ID` int(11) NOT NULL,
                            PRIMARY KEY (`Shipping_ID`),
                            KEY `Order_ID` (`Order_ID`),
                            CONSTRAINT `Shipping_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `Orders` (`Order_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (0, 6, '1908 Carol Highway\nNorth Alessandro, DE 63971', 26);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (3, 5, '5263 Liam Springs Apt. 897\nHalvorsontown, OR 85716', 9);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (4, 3, '41764 Beulah Inlet\nPort Dariusmouth, OK 85240-0016', 7309);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (5, 3, '011 Kunze Ridge\nKulasborough, FL 73660-7383', 39);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (6, 4, '905 Katlynn Mills Apt. 711\nNew Mabelle, WI 44110-7', 483);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (7, 9, '229 Schultz Union Suite 080\nMartinetown, TN 53595-', 4);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (8, 7, '968 Katrina Squares Apt. 912\nStromanberg, VT 21151', 82929382);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (9, 3, '77675 Kylie Mount Suite 525\nLake Jess, KS 07309-40', 459);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (10, 1, '569 Muller Overpass Apt. 478\nNew Lawson, DC 94307-', 76866);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (19, 3, '9057 Bogan Drive Apt. 243\nLittelfurt, TX 88848', 652);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (25, 2, '5454 Llewellyn Drives\nLake Jackson, IL 50734-4351', 8848656);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (26, 8, '41953 Guadalupe Manors Apt. 316\nSouth Elizaborough', 694725165);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (30, 6, '508 Volkman Track Suite 458\nPort Aftonfurt, CO 347', 373097);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (31, 1, '11092 Lauryn Summit Apt. 977\nPort Milliefurt, WI 2', 113838246);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (42, 4, '69705 Marquardt Stream Suite 628\nMarquardtstad, MD', 645);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (58, 4, '88956 Emmerich Prairie\nPort Kaseyshire, MT 62251-2', 1);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (82, 9, '29650 Tyreek Station Apt. 088\nSashaton, ND 65853-7', 2463610);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (86, 7, '3656 Sarai Wall Suite 057\nRiceport, OK 90077', 90024);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (96, 4, '43335 Lowell Prairie\nHeaneyborough, IL 27315', 21168393);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (181, 3, '3221 Elda Landing\nWest Casper, MA 34075-1543', 3);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (285, 1, '371 Hortense Squares\nSchambergerland, OK 37169-815', 3653);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (301, 5, '6481 Kris Brooks Apt. 954\nPort Josiefurt, TX 38880', 5111010);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (335, 1, '89648 Osinski Knolls\nWilbertfurt, AL 54859', 287);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (405, 8, '80847 Maynard Unions\nNorth Leslie, KS 51285-3287', 20170);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (437, 9, '72406 Quitzon Plaza Apt. 650\nVeronicahaven, IA 103', 2);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (538, 9, '3733 Williamson Pass Apt. 921\nWaelchimouth, ND 662', 5314);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (544, 6, '0102 Augustine Orchard Suite 767\nMitchellchester, ', 34858746);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (738, 4, '0165 Deion Spur Apt. 968\nGroverburgh, CA 54142-854', 9317917);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (749, 1, '672 West Dale Suite 203\nNorth Cristobalborough, MT', 727);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (834, 9, '91433 Emmerich Light Apt. 209\nMarquardtside, IN 29', 14258948);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (972, 6, '5243 Wilderman Harbors Suite 034\nPort Jannieboroug', 95676511);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (978, 6, '4659 Zulauf Plaza Apt. 423\nBridgetteberg, KS 51815', 41371237);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (980, 7, '7311 Lisette Inlet\nNew Victor, OK 23993-8394', 0);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (1728, 7, '8880 Braun Spurs Apt. 352\nKittyborough, KY 95506', 875850944);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (2030, 3, '6302 Durgan Parks Apt. 179\nKutchtown, SC 21116-227', 80719987);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (3266, 3, '43946 Zieme Cove\nHesselview, LA 28331-6559', 42);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (3972, 9, '2009 Feeney Lodge Suite 000\nGloverburgh, AL 45790', 80128676);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (5282, 5, '3604 Botsford Manors\nLake Glenda, OR 87607-8571', 12421976);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (7444, 7, '53056 Mike Orchard\nSouth Raphaelle, PA 80050-4643', 96);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (7578, 2, '32794 Angelina Ridges\nPort Larry, MA 17441-4596', 927);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (7609, 8, '756 Ebony Pine Suite 854\nNorth Lilianehaven, ID 02', 8320820);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (8398, 3, '9809 Colten Terrace Apt. 475\nPort Hilton, NC 27062', 762962567);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (8548, 1, '4120 DuBuque Stream Apt. 376\nOsinskitown, WY 42152', 426);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (8906, 8, '751 Rodriguez Springs Apt. 773\nSouth Tamara, OR 26', 22573);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (8981, 6, '43647 Candido Junction Apt. 875\nNew Shainaville, A', 69);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (9031, 6, '5803 Dolores Manors\nSouth Magali, MN 80722', 553489);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (9356, 4, '91177 Jones Forks\nNorth Lydiastad, TN 54416', 342966121);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (9871, 8, '93314 Krajcik Ports\nHeathcoteborough, KS 16261-766', 47190122);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (19858, 9, '7779 Gottlieb Mountains\nSouth Vidal, MN 85474-9015', 4318233);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (20832, 8, '4149 Hilll Wall Apt. 760\nEast Landen, CO 66863', 436180);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (35079, 5, '113 Stoltenberg Forge Apt. 671\nLake Judy, IL 02377', 414);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (47793, 9, '446 Thalia Row\nNorth Leda, NH 92632', 84967);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (75438, 6, '3457 Mitchell Avenue Suite 305\nLake Tyrellberg, GA', 73572);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (75506, 6, '20435 Cummerata Mills Apt. 656\nLeuschkehaven, NC 2', 95458);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (76329, 7, '731 Josianne Springs\nSouth Sylvester, MD 95009', 65323501);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (81852, 8, '90505 Abbigail Fall\nHilpertville, ID 80976-4881', 2832);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (150521, 4, '79074 Alicia Mall Suite 618\nRauchester, AR 31630', 3053649);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (156885, 6, '72760 Malcolm Stream Apt. 215\nSouth Addisonville, ', 901);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (386103, 7, '937 Osinski Square Suite 071\nAnabelleshire, RI 214', 70);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (604071, 5, '98811 Eichmann Haven\nWest Pollyburgh, NJ 07227', 7155);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (609679, 2, '53001 Colten Mills\nEast Virginie, AK 70860-6193', 715973924);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (711934, 6, '53843 Rempel Cove Suite 827\nAlyssonshire, WV 66649', 5);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (728891, 8, '4798 Alexis Passage Apt. 490\nNew Beth, WY 58134', 70296975);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (870467, 4, '76050 Dooley Roads\nNorth Brennon, KY 61536', 60);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (955817, 8, '39133 Santiago Lights\nNorth Genevieve, VT 92524-13', 92456);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (965438, 4, '7434 White Falls\nWest Ervin, NM 47385', 1648267);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (1709495, 3, '93414 Corkery Alley Apt. 276\nBraedenport, ID 76070', 738142);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (2825586, 6, '92202 Murphy Courts Apt. 430\nSouth Nicholausmouth,', 63);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (4112727, 6, '200 Megane Fork\nNew Carroll, WA 72945', 75086433);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (4452219, 7, '94502 Oran Radial Apt. 969\nNorth Boydchester, DC 0', 93937);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (5074932, 7, '86650 Moore Coves Apt. 945\nNorth Bartonmouth, NY 3', 788);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (5685352, 1, '3593 Mayer Camp\nBartonbury, CA 26680-0557', 7);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (6131798, 2, '325 Janie Brooks\nWest Gunnar, OR 13109-8919', 6);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (6188145, 7, '4367 Schaefer Radial\nSouth Davidview, RI 71273-785', 8347628);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (6549549, 1, '893 Javonte Mountain\nSouth Carmela, NM 85068-4843', 534921187);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (6618064, 1, '4750 Carlie Turnpike\nLake Simone, CA 33476-2895', 6717356);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (6894335, 4, '9857 Betty Squares\nEast Amparoburgh, OK 96296-9648', 140142);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (7288237, 2, '8525 June Inlet Apt. 926\nWest Irma, MD 38590', 404);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (7686550, 4, '91686 Lionel Course Suite 949\nMariettafort, NV 262', 3741384);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (8886493, 6, '69553 Gunnar Ramp\nPort Josie, NE 14161', 428);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (9688240, 5, '770 Elizabeth Skyway Suite 645\nSouth Nickolasborou', 1973633);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (11448396, 4, '26135 Neva Light\nProhaskatown, OR 82782', 29179943);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (12323340, 3, '061 Macejkovic Bridge\nCamillaland, NC 13440-9654', 212820);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (19927390, 6, '8316 Evangeline Park Suite 290\nVivianeton, UT 2215', 78942497);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (25938901, 6, '84426 Alexane Plaza\nRunolfssonhaven, NV 98323', 362);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (30877951, 9, '2923 Rohan Walks\nLulafurt, AR 55220', 5406042);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (60259525, 3, '24753 Koss Isle\nWest Cynthia, IA 26711', 153);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (76333136, 7, '5455 Efrain Forest\nSchroederstad, RI 32284-1928', 1937968);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (77425861, 9, '695 Fernando Squares Apt. 547\nIzabellaside, TN 356', 2093);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (81597028, 3, '675 Ahmed Summit Suite 682\nNorth Alessia, MS 82954', 8634);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (95606108, 4, '53863 Hector Dale\nNorth Jude, HI 90747', 710);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (348997928, 6, '1514 Lavonne Curve\nNorth Al, NE 31299', 20367);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (409256052, 9, '08097 Pollich Plaza\nLeschborough, VT 46542', 723084);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (449572170, 1, '363 Ernser Stream\nEast Jakayla, AR 43456', 471692);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (631265914, 3, '94354 Ezequiel Dam Suite 238\nJustonbury, MD 38000', 980);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (763775085, 7, '7815 Cole Harbor\nNew Isom, MS 31667', 2095);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (812164883, 6, '403 Reinger Mill\nWest Montanaland, PA 15817-0357', 74766672);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (849589242, 7, '972 Gino Motorway Suite 045\nGeovannybury, NY 32374', 953556);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (868714937, 8, '883 Kade Corners\nTrantowfurt, CT 97066-9440', 8);
INSERT INTO `Shipping` (`Shipping_ID`, `Shipping_Cost`, `Shipping_Address`, `Order_ID`) VALUES (899842655, 4, '54121 Ozella Common Apt. 541\nNew Lavada, AZ 82061', 20571);


DROP TABLE IF EXISTS `Transport`;

CREATE TABLE `Transport` (
                             `Transport_ID` int(11) NOT NULL,
                             `Transport_Type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                             `Transport_Availability` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                             `Shipping_ID` int(11) NOT NULL,
                             PRIMARY KEY (`Transport_ID`),
                             KEY `Shipping_ID` (`Shipping_ID`),
                             CONSTRAINT `Transport_ibfk_1` FOREIGN KEY (`Shipping_ID`) REFERENCES `Shipping` (`Shipping_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (0, 'consequatur', '', 8);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (1, 'rerum', '', 181);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (2, 'praesentium', '1', 31);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (4, 'quis', '', 2825586);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (6, 'et', '1', 75506);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (7, 'vero', '1', 2030);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (8, 'et', '1', 8548);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (9, 'esse', '', 348997928);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (10, 'qui', '1', 7288237);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (16, 'mollitia', '1', 9356);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (19, 'veritatis', '1', 955817);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (24, 'consequatur', '1', 538);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (39, 'placeat', '1', 409256052);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (41, 'rerum', '', 10);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (43, 'laboriosam', '', 26);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (48, 'ipsum', '', 763775085);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (53, 'quia', '1', 978);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (54, 'consectetur', '', 5);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (57, 'repudiandae', '1', 8398);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (58, 'illo', '', 35079);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (79, 'delectus', '1', 405);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (86, 'exercitationem', '', 60259525);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (93, 'sapiente', '1', 3);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (246, 'id', '', 82);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (389, 'inventore', '1', 5074932);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (655, 'ex', '1', 285);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (709, 'recusandae', '', 834);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (862, 'atque', '', 30877951);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (891, 'qui', '1', 19927390);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (934, 'vero', '', 12323340);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (994, 'laudantium', '', 76329);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (1158, 'architecto', '', 81852);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (1668, 'sequi', '1', 7);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (2926, 'perferendis', '1', 6);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (3334, 'et', '1', 604071);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (4156, 'alias', '1', 9);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (4268, 'eaque', '', 738);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (4347, 'reiciendis', '', 449572170);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (5936, 'sapiente', '1', 335);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (6230, 'est', '1', 20832);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (8922, 'ab', '', 0);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (9044, 'molestiae', '1', 150521);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (9958, 'doloribus', '', 95606108);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (18642, 'temporibus', '', 25);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (30259, 'hic', '', 7578);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (52040, 'ducimus', '1', 25938901);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (56488, 'facere', '', 77425861);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (56647, 'et', '', 6894335);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (59286, 'aut', '', 868714937);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (79959, 'sit', '', 6131798);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (80899, 'dolorem', '1', 728891);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (92880, 'consequatur', '', 9031);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (96658, 'nemo', '1', 631265914);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (99571, 'rem', '', 8886493);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (105685, 'quia', '', 6188145);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (146388, 'ipsum', '', 3266);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (179485, 'enim', '', 5282);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (196875, 'vel', '', 849589242);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (199326, 'rerum', '1', 7609);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (234421, 'dolorem', '', 812164883);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (356121, 'iste', '1', 4);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (605883, 'vel', '1', 58);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (671478, 'nam', '', 1728);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (889843, 'sunt', '', 47793);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (904073, 'ut', '', 156885);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (921359, 'ab', '', 7444);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (946939, 'reprehenderit', '', 81597028);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (1566173, 'iure', '1', 11448396);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (2970725, 'vero', '', 301);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (5740004, 'esse', '', 749);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (5831807, 'vitae', '', 437);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (6671078, 'asperiores', '1', 42);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (6774726, 'eligendi', '', 972);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (6998938, 'ducimus', '', 4112727);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (7103538, 'qui', '1', 609679);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (7108774, 'soluta', '1', 3972);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (8127285, 'ea', '', 96);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (8534431, 'eum', '1', 76333136);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (12850630, 'minima', '', 8981);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (25704523, 'reprehenderit', '', 6549549);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (25771616, 'alias', '1', 544);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (39206945, 'id', '', 86);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (40227006, 'ut', '1', 19);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (40519020, 'delectus', '1', 5685352);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (52873652, 'et', '1', 75438);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (54996834, 'quo', '', 19858);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (58561078, 'et', '', 6618064);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (73964123, 'incidunt', '', 4452219);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (74776128, 'amet', '', 1709495);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (79226024, 'et', '1', 899842655);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (85717269, 'et', '1', 7686550);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (87839769, 'quia', '1', 711934);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (95927416, 'repellendus', '', 965438);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (342482277, 'atque', '', 386103);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (767880234, 'ex', '1', 8906);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (778323801, 'aut', '1', 980);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (785734536, 'sit', '', 870467);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (941662079, 'non', '1', 9871);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (955647538, 'adipisci', '', 30);
INSERT INTO `Transport` (`Transport_ID`, `Transport_Type`, `Transport_Availability`, `Shipping_ID`) VALUES (992366769, 'adipisci', '', 9688240);


DROP TABLE IF EXISTS `Vendor`;

CREATE TABLE `Vendor` (
                          `Vendor_ID` int(11) NOT NULL,
                          `Vendor_Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                          `Vendor_Username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                          `Vendor_Password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                          PRIMARY KEY (`Vendor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (0, 'doloremque', 'qui', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (1, 'sapiente', 'harum', '8');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (2, 'numquam', 'qui', '1');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (3, 'adipisci', 'est', '9');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (4, 'autem', 'excepturi', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (5, 'aut', 'sed', '7');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (6, 'unde', 'ut', '3');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (9, 'saepe', 'deleniti', '4');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (19, 'aliquid', 'et', '4');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (43, 'natus', 'dolorem', '1');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (48, 'qui', 'et', '8');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (68, 'dolore', 'necessitatibus', '7');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (83, 'quisquam', 'quos', '7');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (84, 'ea', 'nam', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (96, 'voluptatibus', 'doloremque', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (122, 'optio', 'maxime', '1');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (173, 'commodi', 'enim', '2');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (316, 'ea', 'et', '9');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (321, 'est', 'reprehenderit', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (322, 'reprehenderit', 'sint', '7');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (327, 'omnis', 'aut', '7');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (430, 'consectetur', 'omnis', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (501, 'eaque', 'aut', '9');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (736, 'adipisci', 'sint', '8');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (739, 'qui', 'velit', '3');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (749, 'rerum', 'consectetur', '5');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (886, 'dolorem', 'cupiditate', '5');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (961, 'tempore', 'atque', '5');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (3116, 'quo', 'in', '9');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (4154, 'vitae', 'deleniti', '9');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (5193, 'rerum', 'explicabo', '4');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (5259, 'et', 'maiores', '2');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (6069, 'aut', 'tempora', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (7177, 'facere', 'sed', '4');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (7237, 'nihil', 'ad', '1');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (8184, 'placeat', 'libero', '7');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (8896, 'dignissimos', 'eum', '2');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (16994, 'ipsa', 'eum', '7');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (32841, 'ut', 'aut', '5');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (39647, 'eligendi', 'ut', '8');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (40679, 'et', 'dignissimos', '1');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (42729, 'est', 'nobis', '1');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (59828, 'dolorem', 'eaque', '1');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (64899, 'est', 'enim', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (67145, 'nam', 'eum', '5');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (80687, 'beatae', 'et', '5');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (90748, 'eum', 'quo', '9');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (104531, 'eveniet', 'ipsam', '9');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (170924, 'excepturi', 'voluptatum', '2');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (182701, 'ullam', 'labore', '2');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (266153, 'quia', 'sed', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (302344, 'error', 'similique', '7');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (337579, 'quia', 'saepe', '3');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (415344, 'ex', 'quis', '5');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (606176, 'tempora', 'assumenda', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (681543, 'nulla', 'expedita', '5');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (767809, 'provident', 'blanditiis', '2');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (774074, 'omnis', 'enim', '5');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (798589, 'repellat', 'fugit', '9');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (978370, 'doloremque', 'iste', '3');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (1198843, 'consequatur', 'quos', '3');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (1564194, 'aliquid', 'odio', '4');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (1812823, 'expedita', 'ex', '9');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (2435572, 'eius', 'quia', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (2546869, 'molestiae', 'reprehenderit', '2');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (2825017, 'debitis', 'eaque', '2');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (2950142, 'tenetur', 'quo', '1');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (3244294, 'dignissimos', 'sunt', '5');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (4696500, 'error', 'a', '4');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (6354809, 'ut', 'vel', '1');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (6562443, 'est', 'aliquam', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (7790449, 'eum', 'dolor', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (8520477, 'et', 'nobis', '4');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (12999910, 'non', 'veritatis', '3');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (19137897, 'voluptas', 'doloremque', '8');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (21147471, 'pariatur', 'vel', '7');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (22747322, 'enim', 'aliquam', '9');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (26214561, 'labore', 'quia', '8');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (36828055, 'qui', 'dicta', '7');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (44008707, 'asperiores', 'dolorem', '2');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (44077438, 'asperiores', 'quis', '1');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (53353343, 'qui', 'aut', '7');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (60194438, 'saepe', 'expedita', '1');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (61402704, 'a', 'fuga', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (62900958, 'id', 'omnis', '5');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (68698519, 'illum', 'repellendus', '3');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (79260695, 'qui', 'aut', '4');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (80674757, 'voluptatem', 'eum', '3');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (89062170, 'et', 'sapiente', '2');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (91723016, 'architecto', 'consectetur', '8');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (128398896, 'est', 'excepturi', '1');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (217171044, 'debitis', 'enim', '3');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (379634762, 'voluptatem', 'rerum', '7');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (500690170, 'magnam', 'adipisci', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (520739158, 'nobis', 'hic', '8');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (556816024, 'rem', 'tempora', '6');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (632287327, 'libero', 'id', '1');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (793339968, 'culpa', 'aut', '9');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (872794053, 'eius', 'autem', '1');
INSERT INTO `Vendor` (`Vendor_ID`, `Vendor_Name`, `Vendor_Username`, `Vendor_Password`) VALUES (983572624, 'harum', 'quibusdam', '9');



DROP TABLE IF EXISTS `Warehouse`;

CREATE TABLE `Warehouse` (
                             `Warehouse_ID` int(11) NOT NULL,
                             `Location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                             PRIMARY KEY (`Warehouse_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (0, '293 Cooper Well\nNorth Opheliatown, MI 37207-2183');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (1, '9738 Buckridge Springs\nGloverville, MI 25957-6766');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (2, '148 Bobbie Hill\nDareview, MO 93576-5632');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (3, '2822 Tremblay Plaza\nLake Wavaburgh, DC 01992-9396');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (4, '432 Darien Center\nSouth Sydni, NM 18554-0674');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (5, '12983 Anibal Turnpike Apt. 545\nNew Beryl, MS 30349');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (7, '258 Wunsch Street Apt. 626\nEast Jaeden, HI 56802-9');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (8, '54418 Murazik Fords\nGutmannland, NH 18281');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (9, '04128 Ursula Field\nNorth Zachary, MN 32511');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (11, '8765 Bartell Isle Suite 513\nNedraview, NE 53053');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (19, '1116 Thea Curve Suite 888\nNew Zora, NE 03926');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (27, '5561 Stracke Green Apt. 544\nParkerland, OH 56959-1');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (35, '288 Fahey Gateway Suite 505\nYundtborough, CT 00739');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (45, '571 Niko Dale\nSouth Berneice, VT 79592-0939');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (58, '846 Bode Island Suite 572\nNew Chauncey, WV 00917-9');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (62, '319 Katelin Cape\nNew Carminetown, AL 70364-7826');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (75, '63938 Block Brooks Suite 321\nEudorafort, AR 06822-');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (77, '75512 Doyle Neck Apt. 175\nEast Lynnville, SD 23300');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (78, '171 Gutkowski Cove\nNew Joanne, MS 51679-6886');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (84, '810 Sauer Street\nPaxtonburgh, WY 38485-6364');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (123, '93373 Luna Center\nPiperville, SC 24290-6264');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (148, '028 Steve Place\nPort Bonniemouth, WI 92297');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (300, '512 Dietrich Ways\nBergstromfort, KS 89263-7175');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (312, '234 Corkery Groves Suite 699\nBernierfurt, SD 91130');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (339, '50381 Brett Vista Suite 238\nLynchfurt, HI 98402');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (374, '5341 Bella Bypass Suite 834\nSouth Kristofermouth, ');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (404, '372 Schmitt Trail Suite 780\nEast Johnpaulmouth, IA');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (503, '82777 Claud Junctions Apt. 099\nNew Veronicaland, A');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (553, '258 Stracke Square Apt. 202\nDallasview, MN 70184-9');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (665, '427 Joyce Point\nEast Hannahport, AL 91352');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (786, '622 Jailyn Radial Apt. 705\nThompsonmouth, CO 95309');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (926, '47952 Padberg Shores\nRutherfordland, LA 88500-5139');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (1007, '13566 Altenwerth Extension\nLake Jannie, CT 51940');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (1806, '5920 Schmeler Inlet Apt. 863\nBednarburgh, GA 47875');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (1851, '20639 Dessie Inlet\nPort Alford, IN 00935');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (2879, '66227 Reanna Plain\nWest Joel, AL 22837-4950');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (3494, '2104 Torp Flat\nStoltenbergville, SC 08019');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (3951, '376 Kerluke Track Apt. 548\nWeissnatville, AK 37811');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (4277, '6484 Bailey Gateway\nLake Adahfurt, MA 05506');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (4342, '28420 Kunze Mountain Apt. 692\nRusselton, GA 65344');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (5639, '20153 Hane Field Apt. 825\nNorth Mollie, ND 49070');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (5693, '546 O\'Reilly Curve\nEllisview, NJ 26177-0204');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (5758, '344 Effertz Meadows Suite 112\nEast Jordane, WA 853');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (5812, '658 Gorczany Common\nSouth Cristobal, DE 27985');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (6137, '1736 Deckow View\nPort Willisshire, PA 64445-0203');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (6989, '483 Doyle Groves\nHillsburgh, GA 08227-4344');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (7407, '80858 Leuschke Bridge Suite 606\nEddiebury, SC 8650');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (9240, '6473 Stephany Rue\nNew Floridaport, NV 61147-3266');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (10747, '153 Collier Passage\nTrantowhaven, WV 62468-9107');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (13257, '06748 Veum Burgs\nWest Alisonborough, NJ 18432-6750');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (34164, '0917 Araceli Plaza\nHaagmouth, TN 63128');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (35428, '129 Huel Lane\nPurdyland, WY 73041');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (39438, '54280 Huel Burg Apt. 870\nFredericbury, MN 95009-08');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (46502, '2991 Rebeka Ports Apt. 966\nNew Nellabury, MA 87986');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (50165, '3375 O\'Conner Haven\nTheaburgh, OK 92049');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (59556, '43030 Weber Loop\nMayertchester, WI 09364-7564');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (65952, '4588 Jaren Highway\nRiverchester, GA 42206-6669');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (121915, '63371 Elias Light Suite 022\nEast Orlandobury, CA 0');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (128845, '6513 Vilma Crescent\nLucaston, MS 09170-6321');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (158716, '749 Cassin Way\nNorth Issac, MT 94751-4028');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (255368, '985 Balistreri Cove\nConnton, ID 73746');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (464413, '648 Parisian Lights\nDeckowport, ME 53873-9685');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (524703, '8896 Kameron Courts\nKesslertown, TN 08871-1884');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (594702, '0207 Towne Plains\nBrownhaven, NY 28754');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (814554, '281 Wolf Summit\nNew Domenic, GA 79502-3515');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (840126, '7461 Alene Groves Apt. 131\nCornellfort, NY 04213');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (862342, '08339 Hamill Hill Apt. 322\nSouth Elise, AZ 21812');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (865507, '86852 Effie Alley Suite 705\nLake Keyshawnside, FL ');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (918203, '207 Santiago Squares Apt. 242\nPort Kip, SC 52783');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (1312249, '61595 Sierra Freeway\nSouth Urieltown, IL 93857-409');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (2443626, '328 Marisa Court Apt. 712\nPort Braedenton, ND 8339');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (2902838, '570 Carolina Vista\nBoyleburgh, VA 58899');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (3378845, '2694 Little Roads Suite 552\nNew Aliafort, NV 79594');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (5040166, '82586 Hyatt Branch Apt. 338\nZboncaktown, AZ 87646-');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (5460073, '1677 Lang Cape\nJastview, OK 57660-2008');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (6063526, '85838 Schinner Throughway Suite 221\nEast Jocelynmo');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (6505413, '69319 Powlowski Corners Apt. 613\nLake Carley, DC 0');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (8138666, '054 Adeline Village Suite 607\nEast Eda, CO 07880');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (9463410, '96768 Camila Estate Suite 486\nRauhaven, VT 97641-0');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (13118262, '950 Mossie Gateway Apt. 099\nNorth Anna, FL 70013');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (13766544, '185 Bartell Hollow\nOrenland, NY 96917-5730');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (14903135, '035 Schaden Fall\nNew Ashtynshire, MD 16387');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (52218871, '112 Labadie Turnpike Apt. 186\nNorth Daphne, MO 566');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (61293116, '9322 Tyshawn Junction\nEast Jarvis, AL 82726');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (66568495, '25567 Theresa Mews Apt. 674\nJeraldchester, SD 8848');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (75265697, '532 Brendan Walks Apt. 836\nUptonshire, OR 04180');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (79304409, '7285 Kerluke Shoal Suite 500\nHermistonshire, HI 96');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (87535427, '93297 Dasia Ramp\nLake Patrick, MI 22265-3819');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (90731081, '87856 Dorothy Groves\nOmafort, LA 32186-1698');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (91141157, '9909 Nedra Circle\nAlenemouth, WA 35812-6811');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (93501177, '176 Medhurst Island Suite 993\nSouth Gail, AL 45966');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (94664445, '493 Emmy Harbors\nTessieside, DC 49384-1732');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (99188570, '752 Kenton Locks Suite 204\nSouth Everettchester, A');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (459262687, '89215 Marvin Passage\nPaytonshire, NE 70120-7565');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (502338729, '900 Price Path Apt. 585\nPort Dock, VT 09115');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (538713272, '5867 Glover Manors\nDanielmouth, FL 99642-4698');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (619919936, '45267 Kyla Ford\nChristabury, KY 26234-3623');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (641683795, '646 Esteban Radial\nNorth Tate, WI 15759-5424');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (760857385, '64890 Bednar Heights Suite 310\nLake Nikolas, OH 74');
INSERT INTO `Warehouse` (`Warehouse_ID`, `Location`) VALUES (887758958, '388 Greenfelder Prairie Suite 182\nLake Fiona, UT 2');

SELECT
    TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
FROM
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
    REFERENCED_TABLE_SCHEMA = 'shoppr';



