CREATE DATABASE expense_db;
USE expense_db;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50)
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

CREATE TABLE expenses (
    expense_id INT PRIMARY KEY,
    user_id INT,
    category_id INT,
    amount DECIMAL(10,2),
    expense_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE budgets (
    budget_id INT PRIMARY KEY,
    user_id INT,
    monthly_budget DECIMAL(10,2),
    month_year VARCHAR(7),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
