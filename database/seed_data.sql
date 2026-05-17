-- =====================================================
-- Prime Digitizers Service Management Portal
-- Seed Data Script
-- Database: prime_digitizers_db
-- =====================================================

USE prime_digitizers_db;

INSERT INTO services (service_name, description, base_price, estimated_delivery)
VALUES
(
  'Vector Tracing',
  'Professional vector tracing service for converting raster logos, sketches, and artwork into clean scalable vector files.',
  25.00,
  '1-2 business days'
),
(
  'Proposal Design',
  'Custom proposal design service for business documents, academic proposals, client presentations, and branded PDF layouts.',
  40.00,
  '2-3 business days'
),
(
  'Video Editing',
  'Creative video editing service for promotional videos, social media reels, business content, and short-form digital media.',
  60.00,
  '3-5 business days'
),
(
  'Social Media Post Design',
  'Professional social media post design service for Facebook, Instagram, LinkedIn, and digital marketing campaigns.',
  20.00,
  '1-2 business days'
);

-- Important:
-- Users should be created through the backend registration API.
-- This ensures passwords are stored securely using bcrypt hashing.
--
-- After creating the admin user through the API, run:
--
-- UPDATE users
-- SET role = 'admin'
-- WHERE email = 'admin@primedigitizers.com';