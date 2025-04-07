-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 07 2025 г., 14:17
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ad_requests`
--

-- --------------------------------------------------------

--
-- Структура таблицы `action_logs`
--

CREATE TABLE `action_logs` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `action` enum('approved','rejected','created') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `action`, `created_at`) VALUES
(1, 1, 'Отредактировал заявку №20', '2025-03-24 08:12:23'),
(2, 1, 'Создал новую заявку №21', '2025-03-24 16:19:01'),
(3, 1, 'Создал новую заявку №22', '2025-03-25 03:18:53'),
(4, 1, 'Создал новую заявку №23', '2025-03-25 03:24:03'),
(5, 1, 'Создал новую заявку №24', '2025-03-25 03:24:36'),
(6, 1, 'Создал новую заявку №25', '2025-03-25 03:24:44'),
(7, 1, 'Создал новую заявку №26', '2025-03-25 03:30:10'),
(8, 1, 'Создал новую заявку №27', '2025-03-25 03:32:29'),
(9, 1, 'Создал новую заявку №28', '2025-03-25 03:32:41'),
(10, 1, 'Создал новую заявку №29', '2025-03-28 06:16:30'),
(11, 1, 'Удалил заявку №29', '2025-04-02 11:38:35'),
(12, 1, 'Удалил заявку №28', '2025-04-02 11:40:56'),
(13, 1, 'Удалил заявку №27', '2025-04-02 11:41:00'),
(14, 1, 'Удалил заявку №26', '2025-04-02 11:41:02'),
(15, 1, 'Удалил заявку №25', '2025-04-02 11:41:03'),
(16, 1, 'Удалил заявку №24', '2025-04-02 11:41:05'),
(17, 1, 'Удалил заявку №23', '2025-04-02 11:41:21'),
(18, 1, 'Удалил заявку №22', '2025-04-02 11:41:24'),
(19, 1, 'Удалил заявку №21', '2025-04-02 11:41:25'),
(20, 1, 'Удалил заявку №20', '2025-04-02 11:41:25'),
(21, 1, 'Удалил заявку №19', '2025-04-02 11:41:26'),
(22, 1, 'Удалил заявку №18', '2025-04-02 11:41:27'),
(23, 1, 'Удалил заявку №17', '2025-04-02 11:41:29'),
(24, 1, 'Удалил заявку №16', '2025-04-02 11:41:30'),
(25, 1, 'Удалил заявку №15', '2025-04-02 11:41:31'),
(26, 1, 'Удалил заявку №14', '2025-04-02 11:41:32'),
(27, 1, 'Удалил заявку №13', '2025-04-02 11:41:33'),
(28, 1, 'Удалил заявку №12', '2025-04-02 11:41:34'),
(29, 1, 'Удалил заявку №11', '2025-04-02 11:41:35'),
(30, 1, 'Удалил заявку №10', '2025-04-02 11:41:36'),
(31, 1, 'Удалил заявку №9', '2025-04-02 11:41:37'),
(32, 1, 'Удалил заявку №8', '2025-04-02 11:41:39'),
(33, 1, 'Удалил заявку №7', '2025-04-02 11:41:40'),
(34, 1, 'Удалил заявку №6', '2025-04-02 11:41:42'),
(35, 1, 'Удалил заявку №5', '2025-04-02 11:41:43'),
(36, 1, 'Удалил заявку №2', '2025-04-02 11:41:44'),
(37, 1, 'Создал новую заявку №30', '2025-04-02 11:55:45'),
(38, 1, 'Создал новую заявку №31', '2025-04-02 11:57:29'),
(39, 1, 'Создал новую заявку №32', '2025-04-03 03:12:28'),
(40, 1, 'Создал новую заявку №33', '2025-04-03 03:19:52'),
(41, 1, 'Удалил заявку №33', '2025-04-03 03:20:22'),
(42, 1, 'Удалил заявку №32', '2025-04-03 03:20:24'),
(43, 1, 'Удалил заявку №31', '2025-04-03 03:20:26'),
(44, 1, 'Удалил заявку №30', '2025-04-03 03:20:28'),
(45, 1, 'Создал новую заявку №34', '2025-04-04 18:16:15'),
(46, 1, 'Создал новую заявку №35', '2025-04-04 18:16:28'),
(47, 1, 'Создал новую заявку №36', '2025-04-04 18:16:41'),
(48, 1, 'Создал новую заявку №37', '2025-04-04 18:16:51');

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `requester_id` int(11) NOT NULL,
  `new_user_login` varchar(100) NOT NULL,
  `new_user_fullname` varchar(255) NOT NULL,
  `new_user_email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `admin_comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `requests`
--

INSERT INTO `requests` (`id`, `requester_id`, `new_user_login`, `new_user_fullname`, `new_user_email`, `password`, `status_id`, `admin_comment`, `created_at`, `updated_at`) VALUES
(34, 1, 'test1', 'test1', 'test1@test1', '$2y$10$zd35BOrhQ6qxJyvDZCKZMu9kMn5BfYBcGBqHhyefwTlJyZ5ctc3Zy', 1, NULL, '2025-04-04 18:16:14', '2025-04-04 18:16:14'),
(35, 1, 'test2', 'test3', 'test1@test2', '$2y$10$xMZN9ZkJ1VPWNcWvncVHWOYO3Gp51nTz49M.xdCyg3NmeHGYm7iz6', 1, NULL, '2025-04-04 18:16:27', '2025-04-04 18:16:27'),
(36, 1, 'test3', 'test3', 'test1@test2', '$2y$10$Nv1JIFoPyzhgbEdiD9P8f.gIJQF8P9p50Iqs16W1RBHj/S4LyivZq', 1, NULL, '2025-04-04 18:16:41', '2025-04-04 18:16:41'),
(37, 1, 'test4', 'test4', 'test1@te54', '$2y$10$5RppbPEU0Ai9y06Hz7/6pOIl1qca3wVFr7wkSsn/41eJYWwoA6Mfe', 1, NULL, '2025-04-04 18:16:51', '2025-04-04 18:16:51');

-- --------------------------------------------------------

--
-- Структура таблицы `request_systems`
--

CREATE TABLE `request_systems` (
  `request_id` int(11) NOT NULL,
  `system_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `request_systems`
