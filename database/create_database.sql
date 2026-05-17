-- =====================================================
-- Prime Digitizers Service Management Portal
-- Database Creation Script
-- Database: prime_digitizers_db
-- =====================================================

CREATE DATABASE IF NOT EXISTS prime_digitizers_db
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE prime_digitizers_db;

-- =====================================================
-- Table: users
-- Purpose: Stores registered client and admin users
-- =====================================================

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  role ENUM('client', 'admin') NOT NULL DEFAULT 'client',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =====================================================
-- Table: services
-- Purpose: Stores services offered by Prime Digitizers
-- =====================================================

CREATE TABLE IF NOT EXISTS services (
  id INT AUTO_INCREMENT PRIMARY KEY,
  service_name VARCHAR(100) NOT NULL,
  description TEXT NOT NULL,
  base_price DECIMAL(10,2) NOT NULL,
  estimated_delivery VARCHAR(100) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =====================================================
-- Table: design_requests
-- Purpose: Stores design service requests submitted by clients
-- =====================================================

CREATE TABLE IF NOT EXISTS design_requests (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  service_id INT NOT NULL,
  project_title VARCHAR(150) NOT NULL,
  description TEXT NOT NULL,
  deadline DATE NOT NULL,
  budget DECIMAL(10,2) NOT NULL,
  reference_note TEXT,
  status ENUM('Pending', 'In Progress', 'Completed', 'Rejected') NOT NULL DEFAULT 'Pending',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  CONSTRAINT fk_design_requests_user
    FOREIGN KEY (user_id)
    REFERENCES users(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

  CONSTRAINT fk_design_requests_service
    FOREIGN KEY (service_id)
    REFERENCES services(id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

-- =====================================================
-- Indexes
-- =====================================================

CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_design_requests_user_id ON design_requests(user_id);
CREATE INDEX idx_design_requests_service_id ON design_requests(service_id);
CREATE INDEX idx_design_requests_status ON design_requests(status);