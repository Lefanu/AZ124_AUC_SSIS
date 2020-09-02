--SQLINPSSVIL14\SQL14	192.168.234.220	[2434]	SQL Server 2014
USE SSIS_Config
GO
SELECT [id_ambiente]
      ,[nome_progetto]
      ,[project_id]
      ,[nome_parametro]
      ,[design_default_value]
      ,[valore_da_assegnare]
    FROM [SSIS_Config].[dbo].[AZ124_AUC_SSIS_Configurazioni]
  WHERE 1 = 1 

  ----------------------------
  -- Ambiente di SVILUPPO  ---
  ----------------------------

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'Data Source=SQLINPSSVIL04,1900;User ID=AUC_SSIS;Password=cneurvn;Initial Catalog=SSIS_LOG;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;' WHERE nome_parametro = 'LogConnection_ConnectionString' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'SSIS_LOG' WHERE nome_parametro = 'LogConnection_InitialCatalog' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'LogConnection' WHERE nome_parametro = 'LogConnection_Name' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'cneurvn' WHERE nome_parametro = 'LogConnection_Password' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'SQLINPSSVIL04,1900' WHERE nome_parametro = 'LogConnection_ServerName' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'AUC_SSIS' WHERE nome_parametro = 'LogConnection_UserName' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'Data Source=SQLINPSSVIL06.SER-TEST.INPS,2059;User ID=AUC;Password=sw54-1fr3;Initial Catalog=AUC;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;' WHERE nome_parametro = 'SourceConnection_ConnectionString' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'AUC' WHERE nome_parametro = 'SourceConnection_InitialCatalog' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'SourceConnection' WHERE nome_parametro = 'SourceConnection_Name' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'sw54-1fr3' WHERE nome_parametro = 'SourceConnection_Password' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'SQLINPSSVIL06.SER-TEST.INPS,2059' WHERE nome_parametro = 'SourceConnection_ServerName' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'AUC' WHERE nome_parametro = 'SourceConnection_UserName' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'Data Source=SQLINPSSVIL06.SER-TEST.INPS,2059;User ID=AUC;Password=sw54-1fr3;Initial Catalog=AUC;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;' WHERE nome_parametro = 'TargetConnection_ConnectionString' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'AUC' WHERE nome_parametro = 'TargetConnection_InitialCatalog' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'TargetConnection' WHERE nome_parametro = 'TargetConnection_Name' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'sw54-1fr3' WHERE nome_parametro = 'TargetConnection_Password' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'SQLINPSSVIL06.SER-TEST.INPS,2059' WHERE nome_parametro = 'TargetConnection_ServerName' AND id_ambiente = 1;	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'AUC' WHERE nome_parametro = 'TargetConnection_UserName' AND id_ambiente = 1;	

 ----------------------------
 -- Ambiente di PRODUZIONE --
 ----------------------------
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'Data Source=sqlinps51.servizi.inps\sqlinps51;User ID=AUC_SSIS;Password=Z8n.7k9$E@4;Initial Catalog=SSIS_LOG;Provider=SQLNCLI11;Auto Translate=False;Persist Security Info=True;' WHERE nome_parametro = 'LogConnection_ConnectionString' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'SSIS_LOG' WHERE nome_parametro = 'LogConnection_InitialCatalog' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'LogConnection' WHERE nome_parametro = 'LogConnection_Name' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'Z8n.7k9$E@4' WHERE nome_parametro = 'LogConnection_Password' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'sqlinps51.servizi.inps\sqlinps51' WHERE nome_parametro = 'LogConnection_ServerName' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'AUC_SSIS' WHERE nome_parametro = 'LogConnection_UserName' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'Data Source=SQLSERVER12,1140;User ID=ColfContribuente;Password=439tz.247;Initial Catalog=Colf;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;' WHERE nome_parametro = 'SourceConnection_ConnectionString' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'Colf' WHERE nome_parametro = 'SourceConnection_InitialCatalog' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'SourceConnection' WHERE nome_parametro = 'SourceConnection_Name' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = '439tz.247' WHERE nome_parametro = 'SourceConnection_Password' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'SQLSERVER12,1140' WHERE nome_parametro = 'SourceConnection_ServerName' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'ColfContribuente' WHERE nome_parametro = 'SourceConnection_UserName' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'Data Source=AUC.db.inps,2445;User ID=AUC_SSIS;Password=Z8n.7k9$E@4;Initial Catalog=AUC;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;' WHERE nome_parametro = 'TargetConnection_ConnectionString' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'AUC' WHERE nome_parametro = 'TargetConnection_InitialCatalog' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'TargetConnection' WHERE nome_parametro = 'TargetConnection_Name' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'Z8n.7k9$E@4' WHERE nome_parametro = 'TargetConnection_Password' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'AUC.db.inps,2445' WHERE nome_parametro = 'TargetConnection_ServerName' AND id_ambiente = 3;
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_SSIS] SET valore_da_assegnare = 'AUC_SSIS' WHERE nome_parametro = 'TargetConnection_UserName' AND id_ambiente = 3;

  