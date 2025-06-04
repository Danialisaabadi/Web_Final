-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2025 at 02:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`) VALUES
(157, 2, 'RYjQ0xyRx6ZL19giGHZcZ4iD8RXFtRveGQTfOGdOLawW5BHigr'),
(158, 2, 'eg5UQV9o5zrJF1bCZuImAr99 0Vlk12C5fk21F7UinjLUabzGE'),
(159, 24, 'SaVjKBlfjkKRmpXPfeN63eHXgSllgVHAtSztFOynCLAYIK4Wfo'),
(160, 14, '9I9eE WVLPLvmZhDRhzd16sGwiuSJBvIitjNieZf2csNWpuzF9'),
(161, 12, 'miMuQgzafMfRT5OWG8Dy4qKVjRHyk0cLKe08tT9iOORBq0eXEi'),
(162, 6, 'nAMXiZGOTtU Cu2mtk4KOhP38 AYtNIQDSY4nE4 PaAp4xHOpN'),
(163, 6, 'h4e2J4Qw2uuttKNYqUlsKDMYUWMq0hU3QjgnsHUY0YzThWdZor'),
(164, 7, ' syzoWTT7TlyDH7hwGsijoZ O2b4kfj2am9n pwnNaSDev3015'),
(165, 6, 'vNCxKHKZonHhwIqBYcIViWW0CM0Wxkt3UcCMYntP0jUQnQ0kBs'),
(166, 21, 'mxBX0uTq0ufsabVqM56eIaI2lGZcaQJOxaDuK3rLcEIAvp8cF5'),
(167, 3, 'M2ipSyTtYc5nJApsMyOcjLsXsQiI bqN7dY07bWbRS69VW3MbA'),
(168, 19, 'omkQ8sIIrCTbeQ4LjrdpFMMOIzWmVdIzoTu9SNdLWck fH93Kl'),
(169, 24, 'XMJDOacklFJmH9YRG2HqdmEK hw MBrCDImdHAvD A84YJ1o5x'),
(170, 10, 'EygjhMJybTfo1OaIebR4z91u58atr3DF7FlP5mqEjEBfLleDZ2'),
(171, 6, 'f2Vvn8ByNuBG9la5sczU1 x5WJ24UDPGkcW5BNARvuCcOyHP9m'),
(172, 14, 'rNvbmn2YjQUowM pwF7lJjo6KJNUzRf5uDZYEBiJjX75xtRsf4'),
(173, 1, 'eaK9a1dzdo6Vg0qAUWch8MNnzIoiZB62U6clKuxfLjiAjsbqe '),
(174, 10, 'IvdENgn V4zyulxFpGzQWI0xRfkx0uUbZTXSyag9lwMyozBfLK'),
(175, 11, 'NmmnnO1KEcKvKiHUu9x3OGgBn3TPU8IIG6PuGjkgirBwFW8EkJ'),
(176, 11, 'EghObhmPbEri EyrqMIrLVjO6j4Q2utI2RkZgUHm4ERgnb43IS'),
(177, 18, 'RpkNEKV1AdLmq7vggPeO97NxF7LrzehWrOYFKHzE6uU89N72EU'),
(178, 14, '1Ck4QB1ydwOhxVd8AnnpWqKJGD4XB00awIStHziWrzP21IKw9v'),
(179, 16, 'KUnBGHtAxxZlqnsvx5SGUQLMOcoAy1LqeP11AJKfYpf6QJlt7K'),
(180, 11, '25cWAXiHwpL3P2qXeCxkss6pLrygcJ5EJgTfFPkJVTUWRRQisi'),
(181, 22, 'FgNGaKdOL0522AVe P6o5XahRPQXXOdAegus68FkYuDYzpZgoF'),
(182, 13, 'KpWHE9BHqSFDbBIAXIsXo0KFKmj1jSZIw0A7Ln2wk5i65oS9cE'),
(183, 7, 'tG8lkjQnHExkFEyaS3Eer0earQKU0RxZYPgbp7035d92t2AF4S'),
(184, 11, '2itSEh9oMeKNEnXK0FpdrdpnyGKDmWjBjD2APvx4SItjlm1Kdx'),
(185, 14, 'Qt7HLH72ZlOIOpNtu131zD55TwgD239oaIXIg8v19eQ JooiDE'),
(186, 11, 'wBJlkLirmTEAfHYgGRc3jTcfqW1fNVFIwviDwKsUXcbHpEevPb'),
(187, 6, 'zMtd8UPBiOSQl6tkOZIj UxGPh5iPDvNPJ2Jc3XPq55wN7BWZ4'),
(188, 23, 'NrDGRCbjPPlolSFE2AQwJgkG1SOYRH7yBM75GucmRwmbcSk1zs'),
(189, 20, '9jUHbdAiE1tZXNc1EMb0zNWlT3QeidzLq1Lu94ef JFdL64hpw'),
(190, 21, 'UJMQPtxNxT7L6mMaz8qP9wyj4GrIe4ReNhbk6RA1UwwCDTwgb '),
(191, 24, 'GGmgoigyGt59UnIWYUkRtHsilpecYTKitFoeqVnKSbFrPPgM5j'),
(192, 20, 'gg5jEeKi0b48qopr1HIaVGmS8omnmr7bSljJQsKRS0s7qZDQjH'),
(193, 10, 'j3SWAbXV5i3FhbWSuDZ24wj6IT6xXpsMnrlNlG3RWyo bll8ql'),
(194, 9, '3VcP Am0LRgIVN XOfqI2BpqPcBvtR rzWw7R6C ekGBmDDuVX'),
(195, 23, 'Ni1lptdDnQrQNZ3GIjBHiYGlh9o7En8rxRU0rMpCeuwX5bE6T4'),
(196, 22, 'PFkja7RHDhvj7QVInu5hQlgD6eU5G5ebvgnP7ADvJ6IteIM7rB'),
(197, 1, 'gCZaNyPWksh9v1I2tXRf6PxVYySfhwPZqx5umUkoMLaNMMJzPu'),
(198, 20, 'SBkGqJyU4usoGaXDzqdcdDXFxxIo69m8AHpOAE467E168z7OQT'),
(199, 17, 'B3dP J6mz25gRKssYNfVDCXf4CR9rI2V3Z95 bFL7kwdHyBTbR'),
(200, 21, 'wdNCR9hyDA1DUskYbm20nLjbhmOV3Z5uCMZPYclfm5obBwc8bl'),
(201, 9, 'qJHJapUP6iJnet6qO7zApLqMnjn99igFM6JICMaOBXiJ5AlQOB'),
(202, 21, 'FW6SiLEdt0yTxN HKxRueEiQlDvgKMc9w8No4rLlaQgCPBO2cx'),
(203, 21, 'kFdkhbey8qIVxUefl6y3Zw1UBL8t3i0lF7ePYwCP5Pk71rfPWi'),
(204, 17, 'FrkWypH1fiRMAChRKZ55r2tVp42GLf8rdRuqfPvIP09AEM4o7N'),
(205, 2, 'BcSlW9 97Hd7xJCAsJnm7tbjVAvnclocQUXE9JNYoJvStCIotE'),
(206, 3, 'aL86CY1JoYlYlzuROMCwPqpoI04Gg0P3IYmJtHNoLXKyh5sWgi'),
(207, 18, '5geMY9KNuK1rUNdnOVpnueCuDbwvy29D5tHdFsWc9xgPEQzsSp'),
(208, 12, 'saJY2rhtaOkbva6cxSmkznqhKAPzshWUe4csbmbgMpe75VmHwI'),
(209, 8, 'Re2daEdNkuam8MZN5G5tHwdabCe3If5F2PmkBmxB9jJDiBgsdo'),
(210, 1, 'j0k1XAKa7nTZXGrlXGZm A3WiCMZ067BlqP4M5g4iVTUe75u07'),
(211, 21, 'qjSumVhISEUbCPYjriTqgQVjqA5Q5O4Nwdjh4InTkBRc0fho77'),
(212, 11, 'fF3cBND6fdjWynj8RI1QVLulyW76pHjSAgcSJk89TiNchbRTaG'),
(213, 22, 'DHltGPN5cmJoWvj9wnA6jGMugbX0vn94dtuk3VuhxIpFq6lDlv'),
(214, 4, ' MeGN3xvSFi2G NpBLPUpVgbGP4bvmaIsKcTSdjvrIgkeFv8bt'),
(215, 9, 'aiEkDEJey3uEONhz4R12s4pdh0e2AgC0h9y4xSDYaUQqVPkfG3'),
(216, 19, 'vEUeoo701iOwqEdGZGQ9gK mohS1jFeF J0BMAVid9o4S7BWdW'),
(217, 12, 'blnvY0YoHAS bkCVYUDkI9dTOw5L07VWR9HKBl2Kn0qFmZgHXO'),
(218, 18, 'L721MXHXYT l0PO86utm8hCVYtZUQbYqtLwnMkdllE1DynU9HU'),
(219, 15, '0wmWck4eRAjgrxL5N7CLLTw35RZ7J3yY5O8PQ2HxX14W 01ZDN'),
(220, 5, 'exYCBP26I5Q4PcMEdOqvdVY8RdpTzdpxt8 v85QvLO51fJ1hAd'),
(221, 13, 'PVVwc3cswc5ctJJRxVPMBxpk5oZtR4YFnMpfaZEGIaRBJeYKQN'),
(222, 3, 'wLK4EEYdamiNQPqSPCtCue J9bJc2OHqFLVzrw3DhEQ9QHQs4i'),
(223, 11, 'CjcKDke2cVnG3oflnwoIRxZs0ENGlkW QBCDQ2launD6F0cMaB'),
(224, 5, 'xaWyvxSkPX7uNjwVSYBDWdUhEJAoqCS5wCU56MvK2DBYyOKHf1'),
(225, 9, 'BGAPO6NWsU9sKbcRlWJvieCmAo9TCwbrXwfzKekXckMqmMb95k'),
(226, 5, 'DR8w0feawAveY8i9GRmXgNqC DSgYSWh6mwQF6XLAIdcXyShTs'),
(227, 23, ' OtOzl7oUlLMzv8hJSbIn f7Vkq aFJpOJS2mTMFvTUmhK7vrR'),
(228, 6, 'C2Zgm0ArRZ0O0PV3hY0mjBqcy6XBiNGzXrMOdOHT1ot7caHyEU'),
(229, 15, '1RpKKvcSwBweWFnXk8a2Mews2Hl1Op0fQ1Jvr1t0IuDUeBxnGO'),
(230, 23, 'RJ H7ewWepjrIbogWBYx1zej2LXNCnmLbvaJ5Y8LgqCTaIqxU2'),
(231, 23, 'Q6BZBQD5waQsCCxWDBBXPsmbZ3byDhbmARHlCDn0TRU4HRFVRE'),
(232, 1, 'FJLud1b1NwQv70UuUxZfwmcpo5W6Ogf7ba8ufrAvYkxMGat35q'),
(233, 1, 'T4Bnq5eV BSpNg6XPpAdDu8DuuCe9GvhZsnpjvSB6PFpXQfYj9'),
(234, 15, 'OKKromPSZKU1GRai62N0rcYTcZ26BVb8iskD8wLmLgU7U3cBPs'),
(235, 13, 'uOx9c64YuPEcVty6rVeRxtyp nGqMqpF98Ie6dJlGms1ggdpjF'),
(236, 4, 'tbJh rfq3kJCq4iqRhIlN0sT2vZFwfdAqtcWA7MDj5FX1XO2J0'),
(237, 5, 'OYBy gWAK2BEcpqiEL4pYMCJ6d dnTjXAYqM5u2EjGm23oBYio'),
(238, 13, 'q3zqp lnvOrxyYjMvl4XmE8UpP7I GdaI5lGeuBZhhWUW2UpO7'),
(239, 16, 'jDnVHGvtZOEYNQlAZQkp9BkKP2yYGxe8MNts2jqSTp49D328kL'),
(240, 22, 'ZxYutCBe1N1y7 dEjTF7OZvaQgNtfRPm7rxuPgbsoiA6BcLI2Z'),
(241, 23, 'b3iNsKoX52Z3XXuHjLxAwTRJH6LLFxzZLnCrGmlxP5gDlocgon'),
(242, 2, 'YlxEkXjMH72zuWn7PBgdyGoYIwpkr0Q9AikHzqPSCa6oKcLejC'),
(243, 5, 'keakSw8pB7RND8UGoWSwnzwSQC KTyLmRCEEACGkyhEgiZIPt4'),
(244, 20, 'iHGWK7tcu7FBhKCQEY LZZ2HtwIE1VRZpTR9eudTjpnqDQa4ww'),
(245, 5, 'EX5b0KfPmdHUBO2Rt b4f7lz0zYWyk47MoUha9wu16iMmDeBt0'),
(246, 19, '8LH5koFsPWY0p0V4sqfTsyZDGjBuPqQadqGwhZHMJ zFqUoMMI'),
(247, 4, 'wTUZKyjPvOMuOXPi10NhFZNk9G9pyQ5JMVvxeyxXsSfOqG05Xy'),
(248, 14, 's1eteMTBD6QQHVBOdZECGCczAmAVaxPSyslr4Zel9PniSMQsuf'),
(249, 17, 'HcfSXBT203XU7bimhBwWKcGhpp IBkXhLmaaSwGelgSYPRG5Us'),
(250, 15, 'GiX5ykDCL5M0D02ijFgNjdOHiikvdq51E64X98XsfXAHaX1M 6'),
(251, 9, 'uYTVB8JmYeTQ872uKIyUj20E1gTMZBeKs1uitJWCObTEoAtf8z'),
(252, 15, 'rTpUpomMctsHOBISNl ylApZk2vi38WX43ZMZs8YqTgT4FIJ68'),
(253, 4, 'Mm2qQ6ta2S Tj63UTR FPdEHLUbiIQvddXkM19BE0sflQoOdo1'),
(254, 4, 'nF04oDBrC7mlL2MddZmkZwFgs1MSwJsPmKZj9JRQF6t9PwLEau'),
(255, 12, '3TwezoxCPduyCAqvKqj4CpJEcDb 9sTtMQjrGJ terF3CbQnLp'),
(256, 7, 'O80oOuIOIw1xmCUnBD0PWLolAU2lFjfO6yQ31LhxgZOQcfe3wT'),
(257, 16, 'NEPC TXxIJjBqk 9t6SnO233CFx2WQwkbJgZ3GjaNcngMu 5jG'),
(258, 17, 'z R0cY zOJoerT2jNLIvt3tXiwiJ oFZmfRquSYLmGyNrXna7o'),
(259, 4, 'dNVyMnWjkOetyQqKWYm37psGB7dhBSrvpSHZpMpRnVWKw0mKwt'),
(260, 12, '7X5TbCtefMenH3KmiXEpGtw94zsigkkgC3ylEhjuitvOsY0Q2D'),
(261, 19, 'zofwa7Pk9e8 UWjAdTxxTkRcJXjMKpOIAOvhM2QWXHmygOGPE3'),
(262, 12, '6pBIXCR8RCStV7TecXaa uh3DeF6mgDUShjCWSOc4l7QIaXfNi'),
(263, 22, 'L5EeWHC2QLAhDynfoRvYo9pQRA Hjf3as60pLEFIwZmUlRl2EL'),
(264, 2, 'L6LP7hxFd NDSVX sjKTnwjb9tubjja9UfCXUSITmDF5pyI0 U'),
(265, 2, '7LGg9htKmsXZt5ak7PFeC8kGXnj2RuWKZzF0cYVqv0vQTHX7bN'),
(266, 13, 'bKr4MC88lIZW2rQwESwVYOo3KJPBl1ny VTUe3kyE6fvEm6ui0'),
(267, 21, 'HEykzgkdeedl4GHaOIYCfoXcKevkgq37lzKyJC7YwhDozcz4Pd'),
(268, 20, 'xOZcY 6Q17w7ehdmQ8khemdNFr0YraGyff2iH3H7Q0fMQ3lrem'),
(269, 16, 'sMZG5IGbYJdeIvdUiCgzO2PDmGke5eM5BDjmwneyY7 AEfnTAd'),
(270, 19, 'up8iSXAFfoc6djxno3xcMucEqVLfYeL1YLXVAabheGfJIJPGP6'),
(271, 18, 'om2C5JgRnpgJhNiPgwoVEk92I2540t7eXsuyzEPOBI1ChxPc9A'),
(272, 3, 'OL3KS8 vRgLqyEE17iEzwzrPPUiv3dFgCkOROjUWsL6cq9xCRK'),
(273, 24, 'oGL9w7HMvTdZk5Jy2r7dTV64EdKIlroPPZDpiLMIpeev7ejqtc'),
(274, 18, 'WWqieyonDNtQOy16oUFt37MeYopiIBdU5StNrRKgmbVJDwry9J'),
(275, 10, 'SHM7jJlTJthyg9s9dZOMANLspa2Syr7yICMhAIQ09HhTZOOUZN'),
(276, 17, 'oZBsjmDTLz01v4ABFTmyWyndmarg1 AF0rxByHlADe7avy9VQ1'),
(277, 16, '30dF13W3pBN7IxWhauQSrwiQYffegjyy3qJeaM5kTfLyDJHNcZ'),
(278, 8, 'VT4EvzFQeKpccVZL17z4fGZVZ0vlS2pOxTLqH7Q8FEK4V1Fd97'),
(279, 8, 'QIPynHUf5JU7jAYalBqY3yM0aHdvaVw3IL2LenZIZ4TCnVBowO'),
(280, 15, 'XYonUeZiJXUoO8kY7Lk wSZ5PPITrzaD3j ceQ6xKN9Zw2jrsN'),
(281, 7, 'aRqziY2SaIBFeC1cyAxXIlP54g9YEZrcUjWD5E6GHJs74AcXBc'),
(282, 21, '9xtC1 qOJN01JZkVtdSohBaslS HnF BxRiQhZkfiWiYRghW7U'),
(283, 17, 'zUhQgOkD3qvoGAGdJvDzyXCfDYL3k0t5IdCU3hVdEJeHS3h3Ze'),
(284, 3, 'lI1ldPQj9fLmYQR3CDXA8AffOR t2Fto9c2tlOW0LMDdl9Jl05'),
(285, 16, 'MXkdhh0B4u FajLeIGHCoJcWNgwWSRsOjg9jHb0GDYTGp4DZaM'),
(286, 13, 'qoGoHQGpXvHvuc1fUm9  AYX6c MOzuFQP0gIWEZ0NvPV4hFqb'),
(287, 15, 'H7Y3umChzax9lHvEOQBw1J2kL5YXIWH06n5Iuu3C7QFIiK3I8T'),
(288, 8, 'Haa9kqI9n Q 6FagGG4TDTNXte1eqFjvmU8KVUroWnmHG4OtxC'),
(289, 20, 'akPHCsiRb0miFRmsEa9kYMZFHUYNMG2S8cvzPGk7YVvgNmNkNg'),
(290, 7, '32hVeB WvntpLc7H8pzBMUftnOO1hUd7sCKDLbhdALKSop0gL '),
(291, 6, 'qMmPV1ugaPyoGEtOVOXnWGrXVs3H2hj7LYELnulHaPr0yHaebh'),
(292, 24, '2lbth9orCLZBHPi6S16FUzY86mtUwXv6vJijLoMdxZqCEWz27Z'),
(293, 19, 'OlWhsJHgqK3SBInPDBKWF4dGdaoq8TfkzY2Qty0J Ni1nVaDC1'),
(294, 5, '7MOuOqiey8xIZF51b8VOJs2I5kMGPkkgZJ6hNIFLzEorfQFn4A'),
(295, 6, 'loYMK8mfQ34qo5nxsapf 0FDmethXok6u1szPIlT8prVVlrFo7'),
(296, 7, 'yFza2Ifc7pcPOJ5ItAEhqG0kDBb4uzQaBTmW6w6cpKFCodb3K3'),
(297, 18, 'Edg7ldcbP3tOuw1HI1U62QM7sNNpNt0QoT FTuuqDk Iqv3vKs'),
(298, 11, 'eok3x6v3kpPVFaIHGgK9EZVK4amjGL8PUUmkFjozWulLagmZ60'),
(299, 12, 'X2 N7jOGAojguDb2z3rnDjuoMWxO573w3btJ4O0E3RZlyi4lub'),
(300, 2, 'Cemib3DZGuPmcJC1z2toJkCLwXZuMcd9WuQOri2rdBESkwDjPW'),
(301, 18, 'mzo5 jtQ55mxJk1Fqg8wD5xInJnzppRnsGB029F3BAT0IDCh6u'),
(302, 10, 'w6sMoWFkftS5kIhRZF0LLJaPTy7j9pB9LdWhus3lu2afFHfNr5'),
(303, 16, 'MhnqfWGR9fKzuNIwAKppfR S5oPwYpcpj14GOYijOjz3JeTdw0'),
(304, 7, '13NJu5rM87glyk4d3J9ynL7xegM6x5Yrl9uVFuE2H5jJlZwq5w'),
(305, 22, 'w3ZgCONdHyk b0PcvPDOOVos Nl8be0MXaPtMoHhjFWCMsVAmB'),
(306, 5, 'clXYydWWCBKKqfS1s2X5qRXx8jkjc7Y0atuv5OaISEvaaBzfl3'),
(307, 20, 'NiLQ1WeOuvgUXVGcQTjMNdouP68HgaEVwMzJVLJTulN9JihbOw'),
(308, 17, 'r1cNQJ Oj61UXUZOXtvAMuqQAdvsaC9gLNCwrqwx22idZv8kIw'),
(309, 22, 'wBvkJrUMKql4qmenuSSM7m3rMiYTd31WzTgdf8MWjDiatleAGs'),
(310, 4, 'T41i4ZBrFmbNXsRf1SD6EEpw9NqbCYBcYceH4rsvypqhPiMyD7'),
(311, 8, 'Ll4maMk hYmqjH5rnvyM Hdg6yJVaagLbNS07TMlxtI0Jzk6rK'),
(312, 13, ' 9aF0OvhoMgnD3amBs9qaIlpjXH3tADESRvU8kYg1lhDslo1kb'),
(313, 6, 'test2');

-- --------------------------------------------------------

--
-- Table structure for table `post_relation`
--

CREATE TABLE `post_relation` (
  `id` int(11) NOT NULL,
  `post_1_id` int(11) NOT NULL,
  `post_2_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_relation`
--

INSERT INTO `post_relation` (`id`, `post_1_id`, `post_2_id`) VALUES
(142, 157, 187),
(198, 157, 193),
(105, 158, 160),
(272, 158, 176),
(143, 158, 182),
(138, 158, 185),
(214, 158, 202),
(152, 158, 207),
(195, 158, 280),
(293, 159, 161),
(377, 159, 172),
(365, 159, 189),
(168, 159, 192),
(191, 159, 195),
(115, 159, 292),
(292, 160, 165),
(301, 160, 170),
(232, 160, 188),
(388, 160, 190),
(322, 160, 208),
(282, 160, 212),
(353, 160, 230),
(197, 161, 171),
(181, 161, 211),
(337, 161, 218),
(318, 161, 219),
(399, 161, 221),
(125, 161, 224),
(251, 161, 241),
(298, 161, 293),
(369, 162, 179),
(189, 162, 195),
(149, 162, 211),
(289, 162, 217),
(116, 162, 248),
(405, 162, 269),
(187, 162, 302),
(285, 162, 308),
(394, 163, 171),
(367, 163, 189),
(320, 163, 281),
(385, 163, 301),
(273, 164, 176),
(267, 164, 187),
(404, 164, 191),
(218, 164, 197),
(107, 164, 199),
(387, 164, 205),
(196, 164, 211),
(145, 164, 266),
(332, 165, 201),
(319, 165, 228),
(396, 165, 248),
(275, 165, 280),
(186, 166, 171),
(175, 166, 220),
(263, 166, 242),
(241, 166, 249),
(157, 166, 265),
(167, 167, 173),
(391, 167, 206),
(395, 167, 269),
(133, 168, 189),
(141, 168, 206),
(209, 168, 211),
(230, 168, 213),
(225, 168, 278),
(227, 168, 305),
(131, 169, 171),
(262, 169, 238),
(306, 169, 249),
(201, 169, 267),
(326, 170, 185),
(151, 170, 240),
(359, 170, 283),
(352, 171, 239),
(364, 171, 249),
(374, 172, 227),
(226, 172, 253),
(255, 172, 284),
(135, 173, 177),
(235, 173, 196),
(343, 173, 247),
(249, 173, 261),
(203, 173, 310),
(121, 174, 215),
(271, 174, 223),
(242, 174, 227),
(136, 174, 308),
(248, 175, 176),
(205, 175, 210),
(200, 175, 216),
(211, 175, 218),
(250, 175, 220),
(158, 175, 238),
(228, 175, 250),
(122, 176, 258),
(313, 176, 272),
(155, 177, 181),
(223, 177, 203),
(348, 177, 256),
(295, 177, 289),
(176, 178, 197),
(118, 178, 226),
(302, 178, 251),
(356, 178, 258),
(363, 178, 273),
(378, 178, 292),
(281, 179, 202),
(139, 179, 211),
(408, 179, 227),
(307, 179, 293),
(153, 180, 181),
(261, 180, 190),
(400, 180, 203),
(245, 180, 207),
(144, 180, 225),
(288, 180, 236),
(410, 180, 278),
(373, 181, 222),
(256, 181, 246),
(287, 181, 253),
(308, 181, 285),
(335, 181, 296),
(392, 181, 298),
(409, 182, 206),
(219, 182, 228),
(397, 182, 289),
(370, 183, 248),
(314, 183, 270),
(328, 183, 273),
(165, 184, 185),
(270, 184, 195),
(247, 184, 226),
(284, 184, 258),
(216, 184, 296),
(137, 184, 306),
(113, 185, 214),
(407, 185, 217),
(266, 185, 258),
(317, 185, 276),
(212, 185, 296),
(311, 186, 208),
(340, 186, 210),
(375, 186, 258),
(193, 186, 262),
(347, 187, 208),
(305, 187, 293),
(389, 188, 203),
(286, 188, 248),
(240, 188, 268),
(183, 189, 203),
(112, 189, 215),
(163, 189, 233),
(300, 189, 240),
(213, 189, 268),
(102, 189, 294),
(108, 190, 235),
(140, 190, 269),
(244, 190, 303),
(290, 191, 192),
(110, 191, 207),
(238, 191, 254),
(254, 191, 255),
(208, 191, 295),
(237, 191, 307),
(252, 192, 229),
(304, 192, 256),
(260, 192, 282),
(233, 192, 302),
(303, 193, 244),
(188, 193, 277),
(402, 193, 303),
(206, 194, 265),
(236, 194, 268),
(280, 194, 277),
(361, 194, 284),
(323, 195, 229),
(277, 195, 292),
(114, 196, 202),
(412, 196, 249),
(346, 196, 290),
(371, 197, 215),
(154, 197, 273),
(358, 197, 283),
(161, 197, 301),
(243, 198, 219),
(336, 198, 232),
(376, 198, 291),
(368, 199, 206),
(321, 199, 246),
(339, 200, 204),
(128, 200, 215),
(124, 200, 245),
(246, 200, 257),
(350, 200, 258),
(120, 200, 279),
(390, 200, 302),
(179, 201, 206),
(265, 201, 215),
(309, 201, 216),
(276, 201, 218),
(264, 202, 205),
(199, 202, 279),
(283, 202, 293),
(164, 203, 215),
(351, 203, 224),
(126, 203, 226),
(334, 203, 301),
(372, 204, 205),
(101, 204, 230),
(291, 204, 232),
(360, 204, 235),
(274, 204, 253),
(202, 204, 306),
(354, 205, 227),
(171, 205, 249),
(173, 206, 229),
(294, 206, 284),
(147, 207, 257),
(185, 207, 285),
(221, 208, 241),
(111, 209, 221),
(386, 209, 231),
(329, 209, 238),
(344, 210, 231),
(330, 210, 249),
(239, 210, 277),
(366, 210, 291),
(150, 211, 241),
(231, 212, 216),
(341, 212, 267),
(333, 212, 277),
(146, 213, 247),
(127, 213, 263),
(403, 214, 219),
(119, 214, 246),
(349, 214, 305),
(148, 215, 216),
(259, 215, 229),
(184, 215, 231),
(194, 215, 277),
(106, 215, 292),
(342, 216, 222),
(109, 216, 226),
(162, 216, 241),
(190, 217, 219),
(345, 217, 262),
(357, 218, 262),
(130, 220, 239),
(411, 220, 272),
(383, 220, 278),
(406, 220, 312),
(103, 221, 279),
(338, 221, 287),
(327, 222, 223),
(355, 222, 252),
(180, 224, 253),
(362, 225, 242),
(182, 225, 296),
(382, 226, 273),
(134, 226, 291),
(253, 227, 240),
(217, 227, 252),
(204, 227, 255),
(224, 228, 288),
(177, 229, 267),
(380, 230, 253),
(268, 230, 268),
(257, 230, 269),
(299, 231, 238),
(279, 231, 246),
(269, 234, 236),
(331, 234, 271),
(316, 236, 261),
(104, 236, 283),
(129, 237, 238),
(325, 237, 262),
(229, 238, 294),
(156, 239, 254),
(192, 239, 311),
(215, 240, 265),
(123, 240, 290),
(310, 240, 291),
(312, 241, 257),
(315, 241, 306),
(278, 244, 285),
(398, 245, 250),
(174, 245, 254),
(234, 245, 296),
(172, 246, 273),
(178, 247, 268),
(132, 248, 252),
(379, 248, 254),
(166, 249, 307),
(393, 250, 262),
(220, 253, 268),
(401, 253, 294),
(169, 255, 270),
(381, 256, 263),
(297, 257, 283),
(258, 259, 264),
(207, 260, 288),
(296, 262, 275),
(117, 262, 303),
(384, 264, 267),
(210, 265, 281),
(159, 269, 303),
(160, 273, 295),
(324, 274, 277),
(222, 282, 290),
(170, 289, 306);

-- --------------------------------------------------------

--
-- Table structure for table `post_views`
--

CREATE TABLE `post_views` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_views`
--

