-- Seed Data for Event Management and Ticketing System
USE event_ticket_management_db;

INSERT INTO users (full_name, email, password_hash, phone) VALUES
('Alice Johnson', 'alice@example.com', 'hash1', '+441234567890'),
('Bob Smith', 'bob@example.com', 'hash2', '+441234567891'),
('Charlie Green', 'charlie@example.com', 'hash3', '+441234567892'),
('Diana Prince', 'diana@example.com', 'hash4', '+441234567893'),
('Ethan Brown', 'ethan@example.com', 'hash5', '+441234567894');

INSERT INTO organizers (user_id, organization_name, verified) VALUES
(1, 'EventPro Ltd', TRUE),
(2, 'Global Gatherings', TRUE),
(3, 'TechSummit', TRUE);

INSERT INTO venues (name, address, city, country, capacity, latitude, longitude) VALUES
('O2 Arena', 'Peninsula Square', 'London', 'UK', 20000, 51.5030, 0.0032),
('Manchester Central', 'Windmill St', 'Manchester', 'UK', 10000, 53.4774, -2.2474),
('Birmingham NEC', 'North Ave', 'Birmingham', 'UK', 15000, 52.4525, -1.7170);

INSERT INTO categories (name) VALUES
('Music'), ('Technology'), ('Sports'), ('Business'), ('Education');

INSERT INTO events (organizer_id, venue_id, category_id, title, description, start_time, end_time) VALUES
(1, 1, 1, 'London Music Fest', 'A three-day outdoor music festival.', '2025-08-10 18:00:00', '2025-08-12 23:59:00'),
(2, 2, 2, 'Tech Expo 2025', 'Annual technology and innovation conference.', '2025-09-15 09:00:00', '2025-09-17 18:00:00'),
(3, 3, 4, 'Startup Networking Night', 'Networking event for entrepreneurs.', '2025-10-05 19:00:00', '2025-10-05 23:00:00'),
(1, 1, 3, 'Charity Football Match', 'Fundraiser sports event.', '2025-11-20 15:00:00', '2025-11-20 17:30:00'),
(2, 2, 5, 'Education Summit', 'Conference for educators and learners.', '2025-12-01 10:00:00', '2025-12-02 17:00:00');

INSERT INTO ticket_types (event_id, name, price, quantity) VALUES
(1, 'VIP', 150.00, 200),
(1, 'General Admission', 75.00, 1000),
(2, 'Standard Pass', 120.00, 500),
(2, 'Student Pass', 60.00, 300),
(3, 'Entry Ticket', 40.00, 200),
(4, 'Match Seat', 30.00, 1000),
(5, 'Conference Access', 80.00, 600);

INSERT INTO tickets (ticket_type_id, user_id, status) VALUES
(1, 3, 'ACTIVE'),
(2, 4, 'ACTIVE'),
(3, 5, 'ACTIVE'),
(4, 1, 'USED'),
(5, 2, 'ACTIVE'),
(6, 3, 'ACTIVE');

INSERT INTO payments (user_id, amount, payment_method, payment_status) VALUES
(3, 150.00, 'CARD', 'COMPLETED'),
(4, 75.00, 'PAYPAL', 'COMPLETED'),
(5, 120.00, 'CARD', 'COMPLETED'),
(1, 60.00, 'APPLE_PAY', 'COMPLETED');

INSERT INTO attendees (event_id, user_id, check_in_time) VALUES
(1, 3, '2025-08-10 17:30:00'),
(2, 5, '2025-09-15 08:30:00'),
(4, 3, '2025-11-20 14:30:00');

INSERT INTO reviews (event_id, user_id, rating, comment) VALUES
(1, 3, 5, 'Amazing experience!'),
(2, 5, 4, 'Very informative sessions.'),
(4, 3, 5, 'Great atmosphere!');
