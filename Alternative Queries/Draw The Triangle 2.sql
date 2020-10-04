/* Draw The Triangle 2 */

DECLARE @I INT = 1

WHILE @I <= 20
BEGIN
    PRINT REPLICATE('* ', @I)
    SET @I = @I + 1
END