--

INSERT INTO `request_systems` (`request_id`, `system_id`) VALUES
(34, 1),
(35, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(2, 'approved'),
(4, 'created'),
(1, 'new'),
(3, 'rejected');

-- --------------------------------------------------------

--
-- Структура таблицы `systems`
--

CREATE TABLE `systems` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `systems`
--

INSERT INTO `systems` (`id`, `name`, `description`) VALUES
(1, 'Test', 'test-descr');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` enum('employee','admin') NOT NULL DEFAULT 'employee'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `email`, `role`) VALUES
(1, 'ivanov', 'Иван Иванов', 'ivanov@example.com', 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `action_logs`
--
ALTER TABLE `action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `request_id` (`request_id`);

--
-- Индексы таблицы `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_requester_id` (`requester_id`),
  ADD KEY `idx_status_id` (`status_id`),
  ADD KEY `idx_new_user_login` (`new_user_login`);

--
-- Индексы таблицы `request_systems`
--
ALTER TABLE `request_systems`
  ADD PRIMARY KEY (`request_id`,`system_id`),
  ADD KEY `system_id` (`system_id`);

--
-- Индексы таблицы `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `systems`
--
ALTER TABLE `systems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `action_logs`
--
ALTER TABLE `action_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `systems`
--
ALTER TABLE `systems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `action_logs`
--
ALTER TABLE `action_logs`
  ADD CONSTRAINT `action_logs_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `action_logs_ibfk_2` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`);

--
-- Ограничения внешнего ключа таблицы `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`requester_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Ограничения внешнего ключа таблицы `request_systems`
--
ALTER TABLE `request_systems`
  ADD CONSTRAINT `request_systems_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_systems_ibfk_2` FOREIGN KEY (`system_id`) REFERENCES `systems` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
