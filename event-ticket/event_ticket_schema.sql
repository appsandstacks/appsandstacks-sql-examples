-- Event Management and Ticketing System DDL
CREATE DATABASE IF NOT EXISTS event_ticket_management_db;
USE event_ticket_management_db;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE organizers (
    organizer_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    organization_name VARCHAR(150),
    verified BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE venues (
    venue_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    address TEXT NOT NULL,
    city VARCHAR(100),
    country VARCHAR(100),
    capacity INT,
    latitude DECIMAL(10,8),
    longitude DECIMAL(11,8)
);

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    organizer_id INT NOT NULL,
    venue_id INT NOT NULL,
    category_id INT,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (organizer_id) REFERENCES organizers(organizer_id),
    FOREIGN KEY (venue_id) REFERENCES venues(venue_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE ticket_types (
    ticket_type_id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT NOT NULL,
    name VARCHAR(50),
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (event_id) REFERENCES events(event_id)
);

CREATE TABLE tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    ticket_type_id INT NOT NULL,
    user_id INT NOT NULL,
    purchase_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('ACTIVE','USED','CANCELLED') DEFAULT 'ACTIVE',
    FOREIGN KEY (ticket_type_id) REFERENCES ticket_types(ticket_type_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_method ENUM('CARD','PAYPAL','APPLE_PAY','GOOGLE_PAY'),
    payment_status ENUM('PENDING','COMPLETED','FAILED') DEFAULT 'PENDING',
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE attendees (
    attendee_id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT NOT NULL,
    user_id INT NOT NULL,
    check_in_time DATETIME,
    FOREIGN KEY (event_id) REFERENCES events(event_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT NOT NULL,
    user_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (event_id) REFERENCES events(event_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
