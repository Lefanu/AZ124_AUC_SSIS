--SQLINPSSVIL14\SQL14	192.168.234.220	[2434]	SQL Server 2014
USE SSIS_Config
GO
SELECT [id_ambiente]
      ,[nome_progetto]
      ,[project_id]
      ,[nome_parametro]
      ,[design_default_value]
      ,[valore_da_assegnare]
    FROM [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
  WHERE 1 = 1 

----------------------------
-- Ambiente di SVILUPPO  ---
----------------------------

-- LogConnection --
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'Data Source=SQLINPSSVIL04,1900;User ID=AUC_SSIS;Password=cneurvn;Initial Catalog=SSIS_LOG;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;' 
WHERE nome_parametro = 'LogConnection_ConnectionString' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] SET valore_da_assegnare = 'SSIS_LOG' 
WHERE nome_parametro = 'LogConnection_InitialCatalog' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'LogConnection' 
WHERE nome_parametro = 'LogConnection_Name' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'cneurvn' 
WHERE nome_parametro = 'LogConnection_Password' AND id_ambiente = 1;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = '0' 
WHERE nome_parametro = 'LogConnection_RetainSameConnection' AND id_ambiente = 1;
	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'SQLINPSSVIL04,1900' 
WHERE nome_parametro = 'LogConnection_ServerName' AND id_ambiente = 1;
	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'AUC_SSIS' 
WHERE nome_parametro = 'LogConnection_UserName' AND id_ambiente = 1;	

-- SourceConnection --
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'Data Source=SQLINPSSVIL06.SER-TEST.INPS,2059;User ID=AUC;Password=sw54-1fr3;Initial Catalog=AUC;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;' 
WHERE nome_parametro = 'SourceConnection_ConnectionString' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'AUC' 
WHERE nome_parametro = 'SourceConnection_InitialCatalog' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'SourceConnection' 
WHERE nome_parametro = 'SourceConnection_Name' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'sw54-1fr3' 
WHERE nome_parametro = 'SourceConnection_Password' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = '0' 
WHERE nome_parametro = 'SourceConnection_RetainSameConnection' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'SQLINPSSVIL06.SER-TEST.INPS,2059' 
WHERE nome_parametro = 'SourceConnection_ServerName' AND id_ambiente = 1;
	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'AUC' 
WHERE nome_parametro = 'SourceConnection_UserName' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'Catalogo SQL Sorgente' 
WHERE nome_parametro = 'SourceConnection_Description' AND id_ambiente = 1;

-- TargetConnection --
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'Data Source=SQLINPSSVIL06.SER-TEST.INPS,2059;User ID=AUC;Password=sw54-1fr3;Initial Catalog=AUC;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;' 
WHERE nome_parametro = 'TargetConnection_ConnectionString' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'AUC' 
WHERE nome_parametro = 'TargetConnection_InitialCatalog' AND id_ambiente = 1;
	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'TargetConnection' 
WHERE nome_parametro = 'TargetConnection_Name' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'sw54-1fr3' 
WHERE nome_parametro = 'TargetConnection_Password' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = '0' 
WHERE nome_parametro = 'TargetConnection_RetainSameConnection' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'SQLINPSSVIL06.SER-TEST.INPS,2059' 
WHERE nome_parametro = 'TargetConnection_ServerName' AND id_ambiente = 1;
	
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'AUC' 
WHERE nome_parametro = 'TargetConnection_UserName' AND id_ambiente = 1;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'Catalogo Target' 
WHERE nome_parametro = 'TargetConnection_Description' AND id_ambiente = 1;	

-- DB2 --
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
SET valore_da_assegnare='User ID=wbsaz123;Initial Catalog=A01DB2;Provider=DB2OLEDB;Password=Az123auc;Persist Security Info=True;Network Transport Library=TCPIP;Host CCSID=20280;Network Address=svil.host.inps;Network Port=5025;Package Collection=HIS2010S;Default Schema=BO2TS;FastLoad Optimize=False;'                     
WHERE nome_parametro='DB2DM04Connection_ConnectionString' AND id_ambiente = 1;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
SET valore_da_assegnare='A01DB2'                     
WHERE nome_parametro='DB2DM04Connection_InitialCatalog' AND id_ambiente = 1;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
SET valore_da_assegnare='DB2DM04Connection'                     
WHERE nome_parametro='DB2DM04Connection_Name' AND id_ambiente = 1;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
SET valore_da_assegnare='Az123auc'                     
WHERE nome_parametro='DB2DM04Connection_Password' AND id_ambiente = 1;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
SET valore_da_assegnare='A01DB2'                     
WHERE nome_parametro='DB2DM04Connection_ServerName' AND id_ambiente = 1;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
SET valore_da_assegnare='wbsaz123'                     
WHERE nome_parametro='DB2DM04Connection_UserName' AND id_ambiente = 1;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
SET valore_da_assegnare = '0'                     
WHERE nome_parametro='CM.DB2DM04Connection.RetainSameConnection' AND id_ambiente = 1;

 ----------------------------
 -- Ambiente di PRODUZIONE --
 ----------------------------
 
