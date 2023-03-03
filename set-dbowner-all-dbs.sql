EXEC sp_MSforeachdb 
 'IF ''?'' NOT IN(''master'', ''model'', ''msdb'', ''tempdb'')
  BEGIN 
  USE [?] 
  EXEC sp_changedbowner ''sa''
  END'
