DROP DATABASE IF EXISTS "Hotel Management System";
CREATE DATABASE IF NOT EXISTS `hotel_management_system`;
USE `hotel_management_system`;

#
# TABLE STRUCTURE FOR: Agents
#

CREATE TABLE Agents (
  `agent_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(100) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `safety_question` VARCHAR(255) NOT NULL,  -- Changed from `safety question` to `safety_question`
  `type` ENUM('Admin', 'Non-Approved', 'Approved') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: Guests
#

CREATE TABLE Guests (
  `guest_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(255) NOT NULL,
  `register_date` DATETIME DEFAULT CURRENT_TIMESTAMP  -- Changed to DATETIME
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: Hotel
#

CREATE TABLE Hotel (
  `hotel_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(100) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `Total_floors` INT NOT NULL,  -- Changed from `Total_floors#` to `Total_floors`
  `Total_rooms` INT NOT NULL  -- Changed from `Total_rooms#` to `Total_rooms`
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: Rooms
#

CREATE TABLE Rooms (
    `room_id` INT NOT NULL AUTO_INCREMENT,
    `hotel` INT NOT NULL,
    `room_number` INT NOT NULL,  -- Changed from `room#` to `room_number`
    `floor_number` INT NOT NULL,  -- Changed from `floor#` to `floor_number`
    `smoke` TINYINT NOT NULL,  -- Removed (1) since display width is deprecated
    `capacity` ENUM('Individual', 'Double Room', 'Triple Room', 'Family Room') NOT NULL,
    `status` ENUM('Idle', 'Full', 'Hold') NOT NULL DEFAULT 'Idle',
    `cost` DOUBLE NOT NULL,
    PRIMARY KEY (`room_id`),
    FOREIGN KEY (`hotel`)
        REFERENCES Hotel (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: Booked_Rooms
#

CREATE TABLE Booked_Rooms (
  `bookedrooms_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  -- Added AUTO_INCREMENT
  `guest_id` INT,
  `room_id` INT NOT NULL,
  FOREIGN KEY (`room_id`) REFERENCES Rooms(`room_id`),
  FOREIGN KEY (`guest_id`) REFERENCES Guests(`guest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: Booking_Transaction
#

CREATE TABLE Booking_Transaction (
    `transaction_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  -- Added AUTO_INCREMENT
    `hotel` INT NOT NULL,
    `guest` INT NOT NULL,
    `agent` INT NOT NULL,
    `bookedroom` INT NOT NULL,
    `from_date` DATE NOT NULL,  -- Changed from `from` to `from_date`
    `to_date` DATE NOT NULL,      -- Changed from `to` to `to_date`
    `status` ENUM('Confirmed', 'Canceled', 'On Use', 'Ending') NOT NULL,  -- Corrected spelling
    `cost` DOUBLE NOT NULL,
    FOREIGN KEY (`hotel`)
        REFERENCES Hotel (`hotel_id`),
    FOREIGN KEY (`bookedroom`)
        REFERENCES Booked_Rooms (`bookedrooms_id`),
    FOREIGN KEY (`guest`)
        REFERENCES Guests (`guest_id`),
    FOREIGN KEY (`agent`)
        REFERENCES Agents (`agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;