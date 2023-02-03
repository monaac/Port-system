CREATE TABLE ships (
    ship_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    length INT NOT NULL,
    weight INT NOT NULL,
    UNIQUE (name)
);

CREATE TABLE docks (
    dock_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    capacity INT NOT NULL,
    UNIQUE (name)
);

CREATE TABLE shipments (
    shipment_id INT PRIMARY KEY AUTO_INCREMENT,
    ship_id INT NOT NULL,
    dock_id INT NOT NULL,
    arrival_time DATETIME NOT NULL,
    departure_time DATETIME,
    FOREIGN KEY (ship_id) REFERENCES ships(ship_id),
    FOREIGN KEY (dock_id) REFERENCES docks(dock_id)
);
