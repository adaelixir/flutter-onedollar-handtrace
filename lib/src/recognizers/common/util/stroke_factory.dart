/*
 * Copyright (c) 2016 Fredrik Henricsson
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software
 * and associated documentation files (the "Software"), to deal in the Software without restriction,
 * including without limitation the rights to use, copy, modify, merge, publish, distribute,
 * sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies or
 * substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 * INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
 * AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
 * WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

import '../data/point.dart';

enum StrokeTemplate {
  TRIANGLE,
  X,
  RECTANGLE,
  CIRCLE,
  CHECK,
  CARET,
  ZIGZAG,
  ARROW,
  LEFT_SQUARE_BRACKET,
  RIGHT_SQUARE_BRACKET,
  V,
  DELETE,
  LEFT_CURLY_BRACE,
  RIGHT_CURLY_BRACE,
  STAR,
  PIGTAIL
}

class StrokeFactory {
  List<Point> getStrokePoints(StrokeTemplate template) {
    switch (template) {
      case StrokeTemplate.TRIANGLE:
        return [
          Point(137.0, 139.0),
          Point(135.0, 141.0),
          Point(133.0, 144.0),
          Point(132.0, 146.0),
          Point(130.0, 149.0),
          Point(128.0, 151.0),
          Point(126.0, 155.0),
          Point(123.0, 160.0),
          Point(120.0, 166.0),
          Point(116.0, 171.0),
          Point(112.0, 177.0),
          Point(107.0, 183.0),
          Point(102.0, 188.0),
          Point(100.0, 191.0),
          Point(95.0, 195.0),
          Point(90.0, 199.0),
          Point(86.0, 203.0),
          Point(82.0, 206.0),
          Point(80.0, 209.0),
          Point(75.0, 213.0),
          Point(73.0, 213.0),
          Point(70.0, 216.0),
          Point(67.0, 219.0),
          Point(64.0, 221.0),
          Point(61.0, 223.0),
          Point(60.0, 225.0),
          Point(62.0, 226.0),
          Point(65.0, 225.0),
          Point(67.0, 226.0),
          Point(74.0, 226.0),
          Point(77.0, 227.0),
          Point(85.0, 229.0),
          Point(91.0, 230.0),
          Point(99.0, 231.0),
          Point(108.0, 232.0),
          Point(116.0, 233.0),
          Point(125.0, 233.0),
          Point(134.0, 234.0),
          Point(145.0, 233.0),
          Point(153.0, 232.0),
          Point(160.0, 233.0),
          Point(170.0, 234.0),
          Point(177.0, 235.0),
          Point(179.0, 236.0),
          Point(186.0, 237.0),
          Point(193.0, 238.0),
          Point(198.0, 239.0),
          Point(200.0, 237.0),
          Point(202.0, 239.0),
          Point(204.0, 238.0),
          Point(206.0, 234.0),
          Point(205.0, 230.0),
          Point(202.0, 222.0),
          Point(197.0, 216.0),
          Point(192.0, 207.0),
          Point(186.0, 198.0),
          Point(179.0, 189.0),
          Point(174.0, 183.0),
          Point(170.0, 178.0),
          Point(164.0, 171.0),
          Point(161.0, 168.0),
          Point(154.0, 160.0),
          Point(148.0, 155.0),
          Point(143.0, 150.0),
          Point(138.0, 148.0),
          Point(136.0, 148.0)
        ];
      case StrokeTemplate.X:
        return [
          Point(87.0, 142.0),
          Point(89.0, 145.0),
          Point(91.0, 148.0),
          Point(93.0, 151.0),
          Point(96.0, 155.0),
          Point(98.0, 157.0),
          Point(100.0, 160.0),
          Point(102.0, 162.0),
          Point(106.0, 167.0),
          Point(108.0, 169.0),
          Point(110.0, 171.0),
          Point(115.0, 177.0),
          Point(119.0, 183.0),
          Point(123.0, 189.0),
          Point(127.0, 193.0),
          Point(129.0, 196.0),
          Point(133.0, 200.0),
          Point(137.0, 206.0),
          Point(140.0, 209.0),
          Point(143.0, 212.0),
          Point(146.0, 215.0),
          Point(151.0, 220.0),
          Point(153.0, 222.0),
          Point(155.0, 223.0),
          Point(157.0, 225.0),
          Point(158.0, 223.0),
          Point(157.0, 218.0),
          Point(155.0, 211.0),
          Point(154.0, 208.0),
          Point(152.0, 200.0),
          Point(150.0, 189.0),
          Point(148.0, 179.0),
          Point(147.0, 170.0),
          Point(147.0, 158.0),
          Point(147.0, 148.0),
          Point(147.0, 141.0),
          Point(147.0, 136.0),
          Point(144.0, 135.0),
          Point(142.0, 137.0),
          Point(140.0, 139.0),
          Point(135.0, 145.0),
          Point(131.0, 152.0),
          Point(124.0, 163.0),
          Point(116.0, 177.0),
          Point(108.0, 191.0),
          Point(100.0, 206.0),
          Point(94.0, 217.0),
          Point(91.0, 222.0),
          Point(89.0, 225.0),
          Point(87.0, 226.0),
          Point(87.0, 224.0)
        ];
      case StrokeTemplate.RECTANGLE:
        return [
          Point(78.0, 149.0),
          Point(78.0, 153.0),
          Point(78.0, 157.0),
          Point(78.0, 160.0),
          Point(79.0, 162.0),
          Point(79.0, 164.0),
          Point(79.0, 167.0),
          Point(79.0, 169.0),
          Point(79.0, 173.0),
          Point(79.0, 178.0),
          Point(79.0, 183.0),
          Point(80.0, 189.0),
          Point(80.0, 193.0),
          Point(80.0, 198.0),
          Point(80.0, 202.0),
          Point(81.0, 208.0),
          Point(81.0, 210.0),
          Point(81.0, 216.0),
          Point(82.0, 222.0),
          Point(82.0, 224.0),
          Point(82.0, 227.0),
          Point(83.0, 229.0),
          Point(83.0, 231.0),
          Point(85.0, 230.0),
          Point(88.0, 232.0),
          Point(90.0, 233.0),
          Point(92.0, 232.0),
          Point(94.0, 233.0),
          Point(99.0, 232.0),
          Point(102.0, 233.0),
          Point(106.0, 233.0),
          Point(109.0, 234.0),
          Point(117.0, 235.0),
          Point(123.0, 236.0),
          Point(126.0, 236.0),
          Point(135.0, 237.0),
          Point(142.0, 238.0),
          Point(145.0, 238.0),
          Point(152.0, 238.0),
          Point(154.0, 239.0),
          Point(165.0, 238.0),
          Point(174.0, 237.0),
          Point(179.0, 236.0),
          Point(186.0, 235.0),
          Point(191.0, 235.0),
          Point(195.0, 233.0),
          Point(197.0, 233.0),
          Point(200.0, 233.0),
          Point(201.0, 235.0),
          Point(201.0, 233.0),
          Point(199.0, 231.0),
          Point(198.0, 226.0),
          Point(198.0, 220.0),
          Point(196.0, 207.0),
          Point(195.0, 195.0),
          Point(195.0, 181.0),
          Point(195.0, 173.0),
          Point(195.0, 163.0),
          Point(194.0, 155.0),
          Point(192.0, 145.0),
          Point(192.0, 143.0),
          Point(192.0, 138.0),
          Point(191.0, 135.0),
          Point(191.0, 133.0),
          Point(191.0, 130.0),
          Point(190.0, 128.0),
          Point(188.0, 129.0),
          Point(186.0, 129.0),
          Point(181.0, 132.0),
          Point(173.0, 131.0),
          Point(162.0, 131.0),
          Point(151.0, 132.0),
          Point(149.0, 132.0),
          Point(138.0, 132.0),
          Point(136.0, 132.0),
          Point(122.0, 131.0),
          Point(120.0, 131.0),
          Point(109.0, 130.0),
          Point(107.0, 130.0),
          Point(90.0, 132.0),
          Point(81.0, 133.0),
          Point(76.0, 133.0)
        ];
      case StrokeTemplate.CIRCLE:
        return [
          Point(127.0, 141.0),
          Point(124.0, 140.0),
          Point(120.0, 139.0),
          Point(118.0, 139.0),
          Point(116.0, 139.0),
          Point(111.0, 140.0),
          Point(109.0, 141.0),
          Point(104.0, 144.0),
          Point(100.0, 147.0),
          Point(96.0, 152.0),
          Point(93.0, 157.0),
          Point(90.0, 163.0),
          Point(87.0, 169.0),
          Point(85.0, 175.0),
          Point(83.0, 181.0),
          Point(82.0, 190.0),
          Point(82.0, 195.0),
          Point(83.0, 200.0),
          Point(84.0, 205.0),
          Point(88.0, 213.0),
          Point(91.0, 216.0),
          Point(96.0, 219.0),
          Point(103.0, 222.0),
          Point(108.0, 224.0),
          Point(111.0, 224.0),
          Point(120.0, 224.0),
          Point(133.0, 223.0),
          Point(142.0, 222.0),
          Point(152.0, 218.0),
          Point(160.0, 214.0),
          Point(167.0, 210.0),
          Point(173.0, 204.0),
          Point(178.0, 198.0),
          Point(179.0, 196.0),
          Point(182.0, 188.0),
          Point(182.0, 177.0),
          Point(178.0, 167.0),
          Point(170.0, 150.0),
          Point(163.0, 138.0),
          Point(152.0, 130.0),
          Point(143.0, 129.0),
          Point(140.0, 131.0),
          Point(129.0, 136.0),
          Point(126.0, 139.0)
        ];
      case StrokeTemplate.CHECK:
        return [
          Point(91.0, 185.0),
          Point(93.0, 185.0),
          Point(95.0, 185.0),
          Point(97.0, 185.0),
          Point(100.0, 188.0),
          Point(102.0, 189.0),
          Point(104.0, 190.0),
          Point(106.0, 193.0),
          Point(108.0, 195.0),
          Point(110.0, 198.0),
          Point(112.0, 201.0),
          Point(114.0, 204.0),
          Point(115.0, 207.0),
          Point(117.0, 210.0),
          Point(118.0, 212.0),
          Point(120.0, 214.0),
          Point(121.0, 217.0),
          Point(122.0, 219.0),
          Point(123.0, 222.0),
          Point(124.0, 224.0),
          Point(126.0, 226.0),
          Point(127.0, 229.0),
          Point(129.0, 231.0),
          Point(130.0, 233.0),
          Point(129.0, 231.0),
          Point(129.0, 228.0),
          Point(129.0, 226.0),
          Point(129.0, 224.0),
          Point(129.0, 221.0),
          Point(129.0, 218.0),
          Point(129.0, 212.0),
          Point(129.0, 208.0),
          Point(130.0, 198.0),
          Point(132.0, 189.0),
          Point(134.0, 182.0),
          Point(137.0, 173.0),
          Point(143.0, 164.0),
          Point(147.0, 157.0),
          Point(151.0, 151.0),
          Point(155.0, 144.0),
          Point(161.0, 137.0),
          Point(165.0, 131.0),
          Point(171.0, 122.0),
          Point(174.0, 118.0),
          Point(176.0, 114.0),
          Point(177.0, 112.0),
          Point(177.0, 114.0),
          Point(175.0, 116.0),
          Point(173.0, 118.0)
        ];
      case StrokeTemplate.CARET:
        return [
          Point(79.0, 245.0),
          Point(79.0, 242.0),
          Point(79.0, 239.0),
          Point(80.0, 237.0),
          Point(80.0, 234.0),
          Point(81.0, 232.0),
          Point(82.0, 230.0),
          Point(84.0, 224.0),
          Point(86.0, 220.0),
          Point(86.0, 218.0),
          Point(87.0, 216.0),
          Point(88.0, 213.0),
          Point(90.0, 207.0),
          Point(91.0, 202.0),
          Point(92.0, 200.0),
          Point(93.0, 194.0),
          Point(94.0, 192.0),
          Point(96.0, 189.0),
          Point(97.0, 186.0),
          Point(100.0, 179.0),
          Point(102.0, 173.0),
          Point(105.0, 165.0),
          Point(107.0, 160.0),
          Point(109.0, 158.0),
          Point(112.0, 151.0),
          Point(115.0, 144.0),
          Point(117.0, 139.0),
          Point(119.0, 136.0),
          Point(119.0, 134.0),
          Point(120.0, 132.0),
          Point(121.0, 129.0),
          Point(122.0, 127.0),
          Point(124.0, 125.0),
          Point(126.0, 124.0),
          Point(129.0, 125.0),
          Point(131.0, 127.0),
          Point(132.0, 130.0),
          Point(136.0, 139.0),
          Point(141.0, 154.0),
          Point(145.0, 166.0),
          Point(151.0, 182.0),
          Point(156.0, 193.0),
          Point(157.0, 196.0),
          Point(161.0, 209.0),
          Point(162.0, 211.0),
          Point(167.0, 223.0),
          Point(169.0, 229.0),
          Point(170.0, 231.0),
          Point(173.0, 237.0),
          Point(176.0, 242.0),
          Point(177.0, 244.0),
          Point(179.0, 250.0),
          Point(181.0, 255.0),
          Point(182.0, 257.0)
        ];
      case StrokeTemplate.ZIGZAG:
        return [
          Point(307.0, 216.0),
          Point(333.0, 186.0),
          Point(356.0, 215.0),
          Point(375.0, 186.0),
          Point(399.0, 216.0),
          Point(418.0, 186.0)
        ];
      case StrokeTemplate.ARROW:
        return [
          Point(68.0, 222.0),
          Point(70.0, 220.0),
          Point(73.0, 218.0),
          Point(75.0, 217.0),
          Point(77.0, 215.0),
          Point(80.0, 213.0),
          Point(82.0, 212.0),
          Point(84.0, 210.0),
          Point(87.0, 209.0),
          Point(89.0, 208.0),
          Point(92.0, 206.0),
          Point(95.0, 204.0),
          Point(101.0, 201.0),
          Point(106.0, 198.0),
          Point(112.0, 194.0),
          Point(118.0, 191.0),
          Point(124.0, 187.0),
          Point(127.0, 186.0),
          Point(132.0, 183.0),
          Point(138.0, 181.0),
          Point(141.0, 180.0),
          Point(146.0, 178.0),
          Point(154.0, 173.0),
          Point(159.0, 171.0),
          Point(161.0, 170.0),
          Point(166.0, 167.0),
          Point(168.0, 167.0),
          Point(171.0, 166.0),
          Point(174.0, 164.0),
          Point(177.0, 162.0),
          Point(180.0, 160.0),
          Point(182.0, 158.0),
          Point(183.0, 156.0),
          Point(181.0, 154.0),
          Point(178.0, 153.0),
          Point(171.0, 153.0),
          Point(164.0, 153.0),
          Point(160.0, 153.0),
          Point(150.0, 154.0),
          Point(147.0, 155.0),
          Point(141.0, 157.0),
          Point(137.0, 158.0),
          Point(135.0, 158.0),
          Point(137.0, 158.0),
          Point(140.0, 157.0),
          Point(143.0, 156.0),
          Point(151.0, 154.0),
          Point(160.0, 152.0),
          Point(170.0, 149.0),
          Point(179.0, 147.0),
          Point(185.0, 145.0),
          Point(192.0, 144.0),
          Point(196.0, 144.0),
          Point(198.0, 144.0),
          Point(200.0, 144.0),
          Point(201.0, 147.0),
          Point(199.0, 149.0),
          Point(194.0, 157.0),
          Point(191.0, 160.0),
          Point(186.0, 167.0),
          Point(180.0, 176.0),
          Point(177.0, 179.0),
          Point(171.0, 187.0),
          Point(169.0, 189.0),
          Point(165.0, 194.0),
          Point(164.0, 196.0)
        ];
      case StrokeTemplate.LEFT_SQUARE_BRACKET:
        return [
          Point(140.0, 124.0),
          Point(138.0, 123.0),
          Point(135.0, 122.0),
          Point(133.0, 123.0),
          Point(130.0, 123.0),
          Point(128.0, 124.0),
          Point(125.0, 125.0),
          Point(122.0, 124.0),
          Point(120.0, 124.0),
          Point(118.0, 124.0),
          Point(116.0, 125.0),
          Point(113.0, 125.0),
          Point(111.0, 125.0),
          Point(108.0, 124.0),
          Point(106.0, 125.0),
          Point(104.0, 125.0),
          Point(102.0, 124.0),
          Point(100.0, 123.0),
          Point(98.0, 123.0),
          Point(95.0, 124.0),
          Point(93.0, 123.0),
          Point(90.0, 124.0),
          Point(88.0, 124.0),
          Point(85.0, 125.0),
          Point(83.0, 126.0),
          Point(81.0, 127.0),
          Point(81.0, 129.0),
          Point(82.0, 131.0),
          Point(82.0, 134.0),
          Point(83.0, 138.0),
          Point(84.0, 141.0),
          Point(84.0, 144.0),
          Point(85.0, 148.0),
          Point(85.0, 151.0),
          Point(86.0, 156.0),
          Point(86.0, 160.0),
          Point(86.0, 164.0),
          Point(86.0, 168.0),
          Point(87.0, 171.0),
          Point(87.0, 175.0),
          Point(87.0, 179.0),
          Point(87.0, 182.0),
          Point(87.0, 186.0),
          Point(88.0, 188.0),
          Point(88.0, 195.0),
          Point(88.0, 198.0),
          Point(88.0, 201.0),
          Point(88.0, 207.0),
          Point(89.0, 211.0),
          Point(89.0, 213.0),
          Point(89.0, 217.0),
          Point(89.0, 222.0),
          Point(88.0, 225.0),
          Point(88.0, 229.0),
          Point(88.0, 231.0),
          Point(88.0, 233.0),
          Point(88.0, 235.0),
          Point(89.0, 237.0),
          Point(89.0, 240.0),
          Point(89.0, 242.0),
          Point(91.0, 241.0),
          Point(94.0, 241.0),
          Point(96.0, 240.0),
          Point(98.0, 239.0),
          Point(105.0, 240.0),
          Point(109.0, 240.0),
          Point(113.0, 239.0),
          Point(116.0, 240.0),
          Point(121.0, 239.0),
          Point(130.0, 240.0),
          Point(136.0, 237.0),
          Point(139.0, 237.0),
          Point(144.0, 238.0),
          Point(151.0, 237.0),
          Point(157.0, 236.0),
          Point(159.0, 237.0)
        ];
      case StrokeTemplate.RIGHT_SQUARE_BRACKET:
        return [
          Point(112.0, 138.0),
          Point(112.0, 136.0),
          Point(115.0, 136.0),
          Point(118.0, 137.0),
          Point(120.0, 136.0),
          Point(123.0, 136.0),
          Point(125.0, 136.0),
          Point(128.0, 136.0),
          Point(131.0, 136.0),
          Point(134.0, 135.0),
          Point(137.0, 135.0),
          Point(140.0, 134.0),
          Point(143.0, 133.0),
          Point(145.0, 132.0),
          Point(147.0, 132.0),
          Point(149.0, 132.0),
          Point(152.0, 132.0),
          Point(153.0, 134.0),
          Point(154.0, 137.0),
          Point(155.0, 141.0),
          Point(156.0, 144.0),
          Point(157.0, 152.0),
          Point(158.0, 161.0),
          Point(160.0, 170.0),
          Point(162.0, 182.0),
          Point(164.0, 192.0),
          Point(166.0, 200.0),
          Point(167.0, 209.0),
          Point(168.0, 214.0),
          Point(168.0, 216.0),
          Point(169.0, 221.0),
          Point(169.0, 223.0),
          Point(169.0, 228.0),
          Point(169.0, 231.0),
          Point(166.0, 233.0),
          Point(164.0, 234.0),
          Point(161.0, 235.0),
          Point(155.0, 236.0),
          Point(147.0, 235.0),
          Point(140.0, 233.0),
          Point(131.0, 233.0),
          Point(124.0, 233.0),
          Point(117.0, 235.0),
          Point(114.0, 238.0),
          Point(112.0, 238.0)
        ];
      case StrokeTemplate.V:
        return [
          Point(89.0, 164.0),
          Point(90.0, 162.0),
          Point(92.0, 162.0),
          Point(94.0, 164.0),
          Point(95.0, 166.0),
          Point(96.0, 169.0),
          Point(97.0, 171.0),
          Point(99.0, 175.0),
          Point(101.0, 178.0),
          Point(103.0, 182.0),
          Point(106.0, 189.0),
          Point(108.0, 194.0),
          Point(111.0, 199.0),
          Point(114.0, 204.0),
          Point(117.0, 209.0),
          Point(119.0, 214.0),
          Point(122.0, 218.0),
          Point(124.0, 222.0),
          Point(126.0, 225.0),
          Point(128.0, 228.0),
          Point(130.0, 229.0),
          Point(133.0, 233.0),
          Point(134.0, 236.0),
          Point(136.0, 239.0),
          Point(138.0, 240.0),
          Point(139.0, 242.0),
          Point(140.0, 244.0),
          Point(142.0, 242.0),
          Point(142.0, 240.0),
          Point(142.0, 237.0),
          Point(143.0, 235.0),
          Point(143.0, 233.0),
          Point(145.0, 229.0),
          Point(146.0, 226.0),
          Point(148.0, 217.0),
          Point(149.0, 208.0),
          Point(149.0, 205.0),
          Point(151.0, 196.0),
          Point(151.0, 193.0),
          Point(153.0, 182.0),
          Point(155.0, 172.0),
          Point(157.0, 165.0),
          Point(159.0, 160.0),
          Point(162.0, 155.0),
          Point(164.0, 150.0),
          Point(165.0, 148.0),
          Point(166.0, 146.0)
        ];
      case StrokeTemplate.DELETE:
        return [
          Point(123.0, 129.0),
          Point(123.0, 131.0),
          Point(124.0, 133.0),
          Point(125.0, 136.0),
          Point(127.0, 140.0),
          Point(129.0, 142.0),
          Point(133.0, 148.0),
          Point(137.0, 154.0),
          Point(143.0, 158.0),
          Point(145.0, 161.0),
          Point(148.0, 164.0),
          Point(153.0, 170.0),
          Point(158.0, 176.0),
          Point(160.0, 178.0),
          Point(164.0, 183.0),
          Point(168.0, 188.0),
          Point(171.0, 191.0),
          Point(175.0, 196.0),
          Point(178.0, 200.0),
          Point(180.0, 202.0),
          Point(181.0, 205.0),
          Point(184.0, 208.0),
          Point(186.0, 210.0),
          Point(187.0, 213.0),
          Point(188.0, 215.0),
          Point(186.0, 212.0),
          Point(183.0, 211.0),
          Point(177.0, 208.0),
          Point(169.0, 206.0),
          Point(162.0, 205.0),
          Point(154.0, 207.0),
          Point(145.0, 209.0),
          Point(137.0, 210.0),
          Point(129.0, 214.0),
          Point(122.0, 217.0),
          Point(118.0, 218.0),
          Point(111.0, 221.0),
          Point(109.0, 222.0),
          Point(110.0, 219.0),
          Point(112.0, 217.0),
          Point(118.0, 209.0),
          Point(120.0, 207.0),
          Point(128.0, 196.0),
          Point(135.0, 187.0),
          Point(138.0, 183.0),
          Point(148.0, 167.0),
          Point(157.0, 153.0),
          Point(163.0, 145.0),
          Point(165.0, 142.0),
          Point(172.0, 133.0),
          Point(177.0, 127.0),
          Point(179.0, 127.0),
          Point(180.0, 125.0)
        ];
      case StrokeTemplate.LEFT_CURLY_BRACE:
        return [
          Point(150.0, 116.0),
          Point(147.0, 117.0),
          Point(145.0, 116.0),
          Point(142.0, 116.0),
          Point(139.0, 117.0),
          Point(136.0, 117.0),
          Point(133.0, 118.0),
          Point(129.0, 121.0),
          Point(126.0, 122.0),
          Point(123.0, 123.0),
          Point(120.0, 125.0),
          Point(118.0, 127.0),
          Point(115.0, 128.0),
          Point(113.0, 129.0),
          Point(112.0, 131.0),
          Point(113.0, 134.0),
          Point(115.0, 134.0),
          Point(117.0, 135.0),
          Point(120.0, 135.0),
          Point(123.0, 137.0),
          Point(126.0, 138.0),
          Point(129.0, 140.0),
          Point(135.0, 143.0),
          Point(137.0, 144.0),
          Point(139.0, 147.0),
          Point(141.0, 149.0),
          Point(140.0, 152.0),
          Point(139.0, 155.0),
          Point(134.0, 159.0),
          Point(131.0, 161.0),
          Point(124.0, 166.0),
          Point(121.0, 166.0),
          Point(117.0, 166.0),
          Point(114.0, 167.0),
          Point(112.0, 166.0),
          Point(114.0, 164.0),
          Point(116.0, 163.0),
          Point(118.0, 163.0),
          Point(120.0, 162.0),
          Point(122.0, 163.0),
          Point(125.0, 164.0),
          Point(127.0, 165.0),
          Point(129.0, 166.0),
          Point(130.0, 168.0),
          Point(129.0, 171.0),
          Point(127.0, 175.0),
          Point(125.0, 179.0),
          Point(123.0, 184.0),
          Point(121.0, 190.0),
          Point(120.0, 194.0),
          Point(119.0, 199.0),
          Point(120.0, 202.0),
          Point(123.0, 207.0),
          Point(127.0, 211.0),
          Point(133.0, 215.0),
          Point(142.0, 219.0),
          Point(148.0, 220.0),
          Point(151.0, 221.0)
        ];
      case StrokeTemplate.RIGHT_CURLY_BRACE:
        return [
          Point(117.0, 132.0),
          Point(115.0, 132.0),
          Point(115.0, 129.0),
          Point(117.0, 129.0),
          Point(119.0, 128.0),
          Point(122.0, 127.0),
          Point(125.0, 127.0),
          Point(127.0, 127.0),
          Point(130.0, 127.0),
          Point(133.0, 129.0),
          Point(136.0, 129.0),
          Point(138.0, 130.0),
          Point(140.0, 131.0),
          Point(143.0, 134.0),
          Point(144.0, 136.0),
          Point(145.0, 139.0),
          Point(145.0, 142.0),
          Point(145.0, 145.0),
          Point(145.0, 147.0),
          Point(145.0, 149.0),
          Point(144.0, 152.0),
          Point(142.0, 157.0),
          Point(141.0, 160.0),
          Point(139.0, 163.0),
          Point(137.0, 166.0),
          Point(135.0, 167.0),
          Point(133.0, 169.0),
          Point(131.0, 172.0),
          Point(128.0, 173.0),
          Point(126.0, 176.0),
          Point(125.0, 178.0),
          Point(125.0, 180.0),
          Point(125.0, 182.0),
          Point(126.0, 184.0),
          Point(128.0, 187.0),
          Point(130.0, 187.0),
          Point(132.0, 188.0),
          Point(135.0, 189.0),
          Point(140.0, 189.0),
          Point(145.0, 189.0),
          Point(150.0, 187.0),
          Point(155.0, 186.0),
          Point(157.0, 185.0),
          Point(159.0, 184.0),
          Point(156.0, 185.0),
          Point(154.0, 185.0),
          Point(149.0, 185.0),
          Point(145.0, 187.0),
          Point(141.0, 188.0),
          Point(136.0, 191.0),
          Point(134.0, 191.0),
          Point(131.0, 192.0),
          Point(129.0, 193.0),
          Point(129.0, 195.0),
          Point(129.0, 197.0),
          Point(131.0, 200.0),
          Point(133.0, 202.0),
          Point(136.0, 206.0),
          Point(139.0, 211.0),
          Point(142.0, 215.0),
          Point(145.0, 220.0),
          Point(147.0, 225.0),
          Point(148.0, 231.0),
          Point(147.0, 239.0),
          Point(144.0, 244.0),
          Point(139.0, 248.0),
          Point(134.0, 250.0),
          Point(126.0, 253.0),
          Point(119.0, 253.0),
          Point(115.0, 253.0)
        ];
      case StrokeTemplate.STAR:
        return [
          Point(75.0, 250.0),
          Point(75.0, 247.0),
          Point(77.0, 244.0),
          Point(78.0, 242.0),
          Point(79.0, 239.0),
          Point(80.0, 237.0),
          Point(82.0, 234.0),
          Point(82.0, 232.0),
          Point(84.0, 229.0),
          Point(85.0, 225.0),
          Point(87.0, 222.0),
          Point(88.0, 219.0),
          Point(89.0, 216.0),
          Point(91.0, 212.0),
          Point(92.0, 208.0),
          Point(94.0, 204.0),
          Point(95.0, 201.0),
          Point(96.0, 196.0),
          Point(97.0, 194.0),
          Point(98.0, 191.0),
          Point(100.0, 185.0),
          Point(102.0, 178.0),
          Point(104.0, 173.0),
          Point(104.0, 171.0),
          Point(105.0, 164.0),
          Point(106.0, 158.0),
          Point(107.0, 156.0),
          Point(107.0, 152.0),
          Point(108.0, 145.0),
          Point(109.0, 141.0),
          Point(110.0, 139.0),
          Point(112.0, 133.0),
          Point(113.0, 131.0),
          Point(116.0, 127.0),
          Point(117.0, 125.0),
          Point(119.0, 122.0),
          Point(121.0, 121.0),
          Point(123.0, 120.0),
          Point(125.0, 122.0),
          Point(125.0, 125.0),
          Point(127.0, 130.0),
          Point(128.0, 133.0),
          Point(131.0, 143.0),
          Point(136.0, 153.0),
          Point(140.0, 163.0),
          Point(144.0, 172.0),
          Point(145.0, 175.0),
          Point(151.0, 189.0),
          Point(156.0, 201.0),
          Point(161.0, 213.0),
          Point(166.0, 225.0),
          Point(169.0, 233.0),
          Point(171.0, 236.0),
          Point(174.0, 243.0),
          Point(177.0, 247.0),
          Point(178.0, 249.0),
          Point(179.0, 251.0),
          Point(180.0, 253.0),
          Point(180.0, 255.0),
          Point(179.0, 257.0),
          Point(177.0, 257.0),
          Point(174.0, 255.0),
          Point(169.0, 250.0),
          Point(164.0, 247.0),
          Point(160.0, 245.0),
          Point(149.0, 238.0),
          Point(138.0, 230.0),
          Point(127.0, 221.0),
          Point(124.0, 220.0),
          Point(112.0, 212.0),
          Point(110.0, 210.0),
          Point(96.0, 201.0),
          Point(84.0, 195.0),
          Point(74.0, 190.0),
          Point(64.0, 182.0),
          Point(55.0, 175.0),
          Point(51.0, 172.0),
          Point(49.0, 170.0),
          Point(51.0, 169.0),
          Point(56.0, 169.0),
          Point(66.0, 169.0),
          Point(78.0, 168.0),
          Point(92.0, 166.0),
          Point(107.0, 164.0),
          Point(123.0, 161.0),
          Point(140.0, 162.0),
          Point(156.0, 162.0),
          Point(171.0, 160.0),
          Point(173.0, 160.0),
          Point(186.0, 160.0),
          Point(195.0, 160.0),
          Point(198.0, 161.0),
          Point(203.0, 163.0),
          Point(208.0, 163.0),
          Point(206.0, 164.0),
          Point(200.0, 167.0),
          Point(187.0, 172.0),
          Point(174.0, 179.0),
          Point(172.0, 181.0),
          Point(153.0, 192.0),
          Point(137.0, 201.0),
          Point(123.0, 211.0),
          Point(112.0, 220.0),
          Point(99.0, 229.0),
          Point(90.0, 237.0),
          Point(80.0, 244.0),
          Point(73.0, 250.0),
          Point(69.0, 254.0),
          Point(69.0, 252.0)
        ];
      case StrokeTemplate.PIGTAIL:
        return [
          Point(81.0, 219.0),
          Point(84.0, 218.0),
          Point(86.0, 220.0),
          Point(88.0, 220.0),
          Point(90.0, 220.0),
          Point(92.0, 219.0),
          Point(95.0, 220.0),
          Point(97.0, 219.0),
          Point(99.0, 220.0),
          Point(102.0, 218.0),
          Point(105.0, 217.0),
          Point(107.0, 216.0),
          Point(110.0, 216.0),
          Point(113.0, 214.0),
          Point(116.0, 212.0),
          Point(118.0, 210.0),
          Point(121.0, 208.0),
          Point(124.0, 205.0),
          Point(126.0, 202.0),
          Point(129.0, 199.0),
          Point(132.0, 196.0),
          Point(136.0, 191.0),
          Point(139.0, 187.0),
          Point(142.0, 182.0),
          Point(144.0, 179.0),
          Point(146.0, 174.0),
          Point(148.0, 170.0),
          Point(149.0, 168.0),
          Point(151.0, 162.0),
          Point(152.0, 160.0),
          Point(152.0, 157.0),
          Point(152.0, 155.0),
          Point(152.0, 151.0),
          Point(152.0, 149.0),
          Point(152.0, 146.0),
          Point(149.0, 142.0),
          Point(148.0, 139.0),
          Point(145.0, 137.0),
          Point(141.0, 135.0),
          Point(139.0, 135.0),
          Point(134.0, 136.0),
          Point(130.0, 140.0),
          Point(128.0, 142.0),
          Point(126.0, 145.0),
          Point(122.0, 150.0),
          Point(119.0, 158.0),
          Point(117.0, 163.0),
          Point(115.0, 170.0),
          Point(114.0, 175.0),
          Point(117.0, 184.0),
          Point(120.0, 190.0),
          Point(125.0, 199.0),
          Point(129.0, 203.0),
          Point(133.0, 208.0),
          Point(138.0, 213.0),
          Point(145.0, 215.0),
          Point(155.0, 218.0),
          Point(164.0, 219.0),
          Point(166.0, 219.0),
          Point(177.0, 219.0),
          Point(182.0, 218.0),
          Point(192.0, 216.0),
          Point(196.0, 213.0),
          Point(199.0, 212.0),
          Point(201.0, 211.0)
        ];
      default:
        return [];
    }
  }
}
