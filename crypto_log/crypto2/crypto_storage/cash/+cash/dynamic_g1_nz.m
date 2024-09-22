function [nzij_pred, nzij_current, nzij_fwrd] = dynamic_g1_nz()
% Returns the coordinates of non-zero elements in the Jacobian, in column-major order, for each lead/lag (only for endogenous)
  nzij_pred = zeros(20, 2, 'int32');
  nzij_pred(1,1)=37; nzij_pred(1,2)=5;
  nzij_pred(2,1)=44; nzij_pred(2,2)=5;
  nzij_pred(3,1)=43; nzij_pred(3,2)=6;
  nzij_pred(4,1)=9; nzij_pred(4,2)=13;
  nzij_pred(5,1)=10; nzij_pred(5,2)=13;
  nzij_pred(6,1)=11; nzij_pred(6,2)=13;
  nzij_pred(7,1)=12; nzij_pred(7,2)=13;
  nzij_pred(8,1)=37; nzij_pred(8,2)=13;
  nzij_pred(9,1)=37; nzij_pred(9,2)=16;
  nzij_pred(10,1)=37; nzij_pred(10,2)=18;
  nzij_pred(11,1)=36; nzij_pred(11,2)=19;
  nzij_pred(12,1)=37; nzij_pred(12,2)=19;
  nzij_pred(13,1)=45; nzij_pred(13,2)=26;
  nzij_pred(14,1)=36; nzij_pred(14,2)=27;
  nzij_pred(15,1)=37; nzij_pred(15,2)=27;
  nzij_pred(16,1)=47; nzij_pred(16,2)=27;
  nzij_pred(17,1)=46; nzij_pred(17,2)=28;
  nzij_pred(18,1)=17; nzij_pred(18,2)=34;
  nzij_pred(19,1)=15; nzij_pred(19,2)=36;
  nzij_pred(20,1)=18; nzij_pred(20,2)=45;
  nzij_current = zeros(183, 2, 'int32');
  nzij_current(1,1)=7; nzij_current(1,2)=1;
  nzij_current(2,1)=8; nzij_current(2,2)=1;
  nzij_current(3,1)=8; nzij_current(3,2)=2;
  nzij_current(4,1)=35; nzij_current(4,2)=2;
  nzij_current(5,1)=37; nzij_current(5,2)=2;
  nzij_current(6,1)=43; nzij_current(6,2)=2;
  nzij_current(7,1)=44; nzij_current(7,2)=2;
  nzij_current(8,1)=48; nzij_current(8,2)=2;
  nzij_current(9,1)=50; nzij_current(9,2)=2;
  nzij_current(10,1)=7; nzij_current(10,2)=3;
  nzij_current(11,1)=10; nzij_current(11,2)=3;
  nzij_current(12,1)=11; nzij_current(12,2)=3;
  nzij_current(13,1)=37; nzij_current(13,2)=3;
  nzij_current(14,1)=7; nzij_current(14,2)=4;
  nzij_current(15,1)=11; nzij_current(15,2)=4;
  nzij_current(16,1)=24; nzij_current(16,2)=4;
  nzij_current(17,1)=26; nzij_current(17,2)=5;
  nzij_current(18,1)=28; nzij_current(18,2)=5;
  nzij_current(19,1)=29; nzij_current(19,2)=5;
  nzij_current(20,1)=30; nzij_current(20,2)=5;
  nzij_current(21,1)=31; nzij_current(21,2)=5;
  nzij_current(22,1)=44; nzij_current(22,2)=5;
  nzij_current(23,1)=51; nzij_current(23,2)=5;
  nzij_current(24,1)=60; nzij_current(24,2)=5;
  nzij_current(25,1)=7; nzij_current(25,2)=6;
  nzij_current(26,1)=10; nzij_current(26,2)=6;
  nzij_current(27,1)=13; nzij_current(27,2)=6;
  nzij_current(28,1)=30; nzij_current(28,2)=6;
  nzij_current(29,1)=36; nzij_current(29,2)=6;
  nzij_current(30,1)=37; nzij_current(30,2)=6;
  nzij_current(31,1)=39; nzij_current(31,2)=6;
  nzij_current(32,1)=40; nzij_current(32,2)=6;
  nzij_current(33,1)=43; nzij_current(33,2)=6;
  nzij_current(34,1)=48; nzij_current(34,2)=6;
  nzij_current(35,1)=5; nzij_current(35,2)=7;
  nzij_current(36,1)=25; nzij_current(36,2)=7;
  nzij_current(37,1)=27; nzij_current(37,2)=7;
  nzij_current(38,1)=28; nzij_current(38,2)=7;
  nzij_current(39,1)=37; nzij_current(39,2)=7;
  nzij_current(40,1)=38; nzij_current(40,2)=7;
  nzij_current(41,1)=39; nzij_current(41,2)=7;
  nzij_current(42,1)=40; nzij_current(42,2)=7;
  nzij_current(43,1)=60; nzij_current(43,2)=7;
  nzij_current(44,1)=8; nzij_current(44,2)=8;
  nzij_current(45,1)=9; nzij_current(45,2)=8;
  nzij_current(46,1)=35; nzij_current(46,2)=8;
  nzij_current(47,1)=44; nzij_current(47,2)=8;
  nzij_current(48,1)=48; nzij_current(48,2)=8;
  nzij_current(49,1)=49; nzij_current(49,2)=8;
  nzij_current(50,1)=9; nzij_current(50,2)=9;
  nzij_current(51,1)=10; nzij_current(51,2)=9;
  nzij_current(52,1)=36; nzij_current(52,2)=9;
  nzij_current(53,1)=48; nzij_current(53,2)=9;
  nzij_current(54,1)=56; nzij_current(54,2)=9;
  nzij_current(55,1)=63; nzij_current(55,2)=9;
  nzij_current(56,1)=1; nzij_current(56,2)=10;
  nzij_current(57,1)=9; nzij_current(57,2)=10;
  nzij_current(58,1)=11; nzij_current(58,2)=10;
  nzij_current(59,1)=24; nzij_current(59,2)=10;
  nzij_current(60,1)=53; nzij_current(60,2)=10;
  nzij_current(61,1)=1; nzij_current(61,2)=11;
  nzij_current(62,1)=19; nzij_current(62,2)=11;
  nzij_current(63,1)=22; nzij_current(63,2)=11;
  nzij_current(64,1)=35; nzij_current(64,2)=11;
  nzij_current(65,1)=54; nzij_current(65,2)=11;
  nzij_current(66,1)=3; nzij_current(66,2)=12;
  nzij_current(67,1)=12; nzij_current(67,2)=12;
  nzij_current(68,1)=27; nzij_current(68,2)=12;
  nzij_current(69,1)=35; nzij_current(69,2)=12;
  nzij_current(70,1)=52; nzij_current(70,2)=12;
  nzij_current(71,1)=4; nzij_current(71,2)=13;
  nzij_current(72,1)=12; nzij_current(72,2)=13;
  nzij_current(73,1)=25; nzij_current(73,2)=13;
  nzij_current(74,1)=42; nzij_current(74,2)=13;
  nzij_current(75,1)=13; nzij_current(75,2)=14;
  nzij_current(76,1)=35; nzij_current(76,2)=14;
  nzij_current(77,1)=36; nzij_current(77,2)=14;
  nzij_current(78,1)=55; nzij_current(78,2)=14;
  nzij_current(79,1)=63; nzij_current(79,2)=14;
  nzij_current(80,1)=37; nzij_current(80,2)=15;
  nzij_current(81,1)=38; nzij_current(81,2)=15;
  nzij_current(82,1)=39; nzij_current(82,2)=15;
  nzij_current(83,1)=59; nzij_current(83,2)=15;
  nzij_current(84,1)=5; nzij_current(84,2)=16;
  nzij_current(85,1)=38; nzij_current(85,2)=16;
  nzij_current(86,1)=39; nzij_current(86,2)=16;
  nzij_current(87,1)=40; nzij_current(87,2)=16;
  nzij_current(88,1)=42; nzij_current(88,2)=16;
  nzij_current(89,1)=4; nzij_current(89,2)=17;
  nzij_current(90,1)=25; nzij_current(90,2)=17;
  nzij_current(91,1)=42; nzij_current(91,2)=17;
  nzij_current(92,1)=39; nzij_current(92,2)=18;
  nzij_current(93,1)=57; nzij_current(93,2)=18;
  nzij_current(94,1)=36; nzij_current(94,2)=19;
  nzij_current(95,1)=39; nzij_current(95,2)=19;
  nzij_current(96,1)=40; nzij_current(96,2)=19;
  nzij_current(97,1)=58; nzij_current(97,2)=19;
  nzij_current(98,1)=5; nzij_current(98,2)=20;
  nzij_current(99,1)=32; nzij_current(99,2)=20;
  nzij_current(100,1)=34; nzij_current(100,2)=20;
  nzij_current(101,1)=38; nzij_current(101,2)=20;
  nzij_current(102,1)=39; nzij_current(102,2)=20;
  nzij_current(103,1)=40; nzij_current(103,2)=20;
  nzij_current(104,1)=33; nzij_current(104,2)=21;
  nzij_current(105,1)=32; nzij_current(105,2)=22;
  nzij_current(106,1)=33; nzij_current(106,2)=22;
  nzij_current(107,1)=38; nzij_current(107,2)=22;
  nzij_current(108,1)=62; nzij_current(108,2)=22;
  nzij_current(109,1)=31; nzij_current(109,2)=23;
  nzij_current(110,1)=32; nzij_current(110,2)=23;
  nzij_current(111,1)=34; nzij_current(111,2)=23;
  nzij_current(112,1)=28; nzij_current(112,2)=24;
  nzij_current(113,1)=32; nzij_current(113,2)=24;
  nzij_current(114,1)=34; nzij_current(114,2)=24;
  nzij_current(115,1)=30; nzij_current(115,2)=25;
  nzij_current(116,1)=32; nzij_current(116,2)=25;
  nzij_current(117,1)=34; nzij_current(117,2)=25;
  nzij_current(118,1)=7; nzij_current(118,2)=26;
  nzij_current(119,1)=9; nzij_current(119,2)=26;
  nzij_current(120,1)=45; nzij_current(120,2)=26;
  nzij_current(121,1)=30; nzij_current(121,2)=27;
  nzij_current(122,1)=47; nzij_current(122,2)=27;
  nzij_current(123,1)=13; nzij_current(123,2)=28;
  nzij_current(124,1)=46; nzij_current(124,2)=28;
  nzij_current(125,1)=3; nzij_current(125,2)=29;
  nzij_current(126,1)=27; nzij_current(126,2)=29;
  nzij_current(127,1)=35; nzij_current(127,2)=29;
  nzij_current(128,1)=6; nzij_current(128,2)=30;
  nzij_current(129,1)=32; nzij_current(129,2)=30;
  nzij_current(130,1)=33; nzij_current(130,2)=30;
  nzij_current(131,1)=4; nzij_current(131,2)=31;
  nzij_current(132,1)=35; nzij_current(132,2)=31;
  nzij_current(133,1)=48; nzij_current(133,2)=31;
  nzij_current(134,1)=5; nzij_current(134,2)=32;
  nzij_current(135,1)=35; nzij_current(135,2)=32;
  nzij_current(136,1)=48; nzij_current(136,2)=32;
  nzij_current(137,1)=48; nzij_current(137,2)=33;
  nzij_current(138,1)=14; nzij_current(138,2)=34;
  nzij_current(139,1)=17; nzij_current(139,2)=34;
  nzij_current(140,1)=16; nzij_current(140,2)=35;
  nzij_current(141,1)=14; nzij_current(141,2)=36;
  nzij_current(142,1)=15; nzij_current(142,2)=36;
  nzij_current(143,1)=23; nzij_current(143,2)=37;
  nzij_current(144,1)=21; nzij_current(144,2)=38;
  nzij_current(145,1)=19; nzij_current(145,2)=39;
  nzij_current(146,1)=22; nzij_current(146,2)=39;
  nzij_current(147,1)=61; nzij_current(147,2)=39;
  nzij_current(148,1)=17; nzij_current(148,2)=40;
  nzij_current(149,1)=29; nzij_current(149,2)=40;
  nzij_current(150,1)=2; nzij_current(150,2)=41;
  nzij_current(151,1)=8; nzij_current(151,2)=41;
  nzij_current(152,1)=25; nzij_current(152,2)=41;
  nzij_current(153,1)=26; nzij_current(153,2)=41;
  nzij_current(154,1)=28; nzij_current(154,2)=41;
  nzij_current(155,1)=29; nzij_current(155,2)=41;
  nzij_current(156,1)=30; nzij_current(156,2)=41;
  nzij_current(157,1)=31; nzij_current(157,2)=41;
  nzij_current(158,1)=1; nzij_current(158,2)=42;
  nzij_current(159,1)=22; nzij_current(159,2)=42;
  nzij_current(160,1)=20; nzij_current(160,2)=43;
  nzij_current(161,1)=1; nzij_current(161,2)=44;
  nzij_current(162,1)=2; nzij_current(162,2)=44;
  nzij_current(163,1)=22; nzij_current(163,2)=44;
  nzij_current(164,1)=18; nzij_current(164,2)=45;
  nzij_current(165,1)=29; nzij_current(165,2)=46;
  nzij_current(166,1)=41; nzij_current(166,2)=47;
  nzij_current(167,1)=43; nzij_current(167,2)=48;
  nzij_current(168,1)=44; nzij_current(168,2)=48;
  nzij_current(169,1)=49; nzij_current(169,2)=49;
  nzij_current(170,1)=50; nzij_current(170,2)=50;
  nzij_current(171,1)=51; nzij_current(171,2)=51;
  nzij_current(172,1)=52; nzij_current(172,2)=52;
  nzij_current(173,1)=53; nzij_current(173,2)=53;
  nzij_current(174,1)=54; nzij_current(174,2)=54;
  nzij_current(175,1)=55; nzij_current(175,2)=55;
  nzij_current(176,1)=56; nzij_current(176,2)=56;
  nzij_current(177,1)=57; nzij_current(177,2)=57;
  nzij_current(178,1)=58; nzij_current(178,2)=58;
  nzij_current(179,1)=59; nzij_current(179,2)=59;
  nzij_current(180,1)=60; nzij_current(180,2)=60;
  nzij_current(181,1)=61; nzij_current(181,2)=61;
  nzij_current(182,1)=62; nzij_current(182,2)=62;
  nzij_current(183,1)=63; nzij_current(183,2)=63;
  nzij_fwrd = zeros(22, 2, 'int32');
  nzij_fwrd(1,1)=8; nzij_fwrd(1,2)=2;
  nzij_fwrd(2,1)=22; nzij_fwrd(2,2)=2;
  nzij_fwrd(3,1)=26; nzij_fwrd(3,2)=2;
  nzij_fwrd(4,1)=28; nzij_fwrd(4,2)=2;
  nzij_fwrd(5,1)=29; nzij_fwrd(5,2)=2;
  nzij_fwrd(6,1)=30; nzij_fwrd(6,2)=2;
  nzij_fwrd(7,1)=31; nzij_fwrd(7,2)=2;
  nzij_fwrd(8,1)=60; nzij_fwrd(8,2)=2;
  nzij_fwrd(9,1)=25; nzij_fwrd(9,2)=3;
  nzij_fwrd(10,1)=28; nzij_fwrd(10,2)=3;
  nzij_fwrd(11,1)=60; nzij_fwrd(11,2)=3;
  nzij_fwrd(12,1)=30; nzij_fwrd(12,2)=6;
  nzij_fwrd(13,1)=25; nzij_fwrd(13,2)=7;
  nzij_fwrd(14,1)=28; nzij_fwrd(14,2)=7;
  nzij_fwrd(15,1)=60; nzij_fwrd(15,2)=7;
  nzij_fwrd(16,1)=8; nzij_fwrd(16,2)=8;
  nzij_fwrd(17,1)=28; nzij_fwrd(17,2)=21;
  nzij_fwrd(18,1)=29; nzij_fwrd(18,2)=21;
  nzij_fwrd(19,1)=30; nzij_fwrd(19,2)=21;
  nzij_fwrd(20,1)=31; nzij_fwrd(20,2)=21;
  nzij_fwrd(21,1)=2; nzij_fwrd(21,2)=44;
  nzij_fwrd(22,1)=22; nzij_fwrd(22,2)=44;
end
