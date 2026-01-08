-- Create the database
CREATE DATABASE resort_booking;
USE resort_booking;

-- Rooms table
CREATE TABLE Rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(10) NOT NULL,
    type VARCHAR(50) NOT NULL,
    price_per_night DECIMAL(8,2) NOT NULL
);

-- Guests table
CREATE TABLE Guests (
    guest_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL
);

-- Bookings table
CREATE TABLE Bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    guest_id INT NOT NULL,
    room_id INT NOT NULL,
    checkin_date DATE NOT NULL,
    checkout_date DATE NOT NULL,
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);

-- Sample rooms
INSERT INTO Rooms (room_number, type, price_per_night) VALUES
('101', 'Single Deluxe', 120.00),
('102', 'Double Deluxe', 180.00),
('201', 'Suite', 250.00);

-- Sample guests
INSERT INTO Guests (name, email, phone) VALUES
('Jane Smith', 'jane.smith@email.com', '5551234567'),
('Michael Lee', 'michael.lee@email.com', '5559876543'),
('Sophia Tan', 'sophia.tan@email.com', '5556789012');

-- Sample bookings
INSERT INTO Bookings (guest_id, room_id, checkin_date, checkout_date) VALUES
(1, 2, '2026-01-10', '2026-01-15'),
(3, 1, '2026-02-01', '2026-02-05');
