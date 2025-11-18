INSERT INTO Users (Name, Age, Weight, bodyFatPercentage, Gender) VALUES
('Collin Fair', 21, 135, 18.50, 'M'),
('Adita Kulkarni', 29, 100, 28.00, 'F'),
('Liam Callahan', 21, 280, 15.30, 'M'),
('Alyssa Ackman', 19, 90, 22.10, 'F'),
('Hames Joman', 22, 220, 20.29, 'M'),
('Nathan Amidon', 23, 180, 23.27, 'M');

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

INSERT INTO ExerciseLog (NumOfSetsDone, NumOfRepsDone, Length, Weight) VALUES
(4, 10, NULL, 60), -- Bench Press: 4 sets of 10 reps at 120lbs
(3, 12, NULL, 75), -- Dumbbell Squat: 3 sets of 12 reps at 75lbs
(5, 8, NULL, 0),  -- Pull Up: 5 sets of 8 reps
(1, 0, 45, 0),  -- Treadmill Running: 1 set, 45 minutes
(3, 0, 1, 0);   -- Plank: 3 sets of 1 minute

INSERT INTO NutritionLog (NumOfCal, NumOfCarbs, NumOfProtein) VALUES
(2500, 300, 180),
(1800, 150, 120),
(3200, 450, 200),
(2100, 250, 150);

INSERT INTO SleepLog (SleepTime) VALUES
(7),
(6),
(8),
(6),
(7);

INSERT INTO Goal (WeightGoal, CalorieGoal, ExerciseFrequency, SleepGoal) VALUES
(80, 2800, 5, 7),
(65, 1600, 4, 8), 
(90, 3000, 6, 7); 