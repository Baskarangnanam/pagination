CREATE TABLE `datas` (
  `id` int(11) NOT NULL,
  `PO number` int(100) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Currency` varchar(100) NOT NULL,
  `Status` tinyint(1) NOT NULL
);


INSERT INTO `datas` (`id`, `PO number`, `Date`, `Currency`, `Status`) VALUES
(1, 2000000111, '2021-03-02 16:35:06', 'USD', 0),
(2, 2000000112, '2021-03-02 16:35:10', 'USD', 0);

ALTER TABLE `datas`
ADD PRIMARY KEY (`id`);

ALTER TABLE `datas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
