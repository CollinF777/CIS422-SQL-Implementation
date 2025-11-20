CREATE VIEW user_info_view AS
SELECT
    u.Name,
    u.Age,
    u.Weight,
    u.bodyFatPercentage,
    SUM(e.LogID) AS TotalWorkoutsCompleted,
    SUM(n.NumOfCal) AS TotalCaloriesConsumed
FROM
    Users u
JOIN
    ExerciseLog e ON u.UserID = e.UserID
JOIN
    NutritionLog n ON u.UserID = n.UserID
GROUP BY
    u.UserID;