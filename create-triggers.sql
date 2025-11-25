-- trigger on user creation
DELIMITER $$

CREATE TRIGGER log_user_create
AFTER INSERT ON Users
FOR EACH ROW
BEGIN
    INSERT INTO UserAuditLog (
        UserID, ActionType, Name, Age, Weight, BodyFatPercentage, Gender
    ) VALUES (
        NEW.UserID, 'CREATE', NEW.Name, NEW.Age, NEW.Weight, NEW.bodyFatPercentage, NEW.Gender
    );
END$$

DELIMITER ;

-- trigger on user deletion
DELIMITER $$

CREATE TRIGGER log_user_delete
AFTER DELETE ON Users
FOR EACH ROW
BEGIN
    INSERT INTO UserAuditLog (
        UserID, ActionType, Name, Age, Weight, BodyFatPercentage, Gender
    ) VALUES (
        OLD.UserID, 'DELETE', OLD.Name, OLD.Age, OLD.Weight, OLD.bodyFatPercentage, OLD.Gender
    );
END$$

DELIMITER ;

-- Prevent invalid Days Of Week
DELIMITER $$

CREATE TRIGGER valid_days_of_weeks
BEFORE INSERT ON WorkoutPlan
FOR EACH ROW
BEGIN
    IF NEW.DaysOfWeek NOT IN ('Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid DaysOfWeek value. Must be one of: Mo, Tu, We, Th, Fr, Sa, Su';
    END IF;
END$$

DELIMITER ;

-- prevent invalid gender
DELIMITER $$

CREATE TRIGGER valid_gender
BEFORE INSERT ON Users
FOR EACH ROW
BEGIN
    IF NEW.Gender NOT IN ('M', 'F', 'O') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid Gender value. Must be M, F, or O';
    END IF;
END$$

DELIMITER ;

