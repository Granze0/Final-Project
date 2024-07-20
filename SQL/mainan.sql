-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2024 at 02:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myrestaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Board Game'),
(2, 'Electronic Game\r\n'),
(3, 'Outdoor and Sports'),
(4, 'Action Figures'),
(5, 'Educative Game');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `food_name` varchar(250) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `category_id`, `food_name`, `price`, `description`) VALUES
(1, 1, 'Monopoli Klasik', 250000, 'Monopoli adalah permainan papan klasik yang melibatkan pembelian, penjualan, dan perdagangan properti. Pemain berlomba untuk menjadi yang terkaya dengan mengelola aset dan menghindari kebangkrutan. Permainan ini cocok untuk dimainkan oleh 2-8 pemain dan dapat mengajarkan strategi, manajemen uang, dan negosiasi.'),
(2, 1, 'Catan', 550000, 'Catan adalah permainan strategi di mana pemain bertindak sebagai pemukim yang mencoba membangun dan mengembangkan pemukiman mereka di pulau Catan. Dengan mengumpulkan dan menukar sumber daya seperti kayu, batu bata, biji-bijian, wol, dan bijih, pemain membangun jalan, pemukiman, dan kota untuk mendapatkan poin kemenangan. Permainan ini cocok untuk 3-4 pemain dan melibatkan perencanaan dan negosiasi yang intens.'),
(3, 1, 'Ticket to Ride', 450000, 'Ticket to Ride adalah permainan papan di mana pemain bersaing untuk menghubungkan kota-kota di peta dengan rute kereta api. Pemain mengumpulkan kartu kereta api untuk membangun rute dan menyelesaikan tiket perjalanan yang memberikan poin. Permainan ini sederhana untuk dipelajari tetapi menawarkan kedalaman strategis yang cukup. Cocok untuk 2-5 pemain dan ideal untuk keluarga dan teman-teman.'),
(4, 1, 'Carcassonne', 350000, 'Carcassonne adalah permainan papan ubin di mana pemain secara bergantian menarik dan meletakkan ubin bergambar lanskap selatan Prancis. Pemain dapat menempatkan pengikut mereka di jalan, kota, biara, atau ladang untuk mendapatkan poin berdasarkan area yang mereka kontrol. Permainan ini menekankan taktik dan perencanaan jangka panjang. Cocok untuk 2-5 pemain dan dapat dinikmati oleh pemain dari segala usia.'),
(5, 2, 'Nintendo Switch', 5500000, 'Nintendo Switch adalah konsol permainan video hibrida yang dapat digunakan sebagai perangkat genggam atau dihubungkan ke televisi. Dengan layar sentuh kapasitif 6,2 inci dan kontroler Joy-Con yang dapat dilepas, Switch menawarkan fleksibilitas bermain yang unik. Perangkat ini mendukung berbagai permainan populer seperti \"The Legend of Zelda: Breath of the Wild\" dan \"Animal Crossing: New Horizons,\" serta banyak permainan dari berbagai genre.'),
(6, 2, 'PlayStation 5', 9000000, 'PlayStation 5 (PS5) adalah konsol permainan video generasi terbaru dari Sony. Dilengkapi dengan CPU AMD Zen 2, GPU RDNA 2, dan SSD ultra-cepat, PS5 menawarkan grafis yang memukau dan waktu loading yang sangat cepat. Kontroler DualSense baru dengan haptic feedback dan adaptive triggers memberikan pengalaman bermain yang lebih imersif. PS5 mendukung game-game terbaru dan eksklusif seperti \"Demon\'s Souls\" dan \"Ratchet & Clank: Rift Apart.\"'),
(7, 2, 'Tamagotchi On', 900000, 'Tamagotchi On adalah versi modern dari mainan hewan peliharaan virtual klasik. Perangkat ini memiliki layar berwarna dan berbagai fitur interaktif yang memungkinkan pemain untuk merawat Tamagotchi mereka dengan memberi makan, bermain, dan merawatnya. Tamagotchi On juga memiliki fitur konektivitas untuk menghubungkan dengan perangkat lain, memungkinkan pertukaran item dan karakter. Ini adalah mainan yang menyenangkan dan edukatif untuk anak-anak.'),
(8, 2, 'Osmo Genius Starter Kit', 2500000, 'Osmo Genius Starter Kit adalah set permainan edukatif yang menggunakan teknologi augmented reality (AR) untuk menggabungkan bermain fisik dengan pembelajaran digital. Kit ini terdiri dari basis untuk iPad dan lima permainan yang mengajarkan keterampilan matematika, menggambar, pengenalan bentuk, dan pemecahan masalah. Osmo Genius Starter Kit cocok untuk anak-anak usia 5-12 tahun dan membantu mengembangkan kreativitas serta keterampilan kognitif mereka.'),
(9, 3, 'Sepeda Anak BMX', 1200000, 'Sepeda anak BMX ini dirancang khusus untuk anak-anak yang suka berpetualang di luar ruangan. Dengan rangka yang kokoh dan desain yang menarik, sepeda ini ideal untuk kegiatan bersepeda di taman atau jalur off-road ringan. Dilengkapi dengan rem tangan depan dan belakang, serta roda penyangga yang dapat dilepas untuk membantu anak belajar bersepeda dengan aman.'),
(10, 3, 'Set Alat Permainan Air (Water Play Set)', 350000, 'Set alat permainan air ini termasuk pistol air, bola air, dan seluncuran air kecil yang dapat diletakkan di halaman belakang. Alat ini dirancang untuk memberikan kesenangan maksimal di hari yang panas, menjaga anak-anak tetap aktif dan terhibur. Bahan yang digunakan aman dan tahan lama, memastikan penggunaan jangka panjang.'),
(11, 3, 'Trampolin Mini', 2500000, 'Trampolin mini ini dilengkapi dengan jaring pengaman untuk menjaga anak-anak tetap aman saat melompat. Dengan diameter 6 kaki, trampolin ini cukup besar untuk anak-anak bermain tetapi cukup kecil untuk muat di sebagian besar halaman belakang. Kerangka baja yang kuat dan bantalan pelindung di sekitar tepi memastikan keamanan tambahan. Melompat di trampolin juga membantu mengembangkan keterampilan motorik dan kebugaran fisik anak.'),
(12, 3, 'Tenda Mainan', 700000, 'Tenda mainan ini dirancang untuk permainan petualangan di luar ruangan. Dengan tema hutan atau safari, tenda ini memberikan ruang yang cukup untuk anak-anak bermain, membaca, atau berimajinasi. Bahan tahan air dan tahan lama memastikan tenda dapat digunakan di berbagai kondisi cuaca. Mudah dipasang dan dibongkar, tenda ini juga mudah dibawa-bawa untuk piknik atau berkemah.'),
(13, 4, 'Action Figure Spider-Man Marvel Legends Series', 350000, 'Action figure Spider-Man dari seri Marvel Legends ini memiliki detail yang sangat baik dan berbagai titik artikulasi yang memungkinkan berbagai pose dinamis. Figur ini dilengkapi dengan aksesori seperti jaring laba-laba dan tangan tambahan. Cocok untuk kolektor dan penggemar superhero, action figure ini merupakan representasi ikonik dari karakter Spider-Man dalam komik dan film.'),
(14, 4, 'Action Figure Batman DC Multiverse', 400000, 'Action figure Batman dari seri DC Multiverse ini menampilkan Batman dalam kostum klasik dengan detail yang sangat rinci. Figur ini memiliki lebih dari 20 titik artikulasi, memungkinkan berbagai pose aksi. Dilengkapi dengan berbagai aksesori seperti batarang dan grapnel gun, figur ini sempurna untuk penggemar Batman dan kolektor action figure.'),
(15, 4, 'Action Figure Iron Man Hot Toys', 3500000, 'Action figure Iron Man dari Hot Toys ini dibuat dengan skala 1/6 dan memiliki tingkat detail yang sangat tinggi, termasuk pencahayaan LED di mata, dada, dan tangan. Dengan lebih dari 30 titik artikulasi, figur ini memungkinkan berbagai pose dinamis. Dilengkapi dengan berbagai aksesori seperti tangan tambahan dan senjata, figur ini merupakan barang koleksi premium untuk penggemar Iron Man.'),
(16, 4, 'Action Figure Naruto Uzumaki', 600000, 'Action figure Naruto Uzumaki dari seri SH Figuarts menampilkan karakter utama dari anime dan manga Naruto dengan detail yang sangat baik. Figur ini memiliki berbagai titik artikulasi untuk memungkinkan berbagai pose aksi ninja. Dilengkapi dengan aksesori seperti tangan tambahan, kepala tambahan, dan efek jutsu, action figure ini ideal untuk penggemar Naruto.'),
(17, 5, 'Robotik LEGO Mindstorms', 6000000, 'LEGO Mindstorms adalah set permainan edukatif yang memungkinkan anak-anak merakit dan memprogram robot mereka sendiri. Dengan berbagai sensor dan motor, anak-anak dapat membuat robot yang bisa berjalan, berbicara, dan bahkan bermain game. Mindstorms mengajarkan konsep dasar STEM (Science, Technology, Engineering, and Mathematics) melalui pembelajaran hands-on dan pemrograman visual. Cocok untuk anak-anak usia 10 tahun ke atas.'),
(18, 5, 'Permainan Edukatif Scrabble', 350000, 'Scrabble adalah permainan papan klasik yang mengajarkan kosa kata, ejaan, dan keterampilan berpikir strategis. Pemain menggunakan huruf-huruf pada ubin untuk membentuk kata-kata pada papan permainan, dan setiap kata diberi skor berdasarkan nilai huruf dan posisi pada papan. Scrabble cocok untuk dimainkan oleh 2-4 pemain dan ideal untuk anak-anak usia 8 tahun ke atas serta orang dewasa.'),
(19, 5, 'SmartLab: Ultimate Secret Formula Lab', 500000, '\"SmartLab: Ultimate Secret Formula Lab\" adalah set permainan sains yang memungkinkan anak-anak melakukan berbagai eksperimen kimia dengan aman di rumah. Set ini dilengkapi dengan lebih dari 40 eksperimen menarik yang mengajarkan konsep-konsep dasar kimia dan fisika. Dilengkapi dengan peralatan laboratorium mini seperti tabung reaksi, pipet, dan bahan kimia aman, permainan ini ideal untuk anak-anak usia 8 tahun ke atas yang tertarik dengan sains.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`, `updated_at`, `created_at`) VALUES
('a', 'a@a.a', '$2y$12$uID8wCohkiEGituwALQ9GezuOA2b72UXUiX/pBy6VK3WKIYyXL0jm', '2024-07-17 11:50:18', '2024-07-17 11:50:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `foods_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
