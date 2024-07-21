CREATE DATABASE up_notes;

USE up_notes;
-- Создание таблицы onboarding
CREATE TABLE onboarding (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Создание таблицы onboarding_pages
CREATE TABLE onboarding_pages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    onboarding_id INT,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    svg_image VARCHAR(255) NOT NULL,
    FOREIGN KEY (onboarding_id) REFERENCES onboarding(id) ON DELETE CASCADE
);
