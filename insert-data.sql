INSERT INTO Users (Name, Age, Weight, bodyFatPercentage, Gender) VALUES
('Collin Fair', 21, 135, 18.50, 'M'),
('Adita Kulkarni', 29, 100, 28.00, 'F'),
('Liam Callahan', 21, 280, 15.30, 'M'),
('Alyssa Ackman', 19, 90, 22.10, 'F'),
('Hames Joman', 22, 220, 20.29, 'M'),
('Nathan Amidon', 23, 180, 23.27, 'M'),
('Trinity Thiele', 21, 130, 21.0, 'F');

INSERT INTO Exercise (ExerciseName, ExerciseType) VALUES
('Bench Press', 'Strength/Chest'),   
('Dumbbell Squat', 'Strength/Legs'),      
('Pull Up', 'Strength/Back'),               
('Overhead Press', 'Strength/Shoulders'),   
('Plank', 'Core/Endurance'),                
('Treadmill Running', 'Cardio');

INSERT INTO WorkoutPlan (NumOfExercises, WorkoutName, TargetMuscleGroup, DaysOfWeek, ExerciseID) VALUES
(5, 'Upper Body Push', 'Chest, Shoulders, Triceps', 'Mo', 1), -- Bench Press (ExerciseID 1)
(4, 'Lower Body', 'Quads, Glutes, Hamstrings', 'We', 2), -- Dumbbell Squat (ExerciseID 2)
(3, 'Cardio and Core', 'Cardiovascular System, Abs', 'Fr', 6), -- Treadmill Running (ExerciseID 6)
(5, 'Upper Body Pull', 'Back, Biceps', 'Tu', 3); -- Pull Up (ExerciseID 3)


INSERT INTO SupplementLog (WorkoutID, ProteinTotalG, CreatineTotalG, PreworkoutTotalG) VALUES
(1, 40, 5, 15), -- Upper Body Push
(2, 60, 5, 0),  -- Lower Body
(4, 30, 0, 10); -- Upper Body Pull

INSERT INTO ExerciseLog (ExerciseID, Date, UserID, NumOfSetsDone, NumOfRepsDone, Length, Weight) VALUES
(1, '2025-11-01', 1, 4, 10, NULL, 60), -- Bench Press: 4 sets of 10 reps at 120lbs
(2, '2025-11-01', 2, 3, 12, NULL, 75),   -- Dumbbell Squat
(3, '2025-11-02', 3, 5, 8, 2, NULL),  -- Pull Up
(6, '2025-11-03', 1, 1, NULL, 45, NULL), -- Treadmill Running (45 minutes)
(5, '2025-11-04', 2, 3, NULL, 1, NULL),  -- Plank (1 minute)
(4, '2025-11-05', 3, 4, 10, NULL, 60),  -- Overhead Press
(1, '2025-11-06', 2, 3, 12, NULL, 115), -- Bench Press
(2, '2025-11-07', 1, 4, 10, NULL, 80),  -- Dumbbell Squat
(3, '2025-11-08', 3, 5, 6, 3, NULL),  -- Pull Up
(6, '2025-11-09', 2, 1, NULL, 30, NULL), -- Treadmill Running (30 minutes)
(1, '2025-11-10', 7, 3, 12, NULL, 50),  -- Bench Press
(5, '2025-11-11', 7, 2, NULL, 2, NULL), -- Plank (2 minutes)
(6, '2025-11-12', 7, 1, NULL, 30, NULL); -- Treadmill Running (30 minutes)

INSERT INTO NutritionLog (Date, UserID, NumOfCal, NumOfCarbs, NumOfProtein) VALUES
('2025-11-01', 1, 2500, 300, 180),
('2025-11-01', 2, 1800, 150, 120),
('2025-11-02', 3, 3200, 450, 200),
('2025-11-03', 1, 2100, 250, 150),
('2025-11-04', 2, 2200, 280, 140),
('2025-11-05', 3, 3000, 400, 180),
('2025-11-06', 1, 2600, 320, 190),
('2025-11-07', 2, 2000, 200, 130),
('2025-11-08', 3, 3100, 420, 210),
('2025-11-09', 1, 2400, 290, 170),
('2025-11-10', 7, 2000, 250, 130),
('2025-11-11', 7, 2200, 280, 140),
('2025-11-12', 7, 2100, 260, 135);

INSERT INTO SleepLog (SleepTime, UserID) VALUES
(7, 1),
(6, 2),
(8, 3),
(6, 1),
(7, 2),
(5, 3),
(8, 1),
(7, 2),
(6, 3),
(7, 1),
(7, 7),
(6, 7),
(8, 7);

INSERT INTO Goal (WeightGoal, CalorieGoal, ExerciseFrequency, SleepGoal, UserID) VALUES
(150, 2800, 5, 7, 1),  -- Collin Fair
(120, 1600, 4, 8, 2),  -- Adita Kulkarni
(200, 3000, 6, 7, 3),  -- Liam Callahan
(95, 2000, 4, 8, 4),   -- Alyssa Ackman
(210, 3200, 5, 7, 5),  -- Hames Joman
(175, 2500, 5, 7, 6),  -- Nathan Amidon
(130, 2000, 4, 7, 7); -- Trinity Thiele