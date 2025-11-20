CREATE VIEW user_info_view AS
SELECT
    u.Name,
    u.Age,
    u.Weight,
    u.bodyFatPercentage,
    SUM(e.LogID) AS TotalWorkoutsCompleted,
    SUM(n.NumOfCal) AS TotalCaloriesConsumed,
    SUM(s.SleepDayID) AS TotalSleepHours
FROM
    Users u
JOIN
    ExerciseLog e ON u.UserID = e.UserID
JOIN
    NutritionLog n ON u.UserID = n.UserID
JOIN
    SleepLog s ON u.UserID = s.UserID
GROUP BY
    u.UserID;


CREATE VIEW sleep_summary_view AS
SELECT
    u.Name,
    AVG(s.SleepTime) AS AverageSleepTime,
    MAX(s.SleepTime) AS MaxSleepTime,
    MIN(s.SleepTime) AS MinSleepTime
FROM
    Users u
JOIN
    SleepLog s ON u.UserID = s.UserID
GROUP BY
    u.UserID;
    

CREATE VIEW nutrition_summary_view AS
SELECT
    u.Name,
    AVG(n.NumOfCal) AS AverageCalories,
    AVG(n.NumOfCarbs) AS AverageCarbs,
    AVG(n.NumOfProtein) AS AverageProtein
FROM
    Users u
JOIN
    NutritionLog n ON u.UserID = n.UserID
GROUP BY
    u.UserID;

CREATE VIEW exercise_performance_view AS
SELECT
    u.Name,
    e.ExerciseName,
    AVG(el.NumOfSetsDone) AS AverageSets,
    AVG(el.NumOfRepsDone) AS AverageReps,
    AVG(el.Length) AS AverageDuration,
    AVG(el.Weight) AS AverageWeight
FROM
    Users u
JOIN
    ExerciseLog el ON u.UserID = el.UserID
JOIN
    Exercise e ON el.ExerciseID = e.ExerciseID
GROUP BY
    u.UserID, e.ExerciseID;

CREATE VIEW goal_progress_view AS
SELECT
    u.Name,
    g.WeightGoal,
    u.Weight AS CurrentWeight,
    g.CalorieGoal,
    SUM(n.NumOfCal) AS TotalCaloriesConsumed,
    g.ExerciseFrequency,
    SUM(e.LogID) AS TotalWorkoutsCompleted,
    g.SleepGoal,
    AVG(s.SleepTime) AS AverageSleepTime
FROM
    Users u
JOIN
    Goal g ON u.UserID = g.UserID
JOIN
    NutritionLog n ON u.UserID = n.UserID
JOIN
    ExerciseLog e ON u.UserID = e.UserID
JOIN
    SleepLog s ON u.UserID = s.UserID
GROUP BY
    u.UserID;