SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

CREATE TABLE IF NOT EXISTS schedules (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    start_datetime DATETIME NOT NULL,
    end_datetime DATETIME,
    is_completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO `schedule_db`.`schedules` (`title`, `description`, `start_datetime`, `end_datetime`, `is_completed`) VALUES ("풋살", "정기 풋살 모임", '20251015080000', '20251015090000', '1');
INSERT INTO `schedule_db`.`schedules` (`title`, `description`, `start_datetime`, `end_datetime`, `is_completed`) VALUES("영화보기","체인소맨",20251002200000,20251003010000);
INSERT INTO `schedule_db`.`schedules` (`title`, `description`, `start_datetime`, `end_datetime`, `is_completed`) VALUES("영화보기","귀멸의칼날",20251010100000,20251010130000);
INSERT INTO `schedule_db`.`schedules` (`title`, `description`, `start_datetime`, `end_datetime`, `is_completed`) VALUES("게임하기","종합게임",20251003000000,20251011050000);
INSERT INTO `schedule_db`.`schedules` (`title`, `description`, `start_datetime`, `end_datetime`, `is_completed`) VALUES("공부하기","flask",20251011060000,20251011061000);
INSERT INTO `schedule_db`.`schedules` (`title`, `description`, `start_datetime`, `end_datetime`, `is_completed`) VALUES("공부하기","파이썬",20251011061000,20251011062000);
INSERT INTO `schedule_db`.`schedules` (`title`, `description`, `start_datetime`, `end_datetime`, `is_completed`) VALUES("공부하기","django",20251011062000,20251011063000);
INSERT INTO `schedule_db`.`schedules` (`title`, `start_datetime`, `end_datetime`, `is_completed`) VALUES("낮잠자기",20251011062000,20251011132000);
INSERT INTO `schedule_db`.`schedules` (`title`, `start_datetime`, `end_datetime`, `is_completed`) VALUES("운동하기",20251011133000,20251011192000);
INSERT INTO `schedule_db`.`schedules` (`title`, `start_datetime`, `end_datetime`, `is_completed`) VALUES("낮잠자기",20251011192000,20251011212000);
INSERT INTO `schedule_db`.`schedules` (`title`, `description`, `start_datetime`, `end_datetime`, `is_completed`) VALUES("일본어공부하기","N3",20251011212000,20251011212000);