INSERT INTO `post_views` (`id`, `post_id`, `views`) VALUES
(1, 173, 43),
(2, 197, 67),
(3, 210, 40),
(4, 232, 86),
(5, 233, 78),
(6, 157, 49),
(7, 158, 41),
(8, 205, 7),
(9, 242, 57),
(10, 264, 100),
(11, 265, 100),
(12, 300, 59),
(13, 167, 67),
(14, 206, 33),
(15, 222, 23),
(16, 272, 50),
(17, 284, 81),
(18, 214, 93),
(19, 236, 23),
(20, 247, 79),
(21, 253, 76),
(22, 254, 8),
(23, 259, 21),
(24, 310, 15),
(25, 220, 23),
(26, 224, 45),
(27, 226, 74),
(28, 237, 37),
(29, 243, 81),
(30, 245, 57),
(31, 294, 37),
(32, 306, 90),
(33, 162, 62),
(34, 163, 30),
(35, 165, 30),
(36, 171, 54),
(37, 187, 86),
(38, 228, 17),
(39, 291, 18),
(40, 295, 23),
(41, 164, 86),
(42, 183, 34),
(43, 256, 75),
(44, 281, 71),
(45, 290, 97),
(46, 296, 27),
(47, 304, 80),
(48, 209, 68),
(49, 278, 63),
(50, 279, 90),
(51, 288, 77),
(52, 311, 36),
(53, 194, 57),
(54, 201, 35),
(55, 215, 12),
(56, 225, 95),
(57, 251, 62),
(58, 170, 39),
(59, 174, 50),
(60, 193, 55),
(61, 275, 5),
(62, 302, 43),
(63, 175, 83),
(64, 176, 64),
(65, 180, 22),
(66, 184, 22),
(67, 186, 25),
(68, 212, 53),
(69, 223, 58),
(70, 298, 35),
(71, 161, 85),
(72, 208, 77),
(73, 217, 30),
(74, 255, 57),
(75, 260, 6),
(76, 262, 31),
(77, 299, 83),
(78, 182, 35),
(79, 221, 29),
(80, 235, 74),
(81, 238, 17),
(82, 266, 10),
(83, 286, 55),
(84, 312, 79),
(85, 160, 64),
(86, 172, 32),
(87, 178, 76),
(88, 185, 85),
(89, 248, 87),
(90, 219, 46),
(91, 229, 27),
(92, 234, 95),
(93, 250, 44),
(94, 252, 72),
(95, 280, 73),
(96, 287, 19),
(97, 179, 18),
(98, 239, 85),
(99, 257, 96),
(100, 269, 13),
(101, 277, 54),
(102, 285, 84),
(103, 303, 8),
(104, 199, 17),
(105, 204, 94),
(106, 249, 72),
(107, 258, 42),
(108, 276, 81),
(109, 283, 9),
(110, 308, 38),
(111, 177, 33),
(112, 207, 11),
(113, 218, 86),
(114, 271, 74),
(115, 274, 37),
(116, 297, 22),
(117, 301, 67),
(118, 168, 71),
(119, 216, 73),
(120, 246, 95),
(121, 261, 72),
(122, 270, 53),
(123, 293, 23),
(124, 189, 55),
(125, 192, 100),
(126, 198, 13),
(127, 244, 57),
(128, 268, 20),
(129, 289, 44),
(130, 307, 87),
(131, 166, 30),
(132, 190, 12),
(133, 200, 88),
(134, 202, 97),
(135, 203, 71),
(136, 211, 80),
(137, 267, 62),
(138, 282, 13),
(139, 181, 26),
(140, 196, 9),
(141, 213, 45),
(142, 240, 18),
(143, 263, 80),
(144, 305, 73),
(145, 309, 55),
(146, 188, 55),
(147, 195, 51),
(148, 227, 46),
(149, 230, 7),
(150, 231, 73),
(151, 241, 80),
(152, 159, 80),
(153, 169, 13),
(154, 191, 75),
(155, 273, 65),
(156, 292, 10),
(157, 313, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Matineh Mousavi', 'matineh.mousavi8200@gmail.com', '2c015826c4d36371c55b1bf3289172429c185ca5fb09f975662eb924bf41654e'),
(2, 'Mobina mahdavi', 'mobina.mahdavi.web@gmail.com', '6fa608ae81932a17764462bf3a96e25700add54c7fc4be8856f118c604d36d24'),
(3, 'Parmida Mehrnikoo', 'Mehrnikoo.net@gmail.com', '3a2b85b241607ae1f82c26cd7719b40fcff4c733e04b04be614faba3e7f95e13'),
(4, 'Sara Sarfi', 'sarasarfi79@gmail.com', 'e866bac05a8f059eb53288540d3ad33f0bd1cc7bff8bfc887d43de423ca11c2d'),
(5, 'Fatemeh Binesh', 'fatemehbinesh17@gmail.com', '013a5d3dfc26f833765e2648b2dabc44a744d5672f5ecf3f9366021e47a322ab'),
(6, 'Danial Isaabadi', 'danial.isaabadi81@gmail.com', '83e4354226a875622a09125f3be4b8de9d95d7f4fe3dbbd7f4038afff9955de8'),
(7, 'Aida Sadeghi', 'asv94974@gmail.com', '7a6592cf2f8d9969835ee63bc663256b0aeb5c300e1c4dbbdc3dba44d59cb1ff'),
(8, 'Amirhosein Tasharrofi', 'amirhosein.tasharrofi@gmail.com', 'ee84aee1de887bc0bf6017f1c9fe9da7a8c547c71f4c277580cbcfd7af871dd7'),
(9, 'Masoud Taghipour', 'mtaghipourj@gmail.com', '68bdb07e1a4ec14102a90b32daefd5f7969a548edbacb819f291bb8f2d049230'),
(10, 'Ali Daneshmand', 'daneshmanda8@gmail.com', '30813398562f7ad5417336436c6345e0bb48abb37d2dcad75450bb47269573c9'),
(11, 'Omid Haghgoo', 'O.Haghgoo@gmail.com', 'b15caa49288a3ff544fb8b48db5a964497e723873c60e79db5b5b449ad5ebe09'),
(12, 'Mostafa Montazery', 'Mostafamtz@gmail.com', '6460662e217c7a9f899208dd70a2c28abdea42f128666a9b78e6c0c064846493'),
(13, 'Shakila Shaker', 'shakilashaker80@gmail.com', '03040fbd48cfb066b45e2c35dd53c9e9210c02ace1789a7f69227d3dd0fa8a6a'),
(14, 'fatemeh khajeh', 'fatemeh.khajeh1404@gmail.com', '134bfe69fd22718affaa678b518638faaa82ab83a512718dd2dd2b8cd8e1b223'),
(15, 'Mobina Amini', 'mobina.amini.web@gmail.com', '095e799daf0b7a8e79cc477ef93418ac5309536ac4afd97b7464067ae3d33f51'),
(16, 'Shahed Shirazi', 'shirazishaheds926@gmail.com', '46c703b3eff86136971a774f66fbaa17410d51ce7ae79308b71ee779b6764f77'),
(17, 'amirhosseinasadi', 'amirhosseinasadi162@gmail.com', '6460662e217c7a9f899208dd70a2c28abdea42f128666a9b78e6c0c064846493'),
(18, 'Ghazal Rezaei', 'rezaeighazal432@gmail.com', '3191e532d5f5bc5a33cb79abe97f23e20ed2aa9428fb17210944f24aa994b570'),
(19, 'Mobina Fallah', 'flhmobinaa@gmail.com', '7c2523c985881fb2c2b4cfbe917eb12c4c4b61e898ad4e7160cfca487ca3c4f3'),
(20, 'Mahdieh panjei', 'mahdiehpanjei@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(21, 'taha sadeghi', 'taha18319113@gmail.com', 'a55ab3b9baa65380cd4334e579924e4f3acd9c1d1fb0dc1b351651a2882a583e'),
(22, 'Sadjad Rezagholizadeh', 'sajjad.rz@gmail.com', 'a1bc8f4d35ff73c1c7b1dd51f632b1c9ce913a28c22748b20f84dfa832d62c9d'),
(23, 'ali babakordi', 'alibabakordi82@gmail.com', '6fea1efa869f78b7bca9d0dadbcedd4741a4e1817cd736fbb3912bdabc418d90'),
(24, 'AbbasEsmaili', 'abbas@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(25, 'dani', 'danial.dan.isaabadi81@gmail.com', '1d380e1035092492d263cb5af91f9aad889d3ec273cfd955f061b8abf897c821');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_relation`
--
ALTER TABLE `post_relation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_1_id` (`post_1_id`,`post_2_id`),
  ADD KEY `post_2_id` (`post_2_id`);

--
-- Indexes for table `post_views`
--
ALTER TABLE `post_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `post_relation`
--
ALTER TABLE `post_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `post_views`
--
ALTER TABLE `post_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_relation`
--
ALTER TABLE `post_relation`
  ADD CONSTRAINT `post_relation_ibfk_1` FOREIGN KEY (`post_1_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_relation_ibfk_2` FOREIGN KEY (`post_2_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_views`
--
ALTER TABLE `post_views`
  ADD CONSTRAINT `post_views_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
