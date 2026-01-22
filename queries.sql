-- Monthly expense total
SELECT SUM(amount) AS total_expense
FROM expenses
WHERE DATE_FORMAT(expense_date,'%Y-%m')='2024-03';

-- Budget vs expense
SELECT b.month_year, b.monthly_budget,
       SUM(e.amount) AS spent
FROM budgets b
JOIN expenses e ON b.user_id = e.user_id
GROUP BY b.month_year, b.monthly_budget;