-- LogConnection --
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'Data Source=sqlinps51.servizi.inps\sqlinps51;User ID=AUC_SSIS;Password=Z8n.7k9$E@4;Initial Catalog=SSIS_LOG;Provider=SQLNCLI11;Auto Translate=False;Persist Security Info=True;' 
WHERE nome_parametro = 'LogConnection_ConnectionString' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'SSIS_LOG' 
WHERE nome_parametro = 'LogConnection_InitialCatalog' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'LogConnection' WHERE nome_parametro = 'LogConnection_Name' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'Z8n.7k9$E@4' 
WHERE nome_parametro = 'LogConnection_Password' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = '0' 
WHERE nome_parametro = 'LogConnection_RetainSameConnection' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'sqlinps51.servizi.inps\sqlinps51' 
WHERE nome_parametro = 'LogConnection_ServerName' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'AUC_SSIS' 
WHERE nome_parametro = 'LogConnection_UserName' AND id_ambiente = 3;

-- SourceConnection --
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'Data Source=SQLSERVER12,1140;User ID=ColfContribuente;Password=439tz.247;Initial Catalog=Colf;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;' 
WHERE nome_parametro = 'SourceConnection_ConnectionString' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'Colf' 
WHERE nome_parametro = 'SourceConnection_InitialCatalog' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'SourceConnection' 
WHERE nome_parametro = 'SourceConnection_Name' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = '439tz.247' 
WHERE nome_parametro = 'SourceConnection_Password' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = '0' 
WHERE nome_parametro = 'SourceConnection_RetainSameConnection' AND id_ambiente = 3;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'SQLSERVER12,1140' 
WHERE nome_parametro = 'SourceConnection_ServerName' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'ColfContribuente' 
WHERE nome_parametro = 'SourceConnection_UserName' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'Catalogo SQL Sorgente' 
WHERE nome_parametro = 'SourceConnection_Description' AND id_ambiente = 3;

-- TargetConnection --
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'Data Source=AUC.db.inps,2445;User ID=AUC_SSIS;Password=Z8n.7k9$E@4;Initial Catalog=AUC;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;' 
WHERE nome_parametro = 'TargetConnection_ConnectionString' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'AUC' 
WHERE nome_parametro = 'TargetConnection_InitialCatalog' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'TargetConnection' 
WHERE nome_parametro = 'TargetConnection_Name' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'Z8n.7k9$E@4' 
WHERE nome_parametro = 'TargetConnection_Password' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = '0' 
WHERE nome_parametro = 'TargetConnection_RetainSameConnection' AND id_ambiente = 3;	

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'AUC.db.inps,2445' 
WHERE nome_parametro = 'TargetConnection_ServerName' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'AUC_SSIS' 
WHERE nome_parametro = 'TargetConnection_UserName' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni] 
SET valore_da_assegnare = 'Catalogo Target' 
WHERE nome_parametro = 'TargetConnection_Description' AND id_ambiente = 3;

-- DB2 -- 
UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
SET valore_da_assegnare='User ID=wbpaz123;Initial Catalog=A03DB2;Provider=DB2OLEDB;Password=az123auc;Persist Security Info=True;Network Transport Library=TCPIP;Host CCSID=20280;Network Address=prod.host.inps;Network Port=446;Package Collection=COLDADM;Default Schema=DB2DA;FastLoad Optimize=False;'
WHERE nome_parametro='DB2DM04Connection_ConnectionString' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
SET valore_da_assegnare='A03DB2'                     
WHERE nome_parametro='DB2DM04Connection_InitialCatalog' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
SET valore_da_assegnare='DB2DM04Connection'                     
WHERE nome_parametro='DB2DM04Connection_Name' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
SET valore_da_assegnare='az123auc'                     
WHERE nome_parametro='DB2DM04Connection_Password' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
SET valore_da_assegnare='A03DB2'                     
WHERE nome_parametro='DB2DM04Connection_ServerName' AND id_ambiente = 3;

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
SET valore_da_assegnare='wbpaz123'                     
WHERE nome_parametro='DB2DM04Connection_UserName' AND id_ambiente = 3; 

UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
SET valore_da_assegnare = '0'                     
WHERE nome_parametro ='CM.DB2DM04Connection.RetainSameConnection' AND id_ambiente = 3;