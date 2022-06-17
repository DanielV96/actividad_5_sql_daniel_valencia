-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for heladeria_y_pizzeria_la_65
DROP DATABASE IF EXISTS `heladeria_y_pizzeria_la_65`;
CREATE DATABASE IF NOT EXISTS `heladeria_y_pizzeria_la_65` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `heladeria_y_pizzeria_la_65`;

-- Dumping structure for table heladeria_y_pizzeria_la_65.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `cust_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `age` tinyint(4) NOT NULL,
  PRIMARY KEY (`cust_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='here we are going to have all customers data';

-- Dumping data for table heladeria_y_pizzeria_la_65.customers: ~5 rows (approximately)
DELETE FROM `customers`;
INSERT INTO `customers` (`cust_id`, `name`, `age`) VALUES
	(1, 'daniel valencia', 26),
	(2, 'carolina torres', 18),
	(3, 'david cadavid', 13),
	(4, 'daniela sandoval', 22),
	(5, 'karol ramirez', 25);

-- Dumping structure for table heladeria_y_pizzeria_la_65.discount
DROP TABLE IF EXISTS `discount`;
CREATE TABLE IF NOT EXISTS `discount` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table heladeria_y_pizzeria_la_65.discount: ~5 rows (approximately)
DELETE FROM `discount`;
INSERT INTO `discount` (`id`, `name`, `value`) VALUES
	(1, 'happy birthday', 0.7),
	(2, 'miercoles de alegrias', 0.9),
	(3, 'sábados picosos', 0.6),
	(4, 'feliz aniversario', 0.9),
	(5, 'sonriele a la vida', 0.4);

-- Dumping structure for table heladeria_y_pizzeria_la_65.discounts_sales
DROP TABLE IF EXISTS `discounts_sales`;
CREATE TABLE IF NOT EXISTS `discounts_sales` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `sales_id` smallint(6) unsigned NOT NULL,
  `discount_id` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table heladeria_y_pizzeria_la_65.discounts_sales: ~5 rows (approximately)
DELETE FROM `discounts_sales`;
INSERT INTO `discounts_sales` (`id`, `sales_id`, `discount_id`) VALUES
	(1, 1, 3),
	(2, 2, 1),
	(3, 3, 2),
	(4, 4, 5),
	(5, 5, 4);

-- Dumping structure for table heladeria_y_pizzeria_la_65.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `prod_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `prod_precio` int(11) NOT NULL,
  PRIMARY KEY (`prod_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='here we are going to have all the products data';

-- Dumping data for table heladeria_y_pizzeria_la_65.products: ~5 rows (approximately)
DELETE FROM `products`;
INSERT INTO `products` (`prod_id`, `name`, `prod_precio`) VALUES
	(1, 'helado 3 bolas', 7500),
	(2, 'pizza hawaiana', 15000),
	(3, 'barquillo', 8500),
	(4, 'cucurocho', 10000),
	(5, 'pizza mixta', 17500);

-- Dumping structure for table heladeria_y_pizzeria_la_65.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_id` smallint(6) NOT NULL,
  `value` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='here we are going to have all sell''s data';

-- Dumping data for table heladeria_y_pizzeria_la_65.sales: ~5 rows (approximately)
DELETE FROM `sales`;
INSERT INTO `sales` (`id`, `date`, `customer_id`, `value`) VALUES
	(1, '2022-06-12', 5, 35000),
	(2, '2022-06-16', 3, 7500),
	(3, '2222-05-02', 2, 15000),
	(4, '2222-01-06', 4, 25500),
	(5, '2222-03-21', 1, 40000);

-- Dumping structure for table heladeria_y_pizzeria_la_65.sales_products
DROP TABLE IF EXISTS `sales_products`;
CREATE TABLE IF NOT EXISTS `sales_products` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sales_id` smallint(5) unsigned NOT NULL,
  `product_id` smallint(5) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='her we are going to have products and sales data together';

-- Dumping data for table heladeria_y_pizzeria_la_65.sales_products: ~5 rows (approximately)
DELETE FROM `sales_products`;
INSERT INTO `sales_products` (`id`, `sales_id`, `product_id`, `amount`, `price`) VALUES
	(1, 1, 5, 2, 17500),
	(2, 2, 1, 1, 7500),
	(3, 3, 2, 1, 15000),
	(4, 4, 3, 3, 8500),
	(5, 5, 4, 4, 10000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
