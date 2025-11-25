INSERT INTO Users (Age, bodyFatPercentage, Gender, Name, Weight)
VALUES (84, 20.0,"m","Bob Dylan",180);

INSERT INTO Goal (CalorieGoal, ExerciseFrequency, SleepGoal, UserID, WeightGoal)
VALUES (1800, 3, 7, 3, 170);

INSERT INTO WorkoutPlan (DaysOfWeek, ExerciseId, NumOfExercises, TargetmUscleGroup,UserID, WorkoutName)
VALUES ('Mo', 1, 7, "Chest/Arms", 3, "Arm Day");

INSERT INTO Exercise (ExerciseName, ExerciseType)
VALUES ("Forward Lunge", "Cardio");

INSERT INTO ExerciseLog (ExerciseID, Date, NumOfRepsDone, NumOfSetsDone, UserID, Weight)
VALUES (4, "2025-11-25", 5, 2, 3, 200);

INSERT INTO SupplementLog (WorkoutID, CreatineTotalG, PreworkoutTotalG, ProteinTotalG)
VALUES (6, 100, 200, 500);

INSERT INTO NutritionLog (Date, NumOfCal, NumOfCarbs, NumOfProtein, UserID)
VALUES ("2025-10-31", 2000, 300, 500, 3);

INSERT INTO SleepLog (SleepTime, UserID)
VALUES (10, 3);

select * from sleep_summary_view where sleep_summary_view.Name = "Liam Callahan";

select * from user_info_view where user_info_view.Name = "Liam Callahan";

select * from goal_progress_view where Name = "Liam Callahan";
