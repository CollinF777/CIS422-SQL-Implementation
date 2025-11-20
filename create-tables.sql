CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Weight INT,
    bodyFatPercentage DECIMAL(5,2),
    Gender CHAR(1)
);

CREATE TABLE Exercise (
    ExerciseID INT AUTO_INCREMENT PRIMARY KEY,
    ExerciseName VARCHAR(100) UNIQUE,
    ExerciseType VARCHAR(100)
);

CREATE TABLE WorkoutPlan (
    WorkoutID INT AUTO_INCREMENT PRIMARY KEY,
    NumOfExercises INT,
    WorkoutName VARCHAR(100),
    TargetMuscleGroup VARCHAR(100),
    DaysOfWeek CHAR(2),
    ExerciseID INT,
    FOREIGN KEY (ExerciseID) REFERENCES Exercise(ExerciseID)
    FOREIGN KEY (UserID) REFERENCES Users(UserID) --  ADDED FIELD
);

CREATE TABLE SupplementLog (
    WorkoutID INT PRIMARY KEY,
    ProteinTotalG INT,
    CreatineTotalG INT,
    PreworkoutTotalG INT,
    FOREIGN KEY (WorkoutID) REFERENCES WorkoutPlan(WorkoutID)
);

CREATE TABLE ExerciseLog (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    ExerciseID INT, --  ADDED FIELD
    Date DATE, --  ADDED FIELD
    UserID INT, --  ADDED FIELD
    NumOfSetsDone INT,
    NumOfRepsDone INT,
    Length INT,
    Weight INT,
    FOREIGN KEY (ExerciseID) REFERENCES Exercise(ExerciseID), --  ADDED FIELD
    FOREIGN KEY (UserID) REFERENCES Users(UserID)   --  ADDED FIELD
);

CREATE TABLE NutritionLog (
    NutritionDayId INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE, --  ADDED FIELD
    UserID INT, --  ADDED FIELD
    NumOfCal INT,
    NumOfCarbs INT,
    NumOfProtein INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE SleepLog (
    SleepDayID INT AUTO_INCREMENT PRIMARY KEY,
    SleepTime INT,
    UserID INT,  --  ADDED FIELD
    FOREIGN KEY (UserID) REFERENCES Users(UserID)  --  ADDED FIELD
);

CREATE TABLE Goal (
    GoalID INT AUTO_INCREMENT PRIMARY KEY,
    WeightGoal INT,
    CalorieGoal INT,
    ExerciseFrequency INT,
    SleepGoal INT,
    UserID INT, --  ADDED FIELD
    FOREIGN KEY (UserID) REFERENCES Users(UserID) --  ADDED FIELD
);

