function [nzij_pred, nzij_current, nzij_fwrd] = dynamic_g1_nz()
% Returns the coordinates of non-zero elements in the Jacobian, in column-major order, for each lead/lag (only for endogenous)
  nzij_pred = zeros(23, 2, 'int32');
  nzij_pred(1,1)=37; nzij_pred(1,2)=6;
  nzij_pred(2,1)=36; nzij_pred(2,2)=8;
  nzij_pred(3,1)=37; nzij_pred(3,2)=8;
  nzij_pred(4,1)=37; nzij_pred(4,2)=15;
  nzij_pred(5,1)=44; nzij_pred(5,2)=15;
  nzij_pred(6,1)=43; nzij_pred(6,2)=16;
  nzij_pred(7,1)=9; nzij_pred(7,2)=21;
  nzij_pred(8,1)=10; nzij_pred(8,2)=21;
  nzij_pred(9,1)=11; nzij_pred(9,2)=21;
  nzij_pred(10,1)=12; nzij_pred(10,2)=21;
  nzij_pred(11,1)=37; nzij_pred(11,2)=21;
  nzij_pred(12,1)=37; nzij_pred(12,2)=23;
  nzij_pred(13,1)=37; nzij_pred(13,2)=25;
  nzij_pred(14,1)=45; nzij_pred(14,2)=32;
  nzij_pred(15,1)=36; nzij_pred(15,2)=33;
  nzij_pred(16,1)=37; nzij_pred(16,2)=33;
  nzij_pred(17,1)=47; nzij_pred(17,2)=33;
  nzij_pred(18,1)=46; nzij_pred(18,2)=34;
  nzij_pred(19,1)=17; nzij_pred(19,2)=40;
  nzij_pred(20,1)=16; nzij_pred(20,2)=41;
  nzij_pred(21,1)=15; nzij_pred(21,2)=42;
  nzij_pred(22,1)=37; nzij_pred(22,2)=43;
  nzij_pred(23,1)=18; nzij_pred(23,2)=48;
  nzij_current = zeros(222, 2, 'int32');
  nzij_current(1,1)=8; nzij_current(1,2)=1;
  nzij_current(2,1)=9; nzij_current(2,2)=1;
  nzij_current(3,1)=16; nzij_current(3,2)=1;
  nzij_current(4,1)=35; nzij_current(4,2)=1;
  nzij_current(5,1)=44; nzij_current(5,2)=1;
  nzij_current(6,1)=48; nzij_current(6,2)=1;
  nzij_current(7,1)=49; nzij_current(7,2)=1;
  nzij_current(8,1)=1; nzij_current(8,2)=2;
  nzij_current(9,1)=19; nzij_current(9,2)=2;
  nzij_current(10,1)=21; nzij_current(10,2)=2;
  nzij_current(11,1)=22; nzij_current(11,2)=2;
  nzij_current(12,1)=35; nzij_current(12,2)=2;
  nzij_current(13,1)=54; nzij_current(13,2)=2;
  nzij_current(14,1)=66; nzij_current(14,2)=2;
  nzij_current(15,1)=67; nzij_current(15,2)=2;
  nzij_current(16,1)=68; nzij_current(16,2)=2;
  nzij_current(17,1)=8; nzij_current(17,2)=3;
  nzij_current(18,1)=16; nzij_current(18,2)=3;
  nzij_current(19,1)=35; nzij_current(19,2)=3;
  nzij_current(20,1)=37; nzij_current(20,2)=3;
  nzij_current(21,1)=43; nzij_current(21,2)=3;
  nzij_current(22,1)=44; nzij_current(22,2)=3;
  nzij_current(23,1)=48; nzij_current(23,2)=3;
  nzij_current(24,1)=50; nzij_current(24,2)=3;
  nzij_current(25,1)=37; nzij_current(25,2)=4;
  nzij_current(26,1)=38; nzij_current(26,2)=4;
  nzij_current(27,1)=39; nzij_current(27,2)=4;
  nzij_current(28,1)=59; nzij_current(28,2)=4;
  nzij_current(29,1)=19; nzij_current(29,2)=5;
  nzij_current(30,1)=20; nzij_current(30,2)=5;
  nzij_current(31,1)=21; nzij_current(31,2)=5;
  nzij_current(32,1)=22; nzij_current(32,2)=5;
  nzij_current(33,1)=61; nzij_current(33,2)=5;
  nzij_current(34,1)=23; nzij_current(34,2)=6;
  nzij_current(35,1)=39; nzij_current(35,2)=6;
  nzij_current(36,1)=41; nzij_current(36,2)=6;
  nzij_current(37,1)=65; nzij_current(37,2)=6;
  nzij_current(38,1)=19; nzij_current(38,2)=7;
  nzij_current(39,1)=20; nzij_current(39,2)=7;
  nzij_current(40,1)=21; nzij_current(40,2)=7;
  nzij_current(41,1)=22; nzij_current(41,2)=7;
  nzij_current(42,1)=62; nzij_current(42,2)=7;
  nzij_current(43,1)=36; nzij_current(43,2)=8;
  nzij_current(44,1)=39; nzij_current(44,2)=8;
  nzij_current(45,1)=40; nzij_current(45,2)=8;
  nzij_current(46,1)=58; nzij_current(46,2)=8;
  nzij_current(47,1)=67; nzij_current(47,2)=9;
  nzij_current(48,1)=69; nzij_current(48,2)=9;
  nzij_current(49,1)=68; nzij_current(49,2)=10;
  nzij_current(50,1)=69; nzij_current(50,2)=10;
  nzij_current(51,1)=69; nzij_current(51,2)=11;
  nzij_current(52,1)=7; nzij_current(52,2)=12;
  nzij_current(53,1)=8; nzij_current(53,2)=12;
  nzij_current(54,1)=7; nzij_current(54,2)=13;
  nzij_current(55,1)=10; nzij_current(55,2)=13;
  nzij_current(56,1)=11; nzij_current(56,2)=13;
  nzij_current(57,1)=37; nzij_current(57,2)=13;
  nzij_current(58,1)=7; nzij_current(58,2)=14;
  nzij_current(59,1)=11; nzij_current(59,2)=14;
  nzij_current(60,1)=24; nzij_current(60,2)=14;
  nzij_current(61,1)=26; nzij_current(61,2)=15;
  nzij_current(62,1)=28; nzij_current(62,2)=15;
  nzij_current(63,1)=29; nzij_current(63,2)=15;
  nzij_current(64,1)=30; nzij_current(64,2)=15;
  nzij_current(65,1)=31; nzij_current(65,2)=15;
  nzij_current(66,1)=44; nzij_current(66,2)=15;
  nzij_current(67,1)=51; nzij_current(67,2)=15;
  nzij_current(68,1)=60; nzij_current(68,2)=15;
  nzij_current(69,1)=7; nzij_current(69,2)=16;
  nzij_current(70,1)=10; nzij_current(70,2)=16;
  nzij_current(71,1)=13; nzij_current(71,2)=16;
  nzij_current(72,1)=30; nzij_current(72,2)=16;
  nzij_current(73,1)=36; nzij_current(73,2)=16;
  nzij_current(74,1)=37; nzij_current(74,2)=16;
  nzij_current(75,1)=39; nzij_current(75,2)=16;
  nzij_current(76,1)=40; nzij_current(76,2)=16;
  nzij_current(77,1)=43; nzij_current(77,2)=16;
  nzij_current(78,1)=48; nzij_current(78,2)=16;
  nzij_current(79,1)=5; nzij_current(79,2)=17;
  nzij_current(80,1)=25; nzij_current(80,2)=17;
  nzij_current(81,1)=27; nzij_current(81,2)=17;
  nzij_current(82,1)=28; nzij_current(82,2)=17;
  nzij_current(83,1)=37; nzij_current(83,2)=17;
  nzij_current(84,1)=38; nzij_current(84,2)=17;
  nzij_current(85,1)=39; nzij_current(85,2)=17;
  nzij_current(86,1)=40; nzij_current(86,2)=17;
  nzij_current(87,1)=41; nzij_current(87,2)=17;
  nzij_current(88,1)=60; nzij_current(88,2)=17;
  nzij_current(89,1)=9; nzij_current(89,2)=18;
  nzij_current(90,1)=10; nzij_current(90,2)=18;
  nzij_current(91,1)=36; nzij_current(91,2)=18;
  nzij_current(92,1)=48; nzij_current(92,2)=18;
  nzij_current(93,1)=56; nzij_current(93,2)=18;
  nzij_current(94,1)=64; nzij_current(94,2)=18;
  nzij_current(95,1)=1; nzij_current(95,2)=19;
  nzij_current(96,1)=9; nzij_current(96,2)=19;
  nzij_current(97,1)=11; nzij_current(97,2)=19;
  nzij_current(98,1)=24; nzij_current(98,2)=19;
  nzij_current(99,1)=53; nzij_current(99,2)=19;
  nzij_current(100,1)=66; nzij_current(100,2)=19;
  nzij_current(101,1)=67; nzij_current(101,2)=19;
  nzij_current(102,1)=68; nzij_current(102,2)=19;
  nzij_current(103,1)=3; nzij_current(103,2)=20;
  nzij_current(104,1)=12; nzij_current(104,2)=20;
  nzij_current(105,1)=27; nzij_current(105,2)=20;
  nzij_current(106,1)=35; nzij_current(106,2)=20;
  nzij_current(107,1)=52; nzij_current(107,2)=20;
  nzij_current(108,1)=4; nzij_current(108,2)=21;
  nzij_current(109,1)=12; nzij_current(109,2)=21;
  nzij_current(110,1)=25; nzij_current(110,2)=21;
  nzij_current(111,1)=42; nzij_current(111,2)=21;
  nzij_current(112,1)=13; nzij_current(112,2)=22;
  nzij_current(113,1)=35; nzij_current(113,2)=22;
  nzij_current(114,1)=36; nzij_current(114,2)=22;
  nzij_current(115,1)=55; nzij_current(115,2)=22;
  nzij_current(116,1)=64; nzij_current(116,2)=22;
  nzij_current(117,1)=5; nzij_current(117,2)=23;
  nzij_current(118,1)=38; nzij_current(118,2)=23;
  nzij_current(119,1)=39; nzij_current(119,2)=23;
  nzij_current(120,1)=40; nzij_current(120,2)=23;
  nzij_current(121,1)=41; nzij_current(121,2)=23;
  nzij_current(122,1)=42; nzij_current(122,2)=23;
  nzij_current(123,1)=4; nzij_current(123,2)=24;
  nzij_current(124,1)=25; nzij_current(124,2)=24;
  nzij_current(125,1)=42; nzij_current(125,2)=24;
  nzij_current(126,1)=39; nzij_current(126,2)=25;
  nzij_current(127,1)=57; nzij_current(127,2)=25;
  nzij_current(128,1)=5; nzij_current(128,2)=26;
  nzij_current(129,1)=32; nzij_current(129,2)=26;
  nzij_current(130,1)=34; nzij_current(130,2)=26;
  nzij_current(131,1)=38; nzij_current(131,2)=26;
  nzij_current(132,1)=39; nzij_current(132,2)=26;
  nzij_current(133,1)=40; nzij_current(133,2)=26;
  nzij_current(134,1)=33; nzij_current(134,2)=27;
  nzij_current(135,1)=32; nzij_current(135,2)=28;
  nzij_current(136,1)=33; nzij_current(136,2)=28;
  nzij_current(137,1)=38; nzij_current(137,2)=28;
  nzij_current(138,1)=63; nzij_current(138,2)=28;
  nzij_current(139,1)=31; nzij_current(139,2)=29;
  nzij_current(140,1)=32; nzij_current(140,2)=29;
  nzij_current(141,1)=34; nzij_current(141,2)=29;
  nzij_current(142,1)=28; nzij_current(142,2)=30;
  nzij_current(143,1)=32; nzij_current(143,2)=30;
  nzij_current(144,1)=34; nzij_current(144,2)=30;
  nzij_current(145,1)=30; nzij_current(145,2)=31;
  nzij_current(146,1)=32; nzij_current(146,2)=31;
  nzij_current(147,1)=34; nzij_current(147,2)=31;
  nzij_current(148,1)=7; nzij_current(148,2)=32;
  nzij_current(149,1)=9; nzij_current(149,2)=32;
  nzij_current(150,1)=45; nzij_current(150,2)=32;
  nzij_current(151,1)=30; nzij_current(151,2)=33;
  nzij_current(152,1)=47; nzij_current(152,2)=33;
  nzij_current(153,1)=13; nzij_current(153,2)=34;
  nzij_current(154,1)=46; nzij_current(154,2)=34;
  nzij_current(155,1)=3; nzij_current(155,2)=35;
  nzij_current(156,1)=27; nzij_current(156,2)=35;
  nzij_current(157,1)=35; nzij_current(157,2)=35;
  nzij_current(158,1)=6; nzij_current(158,2)=36;
  nzij_current(159,1)=32; nzij_current(159,2)=36;
  nzij_current(160,1)=33; nzij_current(160,2)=36;
  nzij_current(161,1)=4; nzij_current(161,2)=37;
  nzij_current(162,1)=35; nzij_current(162,2)=37;
  nzij_current(163,1)=48; nzij_current(163,2)=37;
  nzij_current(164,1)=5; nzij_current(164,2)=38;
  nzij_current(165,1)=35; nzij_current(165,2)=38;
  nzij_current(166,1)=48; nzij_current(166,2)=38;
  nzij_current(167,1)=48; nzij_current(167,2)=39;
  nzij_current(168,1)=14; nzij_current(168,2)=40;
  nzij_current(169,1)=17; nzij_current(169,2)=40;
  nzij_current(170,1)=16; nzij_current(170,2)=41;
  nzij_current(171,1)=21; nzij_current(171,2)=41;
  nzij_current(172,1)=14; nzij_current(172,2)=42;
  nzij_current(173,1)=15; nzij_current(173,2)=42;
  nzij_current(174,1)=17; nzij_current(174,2)=43;
  nzij_current(175,1)=23; nzij_current(175,2)=43;
  nzij_current(176,1)=29; nzij_current(176,2)=43;
  nzij_current(177,1)=2; nzij_current(177,2)=44;
  nzij_current(178,1)=8; nzij_current(178,2)=44;
  nzij_current(179,1)=25; nzij_current(179,2)=44;
  nzij_current(180,1)=26; nzij_current(180,2)=44;
  nzij_current(181,1)=28; nzij_current(181,2)=44;
  nzij_current(182,1)=29; nzij_current(182,2)=44;
  nzij_current(183,1)=30; nzij_current(183,2)=44;
  nzij_current(184,1)=31; nzij_current(184,2)=44;
  nzij_current(185,1)=1; nzij_current(185,2)=45;
  nzij_current(186,1)=21; nzij_current(186,2)=45;
  nzij_current(187,1)=22; nzij_current(187,2)=45;
  nzij_current(188,1)=20; nzij_current(188,2)=46;
  nzij_current(189,1)=21; nzij_current(189,2)=46;
  nzij_current(190,1)=22; nzij_current(190,2)=46;
  nzij_current(191,1)=1; nzij_current(191,2)=47;
  nzij_current(192,1)=2; nzij_current(192,2)=47;
  nzij_current(193,1)=21; nzij_current(193,2)=47;
  nzij_current(194,1)=22; nzij_current(194,2)=47;
  nzij_current(195,1)=23; nzij_current(195,2)=47;
  nzij_current(196,1)=18; nzij_current(196,2)=48;
  nzij_current(197,1)=29; nzij_current(197,2)=49;
  nzij_current(198,1)=32; nzij_current(198,2)=49;
  nzij_current(199,1)=34; nzij_current(199,2)=49;
  nzij_current(200,1)=32; nzij_current(200,2)=50;
  nzij_current(201,1)=34; nzij_current(201,2)=50;
  nzij_current(202,1)=41; nzij_current(202,2)=50;
  nzij_current(203,1)=43; nzij_current(203,2)=51;
  nzij_current(204,1)=44; nzij_current(204,2)=51;
  nzij_current(205,1)=66; nzij_current(205,2)=52;
  nzij_current(206,1)=49; nzij_current(206,2)=53;
  nzij_current(207,1)=50; nzij_current(207,2)=54;
  nzij_current(208,1)=51; nzij_current(208,2)=55;
  nzij_current(209,1)=52; nzij_current(209,2)=56;
  nzij_current(210,1)=53; nzij_current(210,2)=57;
  nzij_current(211,1)=54; nzij_current(211,2)=58;
  nzij_current(212,1)=55; nzij_current(212,2)=59;
  nzij_current(213,1)=56; nzij_current(213,2)=60;
  nzij_current(214,1)=57; nzij_current(214,2)=61;
  nzij_current(215,1)=58; nzij_current(215,2)=62;
  nzij_current(216,1)=59; nzij_current(216,2)=63;
  nzij_current(217,1)=60; nzij_current(217,2)=64;
  nzij_current(218,1)=61; nzij_current(218,2)=65;
  nzij_current(219,1)=62; nzij_current(219,2)=66;
  nzij_current(220,1)=63; nzij_current(220,2)=67;
  nzij_current(221,1)=64; nzij_current(221,2)=68;
  nzij_current(222,1)=65; nzij_current(222,2)=69;
  nzij_fwrd = zeros(28, 2, 'int32');
  nzij_fwrd(1,1)=8; nzij_fwrd(1,2)=1;
  nzij_fwrd(2,1)=8; nzij_fwrd(2,2)=3;
  nzij_fwrd(3,1)=21; nzij_fwrd(3,2)=3;
  nzij_fwrd(4,1)=22; nzij_fwrd(4,2)=3;
  nzij_fwrd(5,1)=23; nzij_fwrd(5,2)=3;
  nzij_fwrd(6,1)=26; nzij_fwrd(6,2)=3;
  nzij_fwrd(7,1)=28; nzij_fwrd(7,2)=3;
  nzij_fwrd(8,1)=29; nzij_fwrd(8,2)=3;
  nzij_fwrd(9,1)=30; nzij_fwrd(9,2)=3;
  nzij_fwrd(10,1)=31; nzij_fwrd(10,2)=3;
  nzij_fwrd(11,1)=60; nzij_fwrd(11,2)=3;
  nzij_fwrd(12,1)=67; nzij_fwrd(12,2)=9;
  nzij_fwrd(13,1)=68; nzij_fwrd(13,2)=10;
  nzij_fwrd(14,1)=25; nzij_fwrd(14,2)=13;
  nzij_fwrd(15,1)=28; nzij_fwrd(15,2)=13;
  nzij_fwrd(16,1)=60; nzij_fwrd(16,2)=13;
  nzij_fwrd(17,1)=30; nzij_fwrd(17,2)=16;
  nzij_fwrd(18,1)=25; nzij_fwrd(18,2)=17;
  nzij_fwrd(19,1)=28; nzij_fwrd(19,2)=17;
  nzij_fwrd(20,1)=60; nzij_fwrd(20,2)=17;
  nzij_fwrd(21,1)=28; nzij_fwrd(21,2)=27;
  nzij_fwrd(22,1)=29; nzij_fwrd(22,2)=27;
  nzij_fwrd(23,1)=30; nzij_fwrd(23,2)=27;
  nzij_fwrd(24,1)=31; nzij_fwrd(24,2)=27;
  nzij_fwrd(25,1)=2; nzij_fwrd(25,2)=47;
  nzij_fwrd(26,1)=21; nzij_fwrd(26,2)=47;
  nzij_fwrd(27,1)=22; nzij_fwrd(27,2)=47;
  nzij_fwrd(28,1)=23; nzij_fwrd(28,2)=47;
end
