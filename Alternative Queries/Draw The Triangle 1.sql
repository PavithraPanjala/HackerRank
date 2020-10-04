/* Draw The Triangle 1 */

DECLARE @I INT = 20

WHILE @I >= 1
BEGIN
    PRINT REPLICATE('* ', @I)
    SET @I = @I - 1
END