-- Add coins column to users table
ALTER TABLE `users` ADD COLUMN `coins` INT(11) NOT NULL DEFAULT 0;

-- Optional: Create a separate coins table for better tracking
CREATE TABLE IF NOT EXISTS `player_coins` (
  `identifier` VARCHAR(50) NOT NULL,
  `coins` INT(11) NOT NULL DEFAULT 0,
  `last_updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;