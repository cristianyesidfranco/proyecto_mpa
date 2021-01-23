-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 27-11-2020 a las 13:40:31
-- Versión del servidor: 5.7.28
-- Versión de PHP: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancos`
--

DROP TABLE IF EXISTS `bancos`;
CREATE TABLE IF NOT EXISTS `bancos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `bancos`
--

INSERT INTO `bancos` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Bancolombia ', 'banco ubicado en Colombia ', '2020-10-08 22:51:27', '2020-10-08 22:51:27'),
(2, 'Davivienda ', 'el bencode la casita ', '2020-10-08 22:51:27', '2020-10-08 22:51:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre_categoria`, `slug`, `body`, `created_at`, `updated_at`) VALUES
(2, 'Teclado', 'teclado', 'Rem ab quam porro dignissimos. Consequuntur harum error sint deserunt id. Rerum est rerum assumenda ex reiciendis. Sunt perferendis quia enim. Cumque quis eum voluptatum. Aut consectetur nemo omnis perferendis ratione deserunt. Facilis commodi facere voluptatem molestias laboriosam vel dolor. Quia et alias provident dicta. Vel eveniet commodi reiciendis quibusdam. Cum aliquam harum explicabo tempore rerum. Quae dicta voluptate eum aliquam omnis.', '2020-09-23 22:22:03', '2020-09-23 22:22:03'),
(3, 'Mouse', 'mouse', 'Vel provident veritatis deserunt natus delectus id. Adipisci id et et. Mollitia autem quia inventore. Qui officiis quod nesciunt vel omnis sed. Accusantium similique eos debitis sequi cum voluptatem aut. Est aperiam laboriosam cum sed repellat error. Harum temporibus nam exercitationem nulla sit qui qui. Non error repellat laborum at totam nihil incidunt. Ducimus qui aut modi et aut. Sed molestias et quod deserunt a et distinctio. Beatae est praesentium labore.', '2020-09-23 22:22:03', '2020-09-23 22:22:03'),
(4, 'Sonido', 'sonido', 'Excepturi quidem veniam ducimus vitae dignissimos. Laboriosam fugit necessitatibus molestias minus amet et. Quas aut animi ut corporis esse. Qui quia velit magni est consequuntur neque reprehenderit. Fuga quo sed dolorem dicta. Magni repudiandae aut perspiciatis nobis. Quo aut laboriosam libero nisi. Id illo laboriosam nostrum ab. Porro dolorem perspiciatis sed a. Placeat unde reprehenderit impedit iusto expedita molestiae doloribus.', '2020-09-23 22:22:03', '2020-09-23 22:22:03'),
(5, 'Camaras', 'camaras', 'Quos dolore autem culpa explicabo eos perferendis dolor. Quam nulla corrupti dolor rerum nobis. Earum ut laborum aut aut qui corporis. Nihil ea sunt aut ut deleniti facere molestiae. Recusandae officia vitae id sunt est. Quam rerum et quo quis non illum voluptatem. Est et sint et odio temporibus quo rem. Ut omnis ducimus perferendis animi sequi.', '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(6, 'Video', 'video', 'Excepturi voluptatem nulla animi nesciunt sequi incidunt. Rerum totam autem nulla deleniti quam. Libero qui quos odio eius reiciendis omnis aut. Praesentium ducimus tempora ipsum quasi ut. Minus enim debitis praesentium eius. Animi voluptatem voluptatibus ut vero. Fugit dolor et enim architecto rerum voluptates sed. Harum iure laboriosam id temporibus dolorum aut. Molestiae non suscipit suscipit. Ad quas soluta quo. Velit nobis quae error recusandae sed ut.', '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(7, 'Nuevo', 'nuevo', 'Quia sed quia temporibus deserunt quas. Et officiis ut error qui mollitia amet nesciunt. Temporibus eveniet nam aut vel quia harum consectetur. Et minima atque sunt recusandae doloremque dolorum. Cupiditate voluptas ipsum debitis similique. Vel voluptatem autem sunt velit. Dolorem qui laboriosam natus consequatur quae est. Officiis non cumque voluptatem ut.', '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(8, 'Accesorios', 'Accesorios', 'Aperiam ea at ut saepe. Praesentium eaque quia libero voluptatem neque praesentium. Quis aut quia ratione nostrum. Numquam minus possimus repellat est sit corrupti. Et dignissimos a est distinctio natus corrupti aut exercitationem. Occaecati qui vel at perferendis optio repudiandae temporibus. Est inventore est dolor inventore. Harum voluptatem repellat ipsum et autem id. Soluta excepturi pariatur et eaque. Aut quidem nihil nam nulla qui et est optio. Nihil animi sit adipisci.', '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(9, 'Celulares', 'celulares', 'sdwc ecwct r rtg reftv3tvhg', '2020-10-07 00:01:30', '2020-10-07 00:01:50'),
(10, 'Perifericos', 'perifericos', 'componentes de hardware para portatiles, laptops, portatiles etc....', '2020-10-07 20:58:55', '2020-10-07 20:58:55'),
(11, 'Portatiles', 'portátiles', 'portatiles  nuevos y usados de calidad de varias marcas', '2020-10-07 21:36:40', '2020-10-07 21:36:40'),
(12, 'tabletas', 'tabletas', 'categoria tabletas donde estan todas las tabletas por marcas', '2020-10-09 04:22:26', '2020-10-09 04:22:26'),
(13, 'pc', 'pc', 'ewrfgv', '2020-10-28 22:52:25', '2020-10-28 22:52:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_facturas`
--

DROP TABLE IF EXISTS `detalle_facturas`;
CREATE TABLE IF NOT EXISTS `detalle_facturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encabezado_factura_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_detalle_factura_producto` (`producto_id`),
  KEY `fk_detalle_factura_encabezado_factura` (`encabezado_factura_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezado_factura`
--

DROP TABLE IF EXISTS `encabezado_factura`;
CREATE TABLE IF NOT EXISTS `encabezado_factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` bigint(20) UNSIGNED NOT NULL,
  `tipo_pago_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_encabezado_factura_tipo_pago` (`tipo_pago_id`),
  KEY `fk_encabezado_factura_user` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

DROP TABLE IF EXISTS `marcas`;
CREATE TABLE IF NOT EXISTS `marcas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_marca` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre_marca`, `slug`, `body`, `created_at`, `updated_at`) VALUES
(1, 'panasonic', 'panasonic', 'xsdce rvtg tghbt  yh', '2020-09-21 21:19:28', '2020-09-21 21:19:28'),
(2, 'Lyda Sauer', 'ruben-schaefer', 'Non voluptas iste hic fugiat. Nam modi neque esse distinctio a quas. Ut ut voluptatem sit asperiores sapiente amet est. Autem soluta voluptas temporibus voluptatibus iure. Maiores vel est libero et. Ut modi ut mollitia praesentium quia. Aut atque assumenda voluptatem ex nulla. Animi assumenda aliquid incidunt perspiciatis aliquam modi voluptas.', '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(3, 'Tremaine Harvey', 'elvera-windler-sr', 'Et repudiandae sed deleniti aut omnis id laborum et. Pariatur asperiores placeat a. Exercitationem hic eos quaerat sed et repellendus similique. Vel deserunt quis recusandae alias quisquam odit eos. Porro aliquid saepe quia eum quo. In ut cum qui aut voluptas dolor aut. Eos aut nihil magni non quia et earum. Qui ipsa numquam dolore tempora doloremque nihil. Eaque est ad et perspiciatis id.', '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(4, 'Mandy Murphy DVM', 'micaela-hayes', 'Natus vel fuga quos tenetur. Voluptatum vel mollitia voluptatem accusantium dolores. Aut distinctio adipisci qui dolor amet. Et doloribus labore quisquam error voluptas. Sequi sed officiis placeat et. Est occaecati optio reiciendis tempore commodi qui veniam. Perspiciatis quis quia tempora minima sequi corporis ut iste. Quia natus tenetur nisi similique qui ipsum.', '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(5, 'Prof. Izaiah Murphy I', 'miss-aileen-ritchie-ii', 'Vitae voluptate dolores earum pariatur atque sed. Quasi natus accusamus dolores maiores sapiente. Cum perferendis veniam nobis quisquam voluptates. Non eligendi qui totam mollitia cupiditate beatae. Numquam ad modi qui recusandae. Placeat ut ad vitae esse voluptatibus alias et natus.', '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(6, 'Gonzalo Bahringer V', 'miss-angelica-nienow-ii', 'Laborum sed nostrum ratione aliquam. Quam omnis accusamus cumque magni quis aut labore. Eos autem dignissimos itaque itaque aperiam rerum. Dignissimos iure magni et natus qui adipisci. Exercitationem molestiae unde qui expedita laborum aut. Quia libero quaerat maiores dolorem. Accusantium ipsa non labore alias voluptates similique et. Sed eos expedita optio itaque suscipit voluptatibus.', '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(7, 'Dr. Arely Hermann', 'benedict-murphy', 'Et voluptatem unde eum repudiandae perspiciatis quae. Vitae beatae ipsam cum quibusdam ipsa dolor aut tempora. Velit voluptatem corporis rerum soluta quia vel earum. Et voluptates veniam quaerat qui ut molestias repellendus. Consequuntur voluptatem sit laboriosam sed incidunt nemo. Inventore suscipit alias qui vel consectetur possimus. Deserunt autem ex recusandae corporis qui porro. Ut dolorum veniam iste consequatur sit accusantium. Quia doloremque tenetur ex.', '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(8, 'Miss Helen Breitenberg PhD', 'jasmin-batz', 'Et ut ad eligendi veniam. Ut aut rerum eveniet nemo consequatur quo. Nesciunt aut molestiae sint quam est. Debitis ipsa cupiditate quia veritatis et explicabo. Eveniet atque quia animi vel ut earum placeat. Totam quidem qui est culpa accusantium ut. Aut corrupti iste ducimus reiciendis amet sunt temporibus sint. Sed ipsa reprehenderit sint eaque et aut tempora.', '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(9, 'Mariah Cummings', 'gail-johns', 'Nam earum repudiandae est. Qui reiciendis rerum perferendis perspiciatis aut ut odio. Consectetur aut occaecati doloremque ea et officia sint. Nesciunt praesentium doloremque occaecati maxime. Omnis voluptate aut sit natus at. Vel commodi voluptatem blanditiis qui ullam. Aliquid nihil esse dolores voluptatem magnam distinctio. Iusto harum harum tenetur eaque.', '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(10, 'Kathryne Schuppe', 'krystel-ortiz', 'Sed iusto aut natus ea blanditiis. Laudantium quasi ut et reiciendis. Facere iure harum in optio. Nulla ullam et nesciunt qui quidem id non. Laborum praesentium cum doloribus asperiores facilis nemo ea. Velit dicta facilis sed qui laudantium cum exercitationem nisi. Occaecati vel eligendi sed autem eius mollitia. Ut nam dolores distinctio alias ratione quas libero. Ipsa est vel distinctio ea et. Quia corporis aut dolore non.', '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(15, 'iphones', 'iphones', 'fgbhey fh ad', '2020-09-29 04:38:23', '2020-09-29 04:39:46'),
(16, 'lenovo', 'lenovo', 'sxrcwec rtvyv5454v 5uy4', '2020-10-07 00:03:45', '2020-10-07 00:04:02'),
(17, 'Samsung', 'samsung', 'marca americana', '2020-10-07 21:00:33', '2020-10-07 21:00:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_01_20_084450_create_roles_table', 1),
(4, '2015_01_20_084525_create_role_user_table', 1),
(5, '2015_01_24_080208_create_permissions_table', 1),
(6, '2015_01_24_080433_create_permission_role_table', 1),
(7, '2015_12_04_003040_add_special_role_column', 1),
(8, '2017_10_17_170735_create_permission_user_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Navegar usuarios', 'users.index', 'Ver cualquier usuario del sistema', '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(2, 'Ver usuarios', 'users.show', 'Ver cualquier usuario del sistema', '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(3, 'Editar usuarios', 'users.edit', 'Ver cualquier usuario del sistema', '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(4, 'Eliminar usuarios', 'users.destroy', 'Eliminar cualquier usuario del sistema', '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(5, 'Navegar roles', 'roles.index', 'Lista y navega todos los rol del sistema', '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(6, 'Ver roles', 'roles.show', 'Ver en detalle cada usuario del sistema rol del sistema', '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(7, 'crear roles', 'roles.create', 'editar cualquie dato de un rol del sistema', '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(8, 'Editar roles', 'roles.edit', 'editar cualquie dato de un rol del sistema', '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(9, 'Eliminar roles', 'roles.destroy', 'Eliminar cualquier rol del sistema', '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(10, 'Navegar productos', 'productos.index', 'Lista y navega todos los producto del sistema', '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(11, 'Ver productos', 'productos.show', 'Ver en detalle cada usuario del sistema producto del sistema', '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(12, 'crear productos', 'productos.create', 'editar cualquie dato de un producto del sistema', '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(13, 'Editar productos', 'productos.edit', 'editar cualquie dato de un producto del sistema', '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(14, 'Eliminar productos', 'productos.destroy', 'Eliminar cualquier producto del sistema', '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(15, 'Navegar categorias', 'categorías.index', 'podrá visualizar todas las categorias', NULL, NULL),
(16, 'créar categorias', 'categorias.create', 'podrá crear categorias', NULL, NULL),
(17, 'editar categorias', 'categorias.edit', 'podrá editar las categorias', NULL, NULL),
(18, 'ver categorias', 'categorias.show', 'podrá listar las categorias', NULL, NULL),
(19, 'eliminar categorias', 'categorias.destroy', 'podrá eliminar las categorias', NULL, NULL),
(20, 'Navegar marcas', 'marcas.index', 'podrá ver las categorias', NULL, NULL),
(21, 'Ver marcas', 'marcas.show', 'Podra ver las marcas', NULL, NULL),
(22, 'Crear marcas', 'marcas.create', 'podrá crear marcas', NULL, NULL),
(23, 'Editar marcas', 'marcas.edit', 'podrá crear marcas', NULL, NULL),
(24, 'Eliminar marcas', 'marcas.destroy', 'podrá eliminar marcas', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, 6, '2020-10-02 00:33:42', '2020-10-02 00:33:42'),
(3, 5, 6, '2020-10-02 00:33:42', '2020-10-02 00:33:42'),
(4, 6, 6, '2020-10-02 00:33:42', '2020-10-02 00:33:42'),
(5, 10, 6, '2020-10-02 00:33:43', '2020-10-02 00:33:43'),
(6, 11, 6, '2020-10-02 00:33:43', '2020-10-02 00:33:43'),
(7, 15, 6, '2020-10-02 00:33:43', '2020-10-02 00:33:43'),
(8, 18, 6, '2020-10-02 00:33:43', '2020-10-02 00:33:43'),
(9, 20, 6, '2020-10-02 00:33:43', '2020-10-02 00:33:43'),
(21, 1, 6, '2020-10-03 01:41:11', '2020-10-03 01:41:11'),
(22, 21, 6, '2020-10-03 01:41:11', '2020-10-03 01:41:11'),
(27, 5, 8, '2020-10-06 21:46:41', '2020-10-06 21:46:41'),
(28, 6, 8, '2020-10-06 21:46:41', '2020-10-06 21:46:41'),
(29, 7, 8, '2020-10-06 21:46:41', '2020-10-06 21:46:41'),
(30, 8, 8, '2020-10-06 21:46:42', '2020-10-06 21:46:42'),
(31, 9, 8, '2020-10-06 21:46:42', '2020-10-06 21:46:42'),
(32, 10, 9, '2020-10-07 00:30:08', '2020-10-07 00:30:08'),
(33, 11, 9, '2020-10-07 00:30:08', '2020-10-07 00:30:08'),
(34, 12, 9, '2020-10-07 00:30:08', '2020-10-07 00:30:08'),
(35, 13, 9, '2020-10-07 00:30:08', '2020-10-07 00:30:08'),
(36, 14, 9, '2020-10-07 00:30:09', '2020-10-07 00:30:09'),
(37, 15, 9, '2020-10-28 22:44:14', '2020-10-28 22:44:14'),
(38, 16, 9, '2020-10-28 22:44:14', '2020-10-28 22:44:14'),
(39, 17, 9, '2020-10-28 22:44:14', '2020-10-28 22:44:14'),
(40, 18, 9, '2020-10-28 22:44:14', '2020-10-28 22:44:14'),
(41, 19, 9, '2020-10-28 22:44:14', '2020-10-28 22:44:14'),
(42, 20, 9, '2020-10-28 22:44:14', '2020-10-28 22:44:14'),
(43, 21, 9, '2020-10-28 22:44:14', '2020-10-28 22:44:14'),
(44, 22, 9, '2020-10-28 22:44:14', '2020-10-28 22:44:14'),
(45, 23, 9, '2020-10-28 22:44:15', '2020-10-28 22:44:15'),
(46, 24, 9, '2020-10-28 22:44:15', '2020-10-28 22:44:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_user`
--

DROP TABLE IF EXISTS `permission_user`;
CREATE TABLE IF NOT EXISTS `permission_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_user_permission_id_index` (`permission_id`),
  KEY `permission_user_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_user`
--

INSERT INTO `permission_user` (`id`, `permission_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 10, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `nombre_producto` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `precio_unitario` decimal(10,0) UNSIGNED NOT NULL,
  `file` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `unidades_stock` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `fk_marca_producto` (`marca_id`),
  KEY `fk_categoria_producto` (`categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `marca_id`, `categoria_id`, `nombre_producto`, `slug`, `body`, `precio_unitario`, `file`, `unidades_stock`, `created_at`, `updated_at`) VALUES
(3, 10, 2, 'Jovan Leffler', 'viviane-upton', 'Tenetur doloribus magnam ab fuga cum sapiente voluptas. Eos odio perspiciatis aut qui voluptatem pariatur velit. Ipsam amet et suscipit aliquam. Est voluptas eos officiis. Ut temporibus quaerat labore qui et doloribus. Velit molestiae soluta aut laborum dicta accusantium. Sunt sequi voluptatibus sunt eligendi. Quisquam perspiciatis aliquam omnis deleniti dolorem at. Cupiditate dolorum nobis molestiae hic.', '59', 'https://lorempixel.com/300/300/?36317', 849, '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(4, 10, 2, 'Irma Willms', 'miss-valentine-swaniawski-iii', 'Fuga qui dolor quia commodi. Consequatur est iste vel voluptas totam esse. Illo vero quis qui. Omnis nostrum similique neque quae. Labore est et est vel. Et eos fuga magnam et. Ullam tempore perspiciatis ipsum ut. Praesentium tempora omnis aliquam rerum qui qui vitae mollitia. Repudiandae similique est asperiores harum aliquam magnam ut ab. Dignissimos quos est odio ipsum officiis. Voluptatem qui quo soluta nam deleniti.', '16', 'https://lorempixel.com/300/300/?97326', 996, '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(7, 6, 3, 'Madelyn Gutkowski', 'dr-orpha-casper', 'Dolores ipsam odio commodi harum sed debitis dicta. Sit distinctio exercitationem repellendus dignissimos quo accusantium ut. Quae id recusandae quia ut nostrum assumenda. Delectus et voluptas voluptatibus non rerum. Et facilis ipsam rerum consequatur laborum nulla eum. Odio vitae est alias libero impedit. Vitae nostrum voluptatibus aut rerum ipsa. Officia possimus autem eligendi eum harum. Repudiandae iste et aliquam quis sequi beatae quo.', '45', 'https://lorempixel.com/300/300/?47606', 5398, '2020-09-23 22:22:04', '2020-09-23 22:22:04'),
(9, 10, 5, 'Jacky Schmitt', 'emerson-gutmann', 'Saepe dolores quia dignissimos. Dolor est sit sequi iusto nulla. Quia qui dolores sunt dolor. Saepe fuga dignissimos sit velit animi. Odit repellat ut facere quis. Est mollitia est nemo quae provident voluptatum. Et quia voluptatem doloribus. Maiores repellat facere doloremque ipsa provident delectus illo. Sint adipisci delectus ut voluptatibus.', '31', 'https://lorempixel.com/300/300/?46287', 92903, '2020-09-23 22:22:05', '2020-09-23 22:22:05'),
(10, 9, 2, 'Giovanni Zemlak', 'micah-hegmann', 'Enim corporis vero dolor optio enim. Sapiente labore quae odit dolores quod autem necessitatibus. Nobis sed molestiae ea eveniet temporibus. Dolore autem amet autem eos. Quis rem blanditiis perspiciatis explicabo odio. Eos qui consequatur aut sunt expedita assumenda voluptatem. Maiores et corrupti quaerat ipsum reiciendis doloribus facilis reiciendis. Ratione corporis earum quia officiis non sit sapiente. Eos vitae adipisci impedit officiis alias aperiam quae.', '15', 'https://lorempixel.com/300/300/?87987', 46303, '2020-09-23 22:22:05', '2020-09-23 22:22:05'),
(17, 6, 7, 'Emil Mohr', 'rupert-bosco', 'Non harum praesentium tenetur voluptas corrupti beatae. Aliquam mollitia aliquam molestiae veniam est voluptatem. Officia numquam et amet minus. Quia voluptatum aut voluptatem aperiam et accusantium facilis. Ratione quod cum iure rerum ut. Facilis impedit ex eius soluta qui quos. Quia enim distinctio perferendis quia aspernatur pariatur.', '72', 'https://lorempixel.com/300/300/?25543', 921, '2020-09-23 22:22:05', '2020-09-23 22:22:05'),
(18, 8, 7, 'Mr. Jovanny Schroeder I', 'miss-addison-quigley-md', 'Natus quod quia provident architecto ipsum cupiditate. Soluta numquam dolor et temporibus totam animi. Omnis magnam cupiditate qui aliquam voluptatem id fugit. Quis ipsa nulla aspernatur corporis. Molestias esse omnis minus sunt et. Aperiam qui repellendus autem fugiat cumque tenetur aut. Ea quo unde quia voluptates molestiae et eos. Veritatis et sed velit eum aut et. Ipsa dolorum vero dolorem magnam et omnis qui inventore.', '51', 'https://lorempixel.com/300/300/?51896', 6860, '2020-09-23 22:22:05', '2020-09-23 22:22:05'),
(20, 6, 6, 'Jacquelyn Jakubowski', 'orlando-larson', 'Nihil vel illo quisquam laboriosam reiciendis accusamus consequatur. Ratione aspernatur laboriosam quia assumenda. Reiciendis delectus deleniti quidem fugit sed reiciendis fugit. Dolor voluptas mollitia illum quibusdam. Sit corporis laborum dolores eligendi. Ut velit incidunt delectus magnam magnam. Amet aut ducimus explicabo alias optio voluptatibus rerum. Qui sed necessitatibus laboriosam qui est cupiditate. Libero eligendi sunt debitis illo. Et architecto dolore fugit et.', '58', 'https://lorempixel.com/300/300/?43398', 72699, '2020-09-23 22:22:05', '2020-09-23 22:22:05'),
(22, 7, 4, 'Gonzalo Koepp', 'morgan-gutmann', 'Illum eligendi delectus esse et amet. Cupiditate et delectus numquam temporibus eos pariatur porro. Minima incidunt voluptate vel aliquid dolore. Aspernatur soluta nobis aliquam quae voluptate. Odio odit rerum quisquam quibusdam voluptate eius praesentium. Explicabo eaque accusamus perferendis eos tenetur est. Eius molestias laudantium rerum hic qui distinctio et. Autem occaecati odio quia. Aut est architecto est vel. Dolorem et qui vitae fuga aliquam laboriosam ad.', '69', 'https://lorempixel.com/300/300/?95177', 5906, '2020-09-23 22:22:05', '2020-09-23 22:22:05'),
(23, 6, 3, 'Prof. Fausto West', 'prof-quentin-kessler', 'Dolores modi in ut amet fugiat error est. Autem reprehenderit vitae aliquid molestiae est mollitia iure. Tenetur et earum optio eaque at. Velit perferendis sit veniam iste. Molestiae est sequi incidunt. Adipisci quia vel sunt fugiat et sit. Qui quia quia ea ut qui vel. Mollitia sapiente ipsam asperiores aut reprehenderit. Veniam quas numquam dolor ratione asperiores voluptatem beatae. Excepturi non omnis corrupti repellendus cupiditate. Sapiente ut iste sit repellat magnam.', '19', 'https://lorempixel.com/300/300/?25567', 63868, '2020-09-23 22:22:05', '2020-09-23 22:22:05'),
(24, 6, 6, 'Rhoda Mueller', 'serena-oconnell', 'Perferendis non quibusdam nulla. Maxime dolore quia rerum non enim reprehenderit aut. Enim dignissimos earum quaerat fugit repudiandae. Enim eos vel dolorum voluptate illo laudantium. Quia nihil sint sit ex sapiente consectetur et. Est ipsam architecto omnis deserunt aut est. Quo sed est et error culpa. Et corrupti voluptas voluptatem ipsam possimus. Officia ipsum quae aliquid culpa amet. Provident fuga provident aliquam.', '44', 'https://lorempixel.com/300/300/?47885', 67067, '2020-09-23 22:22:05', '2020-09-23 22:22:05'),
(26, 7, 3, 'Clinton Howe', 'mallie-legros', 'Qui omnis voluptatibus dolorem. Asperiores nam tenetur et voluptatem quae at. Repudiandae nemo hic esse placeat animi occaecati. Amet voluptas quia maiores sit ut quaerat minus. Eligendi consequatur pariatur nam et qui odit. Dolor ut praesentium minus ipsam dolor placeat unde. Rerum consequatur omnis commodi dolorem est natus quo sint. Et ducimus quasi et.', '86', 'https://lorempixel.com/300/300/?82126', 21592, '2020-09-23 22:22:05', '2020-09-23 22:22:05'),
(28, 1, 5, 'Chaya Goyette PhD', 'otto-bergnaum', 'Ipsam harum nihil et id veniam dolorem. Consequatur rerum distinctio deserunt perferendis a esse et. Similique tempore sapiente animi ut. Dolorum mollitia quibusdam nisi consequatur maxime ipsum facere. Explicabo sint id libero. Rerum dolore nam quaerat voluptatum. Quo totam cumque mollitia molestiae ex maiores sit id. Qui quibusdam sed id. Qui occaecati eveniet autem voluptatem. Et magnam ut autem est eveniet.', '40', 'https://lorempixel.com/300/300/?86293', 6272, '2020-09-23 22:22:05', '2020-09-23 22:22:05'),
(32, 2, 7, 'Prof. River Mayer', 'prof-sister-carter-iv', 'Repudiandae omnis qui tempore. Qui asperiores officia voluptas aperiam assumenda. Fuga eum id eos rerum iusto magnam molestias. Dolore voluptatem magnam quasi vel. Odit voluptatibus officiis veritatis incidunt sit maiores et ab. Necessitatibus dolorem sequi doloremque occaecati libero. Voluptate molestias occaecati voluptatem cum recusandae. Dolores illum earum voluptas sed doloremque enim repudiandae.', '44', 'https://lorempixel.com/300/300/?58856', 857, '2020-09-23 22:22:05', '2020-09-23 22:22:05'),
(34, 1, 3, 'Prof. Shawna Trantow', 'prof-marianna-lesch', 'Corrupti nostrum ut et ea sed quod. Perspiciatis exercitationem pariatur facilis sunt mollitia praesentium adipisci. Modi perspiciatis odit occaecati natus eveniet iste. Itaque in sit velit perferendis sit ullam. Rerum excepturi et omnis placeat. Et odio maxime accusamus modi natus. Nihil quis consectetur ut quas qui. Est aliquid quasi soluta quasi quo. Sed assumenda hic accusamus mollitia odio autem.', '15', 'https://lorempixel.com/300/300/?80960', 39294, '2020-09-23 22:22:05', '2020-09-23 22:22:05'),
(35, 1, 6, 'Nickolas Corwin', 'miss-shany-ohara', 'Amet officiis non animi iusto. Et saepe sit veritatis et. Et repellendus et eos asperiores. Aut et est ipsa perferendis impedit asperiores et. Distinctio tempore sunt nostrum nihil quaerat. Maxime sit alias aspernatur dolores iusto. Omnis enim debitis in voluptatibus aut voluptas. Est voluptas rerum aut omnis quis. Qui assumenda est quis magni sed qui. Doloremque blanditiis consequuntur quia dignissimos assumenda officia.', '32', 'https://lorempixel.com/300/300/?98509', 949, '2020-09-23 22:22:05', '2020-09-23 22:22:05'),
(39, 8, 3, 'Tyrel Koepp', 'margot-purdy-dds', 'Culpa vero qui optio saepe quia facilis voluptatem. Enim cumque commodi et molestias nobis. Illum minima enim qui quo. Qui nobis excepturi voluptas suscipit alias quas omnis perferendis. Ullam iure unde iure quia et est non. Est nam illo et tempore numquam. Cupiditate debitis quia est suscipit ipsam quam. Asperiores quas saepe distinctio animi officiis voluptatem. Laborum et culpa sunt magni. Quidem eos est esse consequuntur et similique deserunt. Voluptas consectetur perspiciatis porro sit.', '52', 'https://lorempixel.com/300/300/?93308', 9698, '2020-09-23 22:22:06', '2020-09-23 22:22:06'),
(42, 1, 6, 'Marcella O\'Connell MD', 'mr-kendall-heaney-v', 'Neque optio qui qui quia expedita et occaecati. Voluptas id libero quis ut provident quas eligendi. Nostrum accusamus eius animi tempore animi ab et. Ex placeat iste porro molestiae ea. Dolores qui odit provident laborum optio. Culpa provident sequi tenetur similique. Non qui possimus deleniti voluptatem incidunt dolores. Nisi odit voluptate itaque omnis vel dolores non.', '84', 'https://lorempixel.com/300/300/?82214', 541, '2020-09-23 22:22:06', '2020-09-23 22:22:06'),
(43, 6, 3, 'Mack White', 'carmela-leffler', 'Voluptate repellendus rerum ut itaque temporibus ut. Libero fugit non dolore vel facere aut. Praesentium quia ut molestias voluptas officiis labore laborum. Animi asperiores et ipsa quaerat minus provident enim.', '65', 'https://lorempixel.com/300/300/?75233', 225, '2020-09-23 22:22:06', '2020-09-23 22:22:06'),
(44, 4, 3, 'Rosario Grant', 'petra-wuckert', 'Itaque nisi asperiores consequatur voluptatum rerum. Illum cumque corporis consequatur. Est molestiae unde beatae beatae quisquam ea numquam. Molestias minima velit voluptatem vel exercitationem aut similique. Excepturi qui illo suscipit aut aut veniam dolore. Voluptatem doloribus ratione et molestiae. Praesentium placeat maiores deleniti officia optio qui necessitatibus molestiae. Consequatur reprehenderit nesciunt alias eaque accusamus eligendi fuga. Ipsa aut itaque ut qui quia molestiae.', '21', 'https://lorempixel.com/300/300/?32087', 233, '2020-09-23 22:22:06', '2020-09-23 22:22:06'),
(45, 5, 6, 'Filiberto Ullrich I', 'stanley-streich', 'Incidunt cumque accusamus voluptas omnis accusamus laborum exercitationem. Voluptas ut quisquam et qui. Ducimus eum incidunt dolorem sed. Laudantium ratione temporibus alias est. Pariatur ullam non quaerat adipisci sit blanditiis nisi. Quod laudantium nam autem error explicabo. Laborum ut sequi ullam mollitia. Qui temporibus autem cumque incidunt. Repellat sed suscipit veritatis reprehenderit ex laborum ea. Sed cupiditate sint dolorum soluta sequi dicta.', '7', 'https://lorempixel.com/300/300/?13796', 365, '2020-09-23 22:22:06', '2020-09-23 22:22:06'),
(47, 1, 5, 'Ollie Padberg', 'myrtice-muller', 'Omnis consequuntur assumenda recusandae tempore eos iste commodi. Sed non quae eaque aut aut quam deserunt amet. Sed laboriosam a unde expedita aut veritatis non qui. Rem asperiores porro sit exercitationem. Voluptatem deserunt nam eum consequatur enim neque omnis cupiditate. Recusandae a sint eos molestiae consequatur. Distinctio dolores et labore accusantium iusto molestiae ut laboriosam.', '58', 'https://lorempixel.com/300/300/?29230', 659, '2020-09-23 22:22:06', '2020-09-23 22:22:06'),
(50, 7, 3, 'Arne Windler', 'dr-jane-olson-iii', 'Asperiores sunt labore numquam quas autem cupiditate quia. Pariatur vel et quos aut ducimus. Mollitia voluptatem voluptas suscipit consectetur ab laudantium temporibus. Ducimus in dignissimos non et distinctio molestias quidem delectus. Similique consequatur a rerum non error natus iusto. Nulla voluptatem at sit ipsam eveniet error.', '19', 'https://lorempixel.com/300/300/?29525', 640, '2020-09-23 22:22:07', '2020-09-23 22:22:07'),
(52, 10, 3, 'Thurman Murphy III', 'kaylah-thompson', 'Omnis non dolore soluta reprehenderit corporis aperiam. Officiis beatae aperiam ut sed placeat. Qui iusto animi molestiae modi. Dolor possimus tempora eos architecto vel. Repellendus unde iusto in magnam. Culpa voluptate molestiae facere et sunt vitae qui. Nulla magni magnam eos incidunt quos occaecati earum. Maiores quis reprehenderit et quisquam omnis.', '29', 'https://lorempixel.com/300/300/?26628', 825, '2020-09-23 22:22:07', '2020-09-23 22:22:07'),
(53, 6, 4, 'Dr. Rozella Langworth', 'lesly-morissette', 'Occaecati quasi similique at perspiciatis et consequuntur fugiat. Et a neque quo et consequatur ex. Suscipit consequuntur et tenetur dolorem nihil dolor deserunt cupiditate. Aspernatur sit voluptatem in qui ex quod. Quae consequatur voluptatem omnis est dolores natus qui. Unde aut commodi atque sed ex quos rerum. Asperiores at reprehenderit ipsa qui. In non tempore ipsum quia tempora. Consequuntur impedit laboriosam dolor sunt quis commodi atque.', '63', 'https://lorempixel.com/300/300/?27039', 174, '2020-09-23 22:22:07', '2020-09-23 22:22:07'),
(55, 8, 5, 'Elouise Wehner V', 'dr-katrina-durgan', 'Suscipit dolorem est accusantium sit nemo necessitatibus ducimus. Perferendis quia eaque harum qui saepe accusantium vero. Eaque qui enim sint eos nesciunt maxime sed. Vero quo porro voluptatem nisi magnam iusto id. Qui voluptatem et porro veniam dolorum perspiciatis id.', '40', 'https://lorempixel.com/300/300/?39250', 67175, '2020-09-23 22:22:07', '2020-09-23 22:22:07'),
(57, 3, 6, 'Mazie Nicolas', 'florian-jakubowski', 'Vel non nesciunt aut ratione et asperiores repellat. Mollitia perspiciatis esse ut rerum non dolores ut. Maxime maiores eius qui alias possimus. Qui quas consequatur voluptates molestiae et. Qui eligendi reiciendis eaque inventore voluptatibus. Recusandae quas sunt velit id delectus. Sit et ut rerum incidunt provident.', '50', 'https://lorempixel.com/300/300/?38433', 2994, '2020-09-23 22:22:07', '2020-09-23 22:22:07'),
(64, 10, 2, 'Tamia Senger', 'ms-delpha-wisozk-ii', 'Error ratione in quisquam aut dolor illo. Sed magni eos consequatur omnis molestiae odio voluptatem. Dolores voluptatum pariatur vel est. Modi aut et quia eveniet. Rerum labore consequatur optio. Atque similique veritatis eaque praesentium repudiandae fugit. Libero corporis quo ipsa natus quae ea doloremque. At ea quam dolores ab dolore porro dolor et. Tempore fugiat accusamus et quia vel. Nihil similique est est in qui quaerat ipsa. Maxime veniam magni quod et.', '42', 'https://lorempixel.com/300/300/?75350', 5062, '2020-09-23 22:22:07', '2020-09-23 22:22:07'),
(67, 3, 4, 'Dr. Tavares Wolff V', 'wava-kessler-i', 'Esse quas quia atque accusamus quo. Molestiae molestias nihil vel officia. Quo nihil doloremque aut et maxime. Temporibus est est occaecati consectetur magni. Velit totam maiores blanditiis. Culpa voluptates temporibus incidunt voluptatem molestiae. Incidunt illo officiis mollitia officia quam. Culpa dolore dolore et dolores accusamus. Excepturi quam molestias quia vitae voluptatem corrupti. Quaerat qui et tempora et et non atque laboriosam.', '86', 'https://lorempixel.com/300/300/?96126', 16238, '2020-09-23 22:22:07', '2020-09-23 22:22:07'),
(69, 9, 4, 'Morton Ankunding', 'dr-lucienne-bosco-i', 'Ullam facilis perspiciatis consectetur ratione eum voluptatem. Dolore cupiditate sed aut eos ratione vel officia. Atque deserunt placeat hic ut. Itaque eius deserunt expedita repellendus aliquid officiis. Sed in blanditiis commodi eaque et. Ea fugiat nostrum alias sit occaecati nihil magnam dolores.', '36', 'https://lorempixel.com/300/300/?99622', 676, '2020-09-23 22:22:07', '2020-09-23 22:22:07'),
(72, 2, 5, 'Miller Schaefer', 'prof-carolyne-ondricka-md', 'Minima aut ut ex qui. Distinctio reiciendis amet et et. Atque consequatur facilis aspernatur porro reiciendis adipisci. Non dolore illo reprehenderit sed qui distinctio. Quidem laboriosam dolor ut fugit nulla. Et quia in aut. Consequatur voluptatibus at optio vitae provident quia earum. Nostrum omnis quia voluptas maxime alias molestiae recusandae doloremque. Sed ea ea quae sit. Totam ipsum ea ducimus ut aperiam sit odit qui. Illum quae eius odit nisi.', '64', 'https://lorempixel.com/300/300/?10881', 8524, '2020-09-23 22:22:08', '2020-09-23 22:22:08'),
(74, 1, 3, 'Lonny Boehm', 'elyse-reichel', 'Est vero vel ut rerum ad. Dolor accusamus itaque dignissimos. Voluptas nihil quae et adipisci odio. Ducimus error deserunt consequuntur cum est. Facere ipsam minima rerum consequatur. Commodi voluptatum adipisci non. Rerum aut temporibus voluptate aliquid aut facere. Perspiciatis praesentium accusantium ullam quod qui corrupti.', '34', 'https://lorempixel.com/300/300/?93337', 7265, '2020-09-23 22:22:08', '2020-09-23 22:22:08'),
(75, 8, 3, 'Lyric Upton', 'prof-theo-bergstrom-sr', 'Eligendi fuga in dolores autem et eius deleniti. Consequuntur quia maiores quod molestias vero sit. Accusantium perspiciatis voluptates quasi explicabo. Neque a velit id eveniet nostrum reiciendis dolor. Fugiat et at cum numquam et iure omnis. Id optio consectetur et nobis quos voluptate. Quibusdam quia molestiae et doloremque dolorem odio et. Aspernatur aliquid incidunt labore.', '64', 'https://lorempixel.com/300/300/?10665', 29493, '2020-09-23 22:22:08', '2020-09-23 22:22:08'),
(78, 7, 7, 'Mr. Cordell Turner', 'jayce-leffler', 'Est ducimus rerum ab animi minus aut exercitationem molestiae. In dolorum sint minima inventore. Accusamus est eos eum necessitatibus. Consequatur sed voluptate officia excepturi. Qui quasi suscipit quidem sequi modi in et maxime. Dolorem provident rerum voluptates voluptas non praesentium pariatur. Aspernatur est illo iusto vel excepturi excepturi.', '53', 'https://lorempixel.com/300/300/?54561', 70969, '2020-09-23 22:22:08', '2020-09-23 22:22:08'),
(79, 2, 2, 'Kamille Kunde', 'mikel-sauer', 'Accusamus sint maxime possimus quo odit a. Reprehenderit animi excepturi sit consequatur tenetur distinctio. Enim dolorem neque aut perspiciatis quod. Culpa illum quis sit omnis. Et et quis est dolorem qui. Placeat sunt quibusdam maxime in fugit provident dicta. Enim aliquam autem sit ut architecto aut facilis est. Similique facere voluptatibus non qui.', '73', 'https://lorempixel.com/300/300/?25076', 6035, '2020-09-23 22:22:08', '2020-09-23 22:22:08'),
(82, 6, 2, 'Connie Dickens', 'miss-aglae-gusikowski', 'Velit eos qui dolor ab. Et rem esse dicta natus fugiat. Excepturi sapiente voluptatem cum error fuga recusandae amet et. Magnam facilis nihil quos rerum incidunt necessitatibus quisquam ut. Consequuntur commodi possimus veritatis aut eius qui. Sed reiciendis eos modi perferendis eaque odit. Voluptatem rerum consectetur quia quam. Corrupti aut similique sint culpa. Non sit natus reiciendis consequatur eveniet quam.', '19', 'https://lorempixel.com/300/300/?12874', 22964, '2020-09-23 22:22:08', '2020-09-23 22:22:08'),
(84, 6, 5, 'Prof. Ruthie Hammes II', 'jaiden-boyle', 'Quia expedita ut et aperiam vero iste harum dolor. Et reprehenderit sint autem aut quaerat ut recusandae. Libero saepe voluptatem ab consequatur cupiditate ea. Ipsum fugiat qui esse et in voluptas. Quaerat itaque placeat sint necessitatibus ut et nihil. Aut dolor aliquam asperiores non cumque repudiandae cumque. Corporis qui rerum ad accusamus in maiores et. Nobis in quo quisquam modi assumenda ullam illo esse.', '69', 'https://lorempixel.com/300/300/?57845', 629, '2020-09-23 22:22:08', '2020-09-23 22:22:08'),
(86, 7, 2, 'Dr. Bailey Hamill', 'elsa-bednar', 'Ut iusto porro earum voluptatem. Adipisci et est nesciunt necessitatibus quo labore. Neque odit in nihil quam. Error velit consectetur veritatis sunt beatae. Est quia commodi quaerat perspiciatis quod. Nemo exercitationem dolorum dolorem veniam ullam ut. Soluta ex quae ipsum voluptas aliquam in fugiat.', '51', 'https://lorempixel.com/300/300/?32389', 92113, '2020-09-23 22:22:08', '2020-09-23 22:22:08'),
(95, 7, 6, 'Cynthia Collins', 'deanna-bailey', 'Vero et perspiciatis et non soluta veniam. Voluptatum incidunt est et et vel rerum repellat quo. Doloremque numquam rerum sint placeat aliquam unde. Facilis facilis amet nobis molestiae. Blanditiis accusantium perferendis aperiam fugit ut ratione. Possimus enim neque occaecati et hic. Dolores error perferendis eum qui exercitationem non consequatur. Reiciendis impedit sit aut. Tenetur id autem rem impedit.', '55', 'https://lorempixel.com/300/300/?44035', 215, '2020-09-23 22:22:09', '2020-09-23 22:22:09'),
(98, 1, 2, 'Teclado Champion', 'teclado-champion', 'Ut aut quasi id laudantium aut placeat distinctio quam. Architecto vero ea architecto rem. Veritatis ut quidem ea at. Dolorem optio et consequuntur cum facilis omnis rerum. Ad et cum consectetur aut rem qui. Ut saepe nihil facilis. Quo nisi aut at ab at velit voluptatum. Quo et dolore magnam hic non reiciendis architecto tempore. Alias modi iure nihil quo. Quo aperiam perspiciatis tempore quibusdam ea. Et dignissimos nihil repellendus qui illum. Adipisci qui tempore quae adipisci.', '10', 'http://localhost/inicio/public/images/teclado3.jpg', 1604, '2020-09-23 22:22:09', '2020-10-29 03:35:46'),
(114, 1, 5, 'camara amarilla', 'camara-amarilla', 'asbfg fthgh fcgghghyt yhdrfrvh ghbv', '20', 'http://localhost/inicio/public/images/camara.jpg', 50, '2020-09-26 23:57:54', '2020-10-28 06:00:52'),
(120, 15, 9, 'iphone7', 'iphone7', 'sercste fgvrey fvtvre vrtbg', '55', 'http://localhost/inicio/public/images/mobile-phone-1917737_1920.jpg', 5, '2020-10-07 01:49:46', '2020-10-28 05:41:41'),
(121, 16, 9, 'k10', 'k10', 'ertgbty jhntyr', '500000', 'http://localhost/inicio/public/images/smartphone-1894723_640.jpg', 10, '2020-10-29 00:21:59', '2020-10-29 03:25:42'),
(122, 17, 8, 'correa para camara', 'correa-para-camara', 'rtwe rgrgrgy rt t', '80', 'http://localhost/inicio/public/images/camara9.jpg', 80, '2020-10-29 00:42:15', '2020-10-29 03:27:29'),
(123, 17, 4, 'audig', 'audig', 'rt', '20', 'http://localhost/inicio/public/images/audifonos11.jpg', 30, '2020-10-29 02:08:51', '2020-10-29 02:08:51'),
(128, 16, 3, 'moser', 'moser', 'w2f', '55', 'http://localhost/inicio/public/images/mouse3.jpg', 40, '2020-10-29 03:08:53', '2020-10-29 03:08:53'),
(130, 16, 3, 'mose', 'mose', 'w2f', '55', 'http://localhost/inicio/public/images/mouse4.jpg', 40, '2020-10-29 03:10:36', '2020-10-29 03:12:12'),
(131, 1, 8, 'selfi', 'selfi', 'ewrtf hyrtu tybuht', '55', 'http://localhost/inicio/public/images/camara11.jpg', 50, '2020-10-29 03:56:07', '2020-10-29 03:56:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special` enum('all-access','no-access') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `special`) VALUES
(1, 'Admin', 'admin', NULL, '2020-09-23 22:22:11', '2020-09-23 22:22:11', 'all-access'),
(2, 'suspendidos', 'suspendidos', 'Usuario de vacaciones', NULL, '2020-10-01 22:22:22', 'no-access'),
(6, 'supervisor', 'supervisor', NULL, '2020-10-02 00:33:42', '2020-10-02 00:33:42', NULL),
(8, 'Administra de roles', 'administrador-de-roles', NULL, '2020-10-06 21:46:41', '2020-10-06 21:46:41', NULL),
(9, 'administrador de productos', 'administrador-productos', NULL, '2020-10-07 00:30:08', '2020-10-07 00:53:43', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_index` (`role_id`),
  KEY `role_user_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 23, NULL, NULL),
(5, 1, 24, '2020-09-30 20:26:03', '2020-09-30 20:26:03'),
(6, 6, 25, '2020-10-02 00:37:49', '2020-10-02 00:37:49'),
(9, 8, 26, '2020-10-07 00:25:35', '2020-10-07 00:25:35'),
(10, 9, 1, '2020-10-07 00:34:55', '2020-10-07 00:34:55'),
(11, 2, 27, '2020-10-28 22:38:55', '2020-10-28 22:38:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta_creditos`
--

DROP TABLE IF EXISTS `tarjeta_creditos`;
CREATE TABLE IF NOT EXISTS `tarjeta_creditos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banco_id` int(11) NOT NULL,
  `numero_tarjeta` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_banco_tarjeta_creditos` (`banco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tarjeta_creditos`
--

INSERT INTO `tarjeta_creditos` (`id`, `banco_id`, `numero_tarjeta`, `fecha_vencimiento`, `created_at`, `updated_at`) VALUES
(1, 1, '1542865235', '2020-11-12', '2020-10-08 22:52:56', '2020-10-08 22:52:56'),
(2, 2, '1551425', '2021-04-15', '2020-10-08 22:52:56', '2020-10-08 22:52:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta_debitos`
--

DROP TABLE IF EXISTS `tarjeta_debitos`;
CREATE TABLE IF NOT EXISTS `tarjeta_debitos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banco_id` int(11) NOT NULL,
  `tipo_cuenta_id` int(11) NOT NULL,
  `numero_tarjeta` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_banco_tarjeta_debitos` (`banco_id`),
  KEY `FK_tarjeta_debito_tipo_cuenta` (`tipo_cuenta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tarjeta_debitos`
--

INSERT INTO `tarjeta_debitos` (`id`, `banco_id`, `tipo_cuenta_id`, `numero_tarjeta`, `fecha_vencimiento`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '41645', '2020-10-14', '2020-10-08 23:04:00', '2020-10-08 23:04:00'),
(2, 2, 2, '56876757626', '2021-04-09', '2020-10-08 23:04:00', '2020-10-08 23:04:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cuenta`
--

DROP TABLE IF EXISTS `tipo_cuenta`;
CREATE TABLE IF NOT EXISTS `tipo_cuenta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_cuenta`
--

INSERT INTO `tipo_cuenta` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'cuenta de ahorros', 'cuentas de ahorros para personas ', '2020-10-08 22:48:14', '2020-10-08 22:48:14'),
(2, 'cuenta corriente', 'cuentas de corriente para personas ', '2020-10-08 22:48:14', '2020-10-08 22:48:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documentos`
--

DROP TABLE IF EXISTS `tipo_documentos`;
CREATE TABLE IF NOT EXISTS `tipo_documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `abreviatura` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pagos`
--

DROP TABLE IF EXISTS `tipo_pagos`;
CREATE TABLE IF NOT EXISTS `tipo_pagos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tarjeta_credito_id` int(11) NOT NULL,
  `tarjeta_debito_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_tarjeta_credito_tipo_pago` (`tarjeta_credito_id`),
  KEY `fk_tarjeta_debito_tipo_pago` (`tarjeta_debito_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'cris', 'cy@gmail', NULL, '$2y$10$ClZBb3WvuHg.Gd/QaAgC6urkQ1yQV9tGH.EIj5v0lnYRDSGZpCnsy', NULL, '2020-09-22 01:22:59', '2020-09-22 01:22:59'),
(2, 'Molly Bode', 'charlene39@example.org', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f1wKPRfLQO', '2020-09-23 22:22:10', '2020-09-23 22:22:10'),
(3, 'Gaylord Moore', 'daija.sanford@example.net', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fb96DnH6wY', '2020-09-23 22:22:10', '2020-09-23 22:22:10'),
(4, 'Johnpaul Prohaska', 'halle.kuphal@example.net', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5czl9I8XNo', '2020-09-23 22:22:10', '2020-09-23 22:22:10'),
(5, 'Kaleigh Bogisich', 'nkling@example.net', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xUrV7Om9ax', '2020-09-23 22:22:10', '2020-09-23 22:22:10'),
(6, 'Ms. Augustine Harber DVM', 'fbailey@example.net', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jzSlRTSZTP', '2020-09-23 22:22:10', '2020-09-23 22:22:10'),
(7, 'Myrtie Rice', 'kaleb24@example.org', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aMSwuEctW5', '2020-09-23 22:22:10', '2020-09-23 22:22:10'),
(8, 'Turner Spencer', 'franecki.lesly@example.net', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jwnNGm34cQ', '2020-09-23 22:22:10', '2020-09-23 22:22:10'),
(9, 'Miss Constance Dietrich', 'nluettgen@example.com', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0SfEA2D16B', '2020-09-23 22:22:11', '2020-09-23 22:22:11'),
(11, 'Eugenia Spinka', 'april11@example.net', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gRfQ9LxEO6', '2020-09-23 22:22:11', '2020-09-23 22:22:11'),
(12, 'Kasandra Hintz', 'shanel.mcdermott@example.net', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E92xzERAYV', '2020-09-23 22:22:11', '2020-09-23 22:22:11'),
(13, 'Bruce Dickinson', 'kborer@example.org', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PTo3liaHQA', '2020-09-23 22:22:11', '2020-09-23 22:22:11'),
(14, 'Maudie Brakus', 'fvonrueden@example.net', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't4DSMIed7X', '2020-09-23 22:22:11', '2020-09-23 22:22:11'),
(15, 'Liliana Price PhD', 'neil26@example.com', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wEpXQyU5sC', '2020-09-23 22:22:11', '2020-09-23 22:22:11'),
(16, 'Mr. Kole Bartoletti I', 'hunter99@example.net', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fQdseZbD4f', '2020-09-23 22:22:11', '2020-09-23 22:22:11'),
(17, 'Dr. Zakary Kozey', 'zola.price@example.org', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DCUzRiLgq9', '2020-09-23 22:22:11', '2020-09-23 22:22:11'),
(18, 'Carlo Wisoky', 'sidney.shields@example.org', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qsLP1nFHbE', '2020-09-23 22:22:11', '2020-09-23 22:22:11'),
(19, 'Tyshawn Herzog', 'drolfson@example.net', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RYGqyUlB7y', '2020-09-23 22:22:11', '2020-09-23 22:22:11'),
(20, 'Lucie Daugherty', 'mbatz@example.org', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eUyrQ5IeGi', '2020-09-23 22:22:11', '2020-09-23 22:22:11'),
(21, 'Pauline Hahn', 'hanna.hyatt@example.net', '2020-09-23 22:22:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1PYvVB7YoK', '2020-09-23 22:22:11', '2020-09-23 22:22:11'),
(22, 'Emily', 'e@gmail.com', NULL, '$2y$10$z3E8KYe4pb9UAZfq6AhdS.Ku4B4eyInRHHVVzh9x76V2nKCLmGD72', NULL, '2020-09-24 00:59:30', '2020-09-24 00:59:30'),
(23, 's', 's@gmail', NULL, '$2y$10$oTSGjEDV0qeDDypBJ4pSVeJgA2vghlFLkPXczGpgwJawdEN1H27K.', NULL, '2020-09-24 03:40:25', '2020-09-24 03:40:25'),
(24, 'daniel', 'dani@gmail', NULL, '$2y$10$yRlCKM.FHV7NBQFk35hPnuul8KIbcVt8zQ9jKcz5uXIsuZUWBBRoa', NULL, '2020-09-25 00:52:36', '2020-09-25 00:52:36'),
(25, 'lili', 'lili@gmail', NULL, '$2y$10$bmLMKsdAqptEdJI2ZxJQzOh0cC8c1QhLnVcTKhf7S1/712MzvxUUS', NULL, '2020-10-02 00:35:15', '2020-10-02 00:35:15'),
(26, 'diego', 'diego@gmail.com', NULL, '$2y$10$rndNYD0D/IYMr/LhcL168ermjZ3HN7Oe2ORog2oTUPONjt.yoNk9m', NULL, '2020-10-06 19:53:01', '2020-10-06 19:53:01'),
(27, 'javier', 'javier@gmail.com', NULL, '$2y$10$P5jImZzQZEzVu6EhUOvGqOgowDW5s31ZCN.39iqqWujJJ.FGN5YW.', NULL, '2020-10-09 01:32:11', '2020-10-09 01:32:11');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_facturas`
--
ALTER TABLE `detalle_facturas`
  ADD CONSTRAINT `fk_detalle_factura_encabezado_factura` FOREIGN KEY (`encabezado_factura_id`) REFERENCES `encabezado_factura` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detalle_factura_producto` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `encabezado_factura`
--
ALTER TABLE `encabezado_factura`
  ADD CONSTRAINT `fk_encabezado_factura_tipo_pago` FOREIGN KEY (`tipo_pago_id`) REFERENCES `tipo_pagos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_encabezado_factura_user` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_categoria_producto` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marca_producto` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tarjeta_creditos`
--
ALTER TABLE `tarjeta_creditos`
  ADD CONSTRAINT `FK_banco_tarjeta_creditos` FOREIGN KEY (`banco_id`) REFERENCES `bancos` (`id`);

--
-- Filtros para la tabla `tarjeta_debitos`
--
ALTER TABLE `tarjeta_debitos`
  ADD CONSTRAINT `FK_banco_tarjeta_debitos` FOREIGN KEY (`banco_id`) REFERENCES `bancos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tarjeta_debito_tipo_cuenta` FOREIGN KEY (`tipo_cuenta_id`) REFERENCES `tipo_cuenta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tipo_pagos`
--
ALTER TABLE `tipo_pagos`
  ADD CONSTRAINT `fk_tarjeta_credito_tipo_pago` FOREIGN KEY (`tarjeta_credito_id`) REFERENCES `tarjeta_creditos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tarjeta_debito_tipo_pago` FOREIGN KEY (`tarjeta_debito_id`) REFERENCES `tarjeta_debitos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
