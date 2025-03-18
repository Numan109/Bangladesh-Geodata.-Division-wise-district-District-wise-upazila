-- Divisions Table
CREATE TABLE divisions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    english VARCHAR(255) NOT NULL,
    bangla VARCHAR(255) NOT NULL
);

-- Districts Table
CREATE TABLE districts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    english VARCHAR(255) NOT NULL,
    bangla VARCHAR(255) NOT NULL,
    eng_division VARCHAR(255) NOT NULL,
    ban_division VARCHAR(255) NOT NULL,
    division_id INT,
    FOREIGN KEY (division_id) REFERENCES divisions(id)
);

-- Upazilas Table
CREATE TABLE upazilas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    english VARCHAR(255) NOT NULL,
    bangla VARCHAR(255) NOT NULL,
    eng_district VARCHAR(255) NOT NULL,
    ban_district VARCHAR(255) NOT NULL,
    district_id INT,
    FOREIGN KEY (district_id) REFERENCES districts(id)
);
