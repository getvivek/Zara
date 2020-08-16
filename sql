503164171 – Vivek

Distinct in excel - =IF(COUNTIF(A$293:A293,A293)=1,A293,"")
replace(replace(A2_2P_BrkQty,CHAR(13),''),CHAR(10),'')

-- Revise --
Process and Process steps
Explanation on Connections
Explanation on Custom.vb files
QMS Integration (BOM, Other parameters which are to be passed)
Drawings and publications
Localisation
Inheritance


-- SELECT COLUMN_NAME,DATA_TYPE ,'cmd.AddParameter("@'+COLUMN_NAME+'", Me.Parent.PanelAmps, DbType.Int16)'+DATA_TYPE
-- FROM INFORMATION_SCHEMA.COLUMNS
-- WHERE TABLE_NAME = ''
-- ORDER BY ORDINAL_POSITION

-- EXEC sp_rename 'TableName.OldName', 'NewName', 'COLUMN'

-- ALTER TABLE [table_name] ALTER COLUMN EPNAMP  int 

-- SELECT  name, [modify_date] FROM sys.tables order by [modify_date] desc

-- Check Null value in a table
 /* DECLARE @tb nvarchar(512) = N'dbo.[table_name]';
DECLARE @sql nvarchar(max) = N'SELECT * FROM ' + @tb
    + ' WHERE 1 = 0';
SELECT @sql += N' OR ' + QUOTENAME(name) + ' IS NULL'
    FROM sys.columns 
    WHERE [object_id] = OBJECT_ID(@tb);
 EXEC sys.sp_executesql @sql; */
 
 -- check duplicate rows 
 /*
 SELECT 
    col1,col2,...
    COUNT(*)
FROM 
    table_name
GROUP BY 
    col1,col2,...
HAVING 
    COUNT(*) > 1;
*/

-- ALTER TABLE [1_Hires_21A2andXTMFGBoM_XT1EndItemxFeeder] ADD PartIndex_Old nvarchar(255)

SELECT *
INTO Bkp_ENTNeutralLugsBOM 
FROM ENTNeutralLugsBOM


exec sp_rename 'Bk_ENTFrontCatalog', 'ENTFrontCatalog'


-- WITH CTE AS  
-- (  
--   Select ROW_NUMBER() Over(Partition by StudentName, SubMarks Order by StudentId) as 'RowNumber',*  
--   from StudentMark  
-- )  
-- Delete from CTE Where RowNumber > 1  


-- SQL_Latin1_General_CP1_CI_AS or SQL_Latin1_General_CP1_CS_AS collate clause 
-- Both are applies to those columns whose data type is char, varchar, nvarchar, and text

--  IN One row all Column details for Table
-- Declare @Numbers AS Nvarchar(MAX) -- It must not be MAX if you have few numbers 
-- SELECT  @Numbers = COALESCE(@Numbers + ',', '') + COLUMN_NAME
-- FROM INFORMATION_SCHEMA.COLUMNS
-- WHERE TABLE_NAME ='1_Hires_ASPanelAndMain_Aseriespanel'
-- SELECT @Numbers




Sub part collection - quantity -- must be 1 -- its createing one instance of that sub part collection if more than one then more then one instance

A-Series Panel 
Distribution Power Panel
EntellEon Panel
Spectra Panel
xteilloan

UI
Layout
Drawings
MFGBOM

Panel Divided Into Below parts

Line End Filler
Line Space Mod
Line Mod
Middle Mod
Split Bus Mod
Middle Mod Split B
Load Mod
Load Space Mod
Gap
Load End Filler





DECLARE @SearchStr nvarchar(100)
SET @SearchStr = '&' 

CREATE TABLE #Results (ColumnName nvarchar(370), ColumnValue nvarchar(3630))
 
SET NOCOUNT ON
 
DECLARE @TableName nvarchar(256), @ColumnName nvarchar(128), @SearchStr2 nvarchar(110)
SET  @TableName = ''
SET @SearchStr2 = QUOTENAME('%' + @SearchStr + '%','''')
 
WHILE @TableName IS NOT NULL
 
BEGIN
    SET @ColumnName = ''
    SET @TableName = 
    (
        SELECT MIN(QUOTENAME(TABLE_SCHEMA) + '.' + QUOTENAME(TABLE_NAME))
        FROM     INFORMATION_SCHEMA.TABLES
        WHERE         TABLE_TYPE = 'BASE TABLE'
            AND    QUOTENAME(TABLE_SCHEMA) + '.' + QUOTENAME(TABLE_NAME) > @TableName
            AND    OBJECTPROPERTY(
                    OBJECT_ID(
                        QUOTENAME(TABLE_SCHEMA) + '.' + QUOTENAME(TABLE_NAME)
                         ), 'IsMSShipped'
                           ) = 0
    )
 
    WHILE (@TableName IS NOT NULL) AND (@ColumnName IS NOT NULL)
         
    BEGIN
        SET @ColumnName =
        (
            SELECT MIN(QUOTENAME(COLUMN_NAME))
            FROM     INFORMATION_SCHEMA.COLUMNS
            WHERE         TABLE_SCHEMA    = PARSENAME(@TableName, 2)
                AND    TABLE_NAME    = PARSENAME(@TableName, 1)
                AND    DATA_TYPE IN ('char', 'varchar', 'nchar', 'nvarchar', 'int', 'decimal')
                AND    QUOTENAME(COLUMN_NAME) > @ColumnName
        )
 
        IF @ColumnName IS NOT NULL
         
        BEGIN
            INSERT INTO #Results
            EXEC
            (
                'SELECT ''' + @TableName + '.' + @ColumnName + ''', LEFT(' + @ColumnName + ', 3630) FROM ' + @TableName + ' (NOLOCK) ' +
                ' WHERE ' + @ColumnName + ' LIKE ' + @SearchStr2
            )
        END
    END   
END
 
SELECT distinct ColumnName, ColumnValue FROM #Results
 
DROP TABLE #Results



me.propery.value.invalid value (also restricted user to choose value from the bind value)
firstvalue to select the first value
last value  to select the second value
DB constrant -- when bind sql value to more then one property or to bind multiple column to grid
Grid can be bind through Connection
Valueformula - to set which values to shows based on condition
Valid value -  Collection of all valid value of that property
Rulesstream is a required based Tool the property code get executed based on the requirement
Direct user input prohiberted

abbglobalservicedesk@abb.com - sub INC7518612 msg - email is , mobile - 
www.abb.com/multifactor

pstRw$7106
vivek.kumar1@in.abb.com
sumit.agrawal@in.abb.com


SELECT 
'select * from  ['+TABLE_NAME+']
WHERE ['+COLUMN_NAME+'] <> LTRIM(RTRIM(['+COLUMN_NAME+']));'+CHAR(13)
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME LIKE '1_Hires_21A2andXTMFGBoM_XT6EndItem' 
AND DATA_TYPE!='int' and COLUMN_NAME not in ('partnumber','Description','PartIndex','PartIndex_OLD')
ORDER BY TABLE_NAME,COLUMN_NAME



VPN Request Pending (GE Side)
VPN Request Pending (Genpact Side)
-- We are working on the Spare system but now we need this for new new laptop request



Search all tables, all columns for a specific value SQL Server - Stack Overflow

GEMail

Abb Mail

GE Box


Links
