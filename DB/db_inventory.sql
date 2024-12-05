-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-12-2024 a las 07:30:06
-- Versión del servidor: 8.0.40
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_inventory`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `branches`
--

CREATE TABLE `branches` (
  `id` int UNSIGNED NOT NULL,
  `branch_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(34, 'Plaguicidas', 1, '2023-04-16 03:14:24', '2024-11-21 06:04:02'),
(55, 'Perecederos', 1, '2024-11-07 00:51:08', '2024-11-07 00:51:08'),
(56, 'Fertilizantes', 1, '2024-11-21 05:58:48', '2024-11-21 05:58:48'),
(57, 'Fitorreguladores', 1, '2024-11-21 06:04:11', '2024-11-21 06:04:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rtn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`, `rtn`) VALUES
(1, 'Palmas S de R.L', '9611702915', 'La Másica, Atlántida', NULL, '2024-11-01 07:45:37', '0101199902892');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` int UNSIGNED NOT NULL,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(37, 'Juan Pérez', 'juan.perez@example.com', '555-1234', 'Calle 1, Colonia Centro, Ciudad de México', 1, '2023-04-17 02:08:05', '2023-04-17 02:08:05'),
(38, 'María Rodríguez', 'maria.rodriguez@example.com', '555-5678', 'Calle 2, Colonia Condesa, Ciudad de México', 1, '2023-04-17 02:08:05', '2023-04-17 02:08:05'),
(39, 'Pedro García', 'pedro.garcia@example.com', '555-9876', 'Calle 3, Colonia Roma, Ciudad de México', 1, '2023-04-17 02:08:05', '2023-04-17 02:08:05'),
(53, 'Byron Guevara hernandez', 'prueba@gmail.com', '98285424', 'El Naranjal, La Masica', 1, '2024-11-21 05:49:27', '2024-11-21 06:41:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `name`, `icon`, `menu_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Capataz', 'contacts', 'customer.index', 0, '2020-07-29 13:17:51', '2020-07-29 13:17:56'),
(2, 0, 'Gestión de Productos', 'category', NULL, 0, '2020-07-29 13:17:53', '2020-07-29 13:17:54'),
(3, 0, 'Gestión de Existencias', 'assignment', NULL, 0, '2020-07-29 13:17:52', '2020-07-29 13:17:54'),
(4, 0, 'Gestión de usuarios', 'supervised_user_circle', NULL, 0, '2020-07-29 13:17:51', '2020-07-29 13:17:56'),
(5, 0, 'Reportes', 'receipt_long', 'report.index', 0, '2020-07-29 13:17:52', '2020-07-29 13:17:55'),
(6, 0, 'Configuración', 'settings', NULL, 0, '2020-07-29 13:17:58', '2020-07-29 13:17:57'),
(7, 2, 'Categorias', NULL, 'category.index', 0, '2020-07-29 13:17:50', '2020-07-29 13:17:57'),
(8, 2, 'Productos', NULL, 'product.index', 0, '2020-07-29 13:17:49', '2020-07-29 13:17:59'),
(9, 2, 'Proveedores', NULL, 'supplier.index', 0, '2020-07-29 13:17:49', '2020-07-29 13:18:00'),
(10, 3, 'Ordenes de Entrada', NULL, 'stock.index', 0, '2020-07-29 13:17:48', '2020-07-29 13:18:00'),
(11, 3, 'Ordenes de Salida', NULL, 'invoice.index', 0, '2020-07-29 13:17:47', '2020-07-29 13:18:01'),
(12, 4, 'Gestión de roles', NULL, 'role.index', 0, '2020-07-29 13:17:46', '2020-07-29 13:17:46'),
(13, 4, 'Usuarios', NULL, 'user.index', 0, '2020-07-29 13:17:44', '2020-07-29 13:17:44'),
(14, 6, 'Información de la empresa', NULL, 'company.index', 0, '2020-07-29 13:17:43', '2020-07-29 13:17:45'),
(15, 6, 'Cambiar la contraseña', NULL, 'password.index', 0, '2020-07-29 13:17:42', '2020-07-29 13:16:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_10_051212_create_products_table', 2),
(4, '2018_12_10_052440_create_vendors_table', 2),
(5, '2018_12_10_052501_create_customers_table', 2),
(6, '2018_12_10_052521_create_stocks_table', 2),
(7, '2018_12_10_052610_create_sells_table', 2),
(8, '2018_12_10_052631_create_sell_details_table', 2),
(9, '2018_12_10_075236_create_branches_table', 2),
(10, '2018_12_31_160432_create_categories_table', 3),
(11, '2019_01_12_163604_create_payments_table', 4),
(12, '2019_01_19_152250_biye--tabl', 5),
(13, '2019_02_10_113651_create_roles_table', 6),
(14, '2019_02_10_114632_create_permissions_table', 6),
(15, '2019_02_10_114735_create_menus_table', 6),
(16, '2019_02_14_130126_create_companies_table', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` int UNSIGNED NOT NULL,
  `sell_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int UNSIGNED NOT NULL,
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(124, 5, 1, '2019-02-23 00:54:16', '2019-02-23 00:54:16'),
(125, 5, 2, '2019-02-23 00:54:16', '2019-02-23 00:54:16'),
(126, 5, 3, '2019-02-23 00:54:16', '2019-02-23 00:54:16'),
(127, 5, 4, '2019-02-23 00:54:16', '2019-02-23 00:54:16'),
(128, 5, 5, '2019-02-23 00:54:16', '2019-02-23 00:54:16'),
(129, 5, 6, '2019-02-23 00:54:16', '2019-02-23 00:54:16'),
(130, 5, 9, '2019-02-23 00:54:16', '2019-02-23 00:54:16'),
(131, 5, 8, '2019-02-23 00:54:16', '2019-02-23 00:54:16'),
(132, 5, 7, '2019-02-23 00:54:16', '2019-02-23 00:54:16'),
(133, 5, 10, '2019-02-23 00:54:16', '2019-02-23 00:54:16'),
(134, 5, 11, '2019-02-23 00:54:16', '2019-02-23 00:54:16'),
(135, 5, 12, '2019-02-23 00:54:16', '2019-02-23 00:54:16'),
(136, 5, 15, '2019-02-23 00:54:16', '2019-02-23 00:54:16'),
(137, 6, 1, '2019-02-23 03:25:01', '2019-02-23 03:25:01'),
(138, 6, 3, '2019-02-23 03:25:01', '2019-02-23 03:25:01'),
(139, 6, 6, '2019-02-23 03:25:01', '2019-02-23 03:25:01'),
(140, 6, 15, '2019-02-23 03:25:01', '2019-02-23 03:25:01'),
(706, 4, 11, '2020-07-31 17:30:54', '2020-07-31 17:30:54'),
(707, 4, 2, '2020-07-31 17:30:54', '2020-07-31 17:30:54'),
(708, 4, 4, '2020-07-31 17:30:54', '2020-07-31 17:30:54'),
(709, 4, 15, '2020-07-31 17:30:54', '2020-07-31 17:30:54'),
(710, 4, 6, '2020-07-31 17:30:54', '2020-07-31 17:30:54'),
(721, 3, 1, '2020-11-17 17:03:42', '2020-11-17 17:03:42'),
(722, 3, 9, '2020-11-17 17:03:42', '2020-11-17 17:03:42'),
(723, 3, 8, '2020-11-17 17:03:42', '2020-11-17 17:03:42'),
(724, 3, 7, '2020-11-17 17:03:42', '2020-11-17 17:03:42'),
(725, 3, 2, '2020-11-17 17:03:42', '2020-11-17 17:03:42'),
(726, 3, 10, '2020-11-17 17:03:42', '2020-11-17 17:03:42'),
(727, 3, 11, '2020-11-17 17:03:42', '2020-11-17 17:03:42'),
(728, 3, 3, '2020-11-17 17:03:42', '2020-11-17 17:03:42'),
(729, 2, 1, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(730, 2, 9, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(731, 2, 8, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(732, 2, 7, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(733, 2, 2, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(734, 2, 10, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(735, 2, 11, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(736, 2, 3, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(737, 2, 12, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(738, 2, 13, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(739, 2, 4, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(740, 2, 5, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(741, 2, 14, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(742, 2, 15, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(743, 2, 6, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
(744, 12, 10, '2024-11-22 01:48:12', '2024-11-22 01:48:12'),
(745, 12, 11, '2024-11-22 01:48:12', '2024-11-22 01:48:12'),
(746, 12, 3, '2024-11-22 01:48:12', '2024-11-22 01:48:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 56, 'Nitrato de amonio:', 'Proporciona nitrógeno para un crecimiento rápido.', 1, '2024-11-21 06:10:46', '2024-11-21 06:10:46'),
(2, 56, 'Superfosfato', 'Rico en fósforo para el desarrollo de raíces.', 1, '2024-11-21 06:11:02', '2024-11-21 06:11:02'),
(3, 56, 'Cloruro de potasio', 'Fuente de potasio para fortalecer las plantas.', 1, '2024-11-21 06:11:15', '2024-11-21 06:11:15'),
(4, 34, 'Clorpirifos', 'Insecticida utilizado contra plagas de suelos y hojas.', 1, '2024-11-21 06:11:32', '2024-11-21 06:11:32'),
(5, 34, 'Mancozeb', 'Fungicida para prevenir hongos en cultivos.', 1, '2024-11-21 06:11:49', '2024-11-21 06:11:49'),
(6, 34, 'Glifosato', 'Herbicida no selectivo para eliminar malezas.', 1, '2024-11-21 06:12:02', '2024-11-21 06:12:02'),
(7, 57, 'Ácido giberélico', 'Estimula el alargamiento celular y la germinación.', 1, '2024-11-21 06:12:27', '2024-11-21 06:12:27'),
(8, 57, 'Etileno', 'Hormona gaseosa para acelerar la maduración de frutas.', 1, '2024-11-21 06:12:41', '2024-11-21 06:12:41'),
(9, 57, 'Ácido naftalenoacético (ANA)', 'Estimula el enraizamiento.', 1, '2024-11-21 06:12:58', '2024-11-21 06:12:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `role_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(2, 'Superadministrador', '2019-02-12 03:59:54', '2023-04-17 04:53:28'),
(3, 'Gerente', '2019-02-13 00:07:41', '2023-04-17 04:35:56'),
(4, 'Vendedor', '2019-02-13 01:34:11', '2023-04-17 04:36:08'),
(5, 'Controlador', '2019-02-13 05:53:15', '2023-04-17 04:41:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sells`
--

CREATE TABLE `sells` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `branch_id` int NOT NULL DEFAULT '1',
  `total_amount` double NOT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `sell_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` double NOT NULL DEFAULT '0',
  `payment_method` tinyint NOT NULL DEFAULT '0',
  `payment_status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sells`
--

INSERT INTO `sells` (`id`, `user_id`, `customer_id`, `branch_id`, `total_amount`, `paid_amount`, `sell_date`, `discount_amount`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 12, 37, 1, 14997, 0, '2024-11-11', 0, 2, 0, '2024-11-21 06:23:04', '2024-11-21 06:23:04'),
(2, 12, 37, 1, 35000, 0, '2024-11-11', 0, 2, 0, '2024-11-22 01:47:21', '2024-11-22 01:47:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sell_details`
--

CREATE TABLE `sell_details` (
  `id` int UNSIGNED NOT NULL,
  `stock_id` int NOT NULL,
  `sell_id` int NOT NULL,
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `user_id` int NOT NULL,
  `chalan_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold_quantity` int NOT NULL,
  `buy_price` double NOT NULL,
  `sold_price` double NOT NULL,
  `total_buy_price` double NOT NULL,
  `total_sold_price` double NOT NULL,
  `discount` double NOT NULL,
  `discount_type` tinyint NOT NULL,
  `discount_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sell_details`
--

INSERT INTO `sell_details` (`id`, `stock_id`, `sell_id`, `product_id`, `category_id`, `vendor_id`, `user_id`, `chalan_no`, `selling_date`, `customer_id`, `sold_quantity`, `buy_price`, `sold_price`, `total_buy_price`, `total_sold_price`, `discount`, `discount_type`, `discount_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 56, 93, 12, '2024-11-21', '2024-11-11', '37', 50, 300, 300, 15000, 14997, 3, 1, 3, '2024-11-21 06:23:04', '2024-11-21 06:23:04'),
(2, 2, 2, 7, 57, 94, 12, '2024-11-21', '2024-11-11', '37', 100, 250, 350, 25000, 35000, 0, 1, 0, '2024-11-22 01:47:21', '2024-11-22 01:47:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stocks`
--

CREATE TABLE `stocks` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `product_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `user_id` int NOT NULL,
  `chalan_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `stock_quantity` int NOT NULL,
  `current_quantity` int NOT NULL DEFAULT '0',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `stocks`
--

INSERT INTO `stocks` (`id`, `category_id`, `product_code`, `product_id`, `vendor_id`, `user_id`, `chalan_no`, `buying_price`, `selling_price`, `discount`, `stock_quantity`, `current_quantity`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 56, '1732170012', 1, 93, 12, '2024-11-21', 300, 300, 0, 100, 50, 'Prueba', 1, '2024-11-21 06:20:12', '2024-11-21 06:23:04'),
(2, 57, '1732170040', 7, 94, 12, '2024-11-21', 250, 350, 0, 100, 0, 'prueba', 1, '2024-11-21 06:20:40', '2024-11-22 01:47:21'),
(3, 57, '1732170086', 7, 94, 12, '2024-11-21', 350, 350, 0, 100, 100, 'prueba', 1, '2024-11-21 06:21:26', '2024-11-21 06:21:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` int NOT NULL DEFAULT '1',
  `role_id` int NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `branch_id`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 'Byron Guevara', 'bayronh05@gmail.com', '$2y$10$W/nqTuN0X.JaGtGBkpw01OTSL0I3aShYL9QusP8Q5kIZ2AviqQHKC', 1, 2, '55btWNL9jEjHiedX0KduuH8J36AhDLn44Bh1QnxmjdCPGAh9t91gBUz8lLP6', '2020-07-31 17:27:25', '2023-04-17 05:20:18'),
(21, 'Prueba', 'PRUEBA@gmail.com', '$2y$10$aYp1BTgmR53WMczBIIhdaeZPfBD1CkXoWdLtdsGQVg1xNssp4hrGq', 1, 3, 'v0soSyGXgAJyzlsPWpYvTrX6msDJfO5OQVtCxN5ypxjLGh2F0I8EdvfWl959', '2024-11-22 01:49:13', '2024-11-22 01:50:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendors`
--

CREATE TABLE `vendors` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rtn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `phone`, `email`, `address`, `created_at`, `updated_at`, `rtn`) VALUES
(92, 'Agrichem de México', '651 88 92 15', 'info@agroalpanseque.com', 'Calle San Juan 8 50360 Daroca (Zaragoza)  Oficinas en Zaragoza', '2024-11-21 06:14:47', '2024-11-21 06:14:47', NULL),
(93, 'Syngenta México', '669 180 3371', 'info@agrichem.mx', 'Ciudad de Mexico', '2024-11-21 06:16:35', '2024-11-21 06:16:35', NULL),
(94, 'FitoHormonas de México', '+52 (461) 616-2084', 'intagri@intagri.com.mx', 'Mexico', '2024-11-21 06:19:38', '2024-11-21 06:19:38', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sell_id` (`sell_id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sells`
--
ALTER TABLE `sells`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sell_details`
--
ALTER TABLE `sell_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_id` (`stock_id`),
  ADD KEY `selling_date` (`selling_date`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sell_id` (`sell_id`);

--
-- Indices de la tabla `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `stock_quantity` (`stock_quantity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=747;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `sells`
--
ALTER TABLE `sells`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sell_details`
--
ALTER TABLE `sell_details`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
