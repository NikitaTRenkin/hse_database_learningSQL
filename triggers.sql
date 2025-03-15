DELIMITER //

CREATE TRIGGER update_return_date
BEFORE UPDATE ON Loans
FOR EACH ROW
BEGIN
    IF NEW.return_date IS NOT NULL THEN
        SET NEW.loan_date = CURRENT_DATE();
    END IF;
END; //

DELIMITER ;