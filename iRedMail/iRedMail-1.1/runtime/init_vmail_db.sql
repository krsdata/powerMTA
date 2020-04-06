-- Create database for virtual hosts
CREATE DATABASE IF NOT EXISTS vmail CHARACTER SET utf8;

-- Permissions
GRANT SELECT ON vmail.* TO 'vmail'@'localhost' IDENTIFIED BY 'kKhTqmLCl5Uxo80GfMvHRGH3XCVgec';
-- GRANT SELECT ON vmail.* TO 'vmail'@'mail.dnshookup.com' IDENTIFIED BY 'kKhTqmLCl5Uxo80GfMvHRGH3XCVgec';
GRANT SELECT,INSERT,DELETE,UPDATE ON vmail.* TO 'vmailadmin'@'localhost' IDENTIFIED BY 'G0FR0J8HYy2A9peBANtevoktQBBZ06';
-- GRANT SELECT,INSERT,DELETE,UPDATE ON vmail.* TO 'vmailadmin'@'mail.dnshookup.com' IDENTIFIED BY 'G0FR0J8HYy2A9peBANtevoktQBBZ06';

FLUSH PRIVILEGES;
