DELIMITER $$

CREATE TRIGGER update_order_status
AFTER UPDATE ON Package
FOR EACH ROW
BEGIN
    IF OLD.PackcageStatus = 'Unpacked' AND NEW.PackcageStatus = 'Packed' THEN
        UPDATE Order_
        SET Status_ = 'Ready for Pickup'
        WHERE OrderID = NEW.PackageOrderID
          AND Status_ = 'Pending';
    END IF;
END$$

DELIMITER ;




DELIMITER $$

CREATE TRIGGER check_leasing_if_finished1
BEFORE UPDATE ON Leasing
FOR EACH ROW
BEGIN
    IF NEW.Final_date < CURDATE() THEN
        SET NEW.Status_ = 'Finished';
    END IF;
END$$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER check_leasing_if_finished2
BEFORE UPDATE ON Leasing
FOR EACH ROW
BEGIN
    IF NEW.Final_date < CURDATE() THEN
        SET NEW.Status_ = 'Finished';
    END IF;
END$$

DELIMITER ;


