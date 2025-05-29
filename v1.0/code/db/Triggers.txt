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