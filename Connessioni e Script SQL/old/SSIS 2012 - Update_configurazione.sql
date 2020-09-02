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
  AND (  
		 [nome_parametro] = 'DB2DM04Connection_ConnectionString' OR
		 [nome_parametro] = 'LogConnection_ConnectionString' 	 OR 
		 [nome_parametro] = 'TargetConnection_ConnectionString'  OR 
		 [nome_parametro] = 'SourceConnection_ConnectionString'
	   )
	

  ----------------------------
  -- Ambiente di SVILUPPO  ---
  ----------------------------
  UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
  SET valore_da_assegnare='User ID=wbsaz123;Initial Catalog=A01DB2;Provider=DB2OLEDB;Password=Az123auc;Persist Security Info=True;Network Transport Library=TCPIP;Host CCSID=20280;Network Address=svil.host.inps;Network Port=5025;Package Collection=HIS2010S;Default Schema=BO2TS;FastLoad Optimize=False;'                     
  WHERE nome_parametro='DB2DM04Connection_ConnectionString'
  AND id_ambiente = 1;
  
  -- Utilizzato per Arigiani e Commercianti
  UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
  SET valore_da_assegnare='Data Source=SQLINPSSVIL06.SER-TEST.INPS,2059;User ID=AUC;Password=sw54-1fr3;Initial Catalog=AUC;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;'
  WHERE nome_parametro='SourceConnection_ConnectionString'
  AND id_ambiente = 1;
    
  UPDATE  [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
  SET valore_da_assegnare='Data Source=SQLINPSSVIL04,1900;User ID=AUC_SSIS;Password=cneurvn;Initial Catalog=SSIS_LOG;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;'
  WHERE nome_parametro='LogConnection_ConnectionString'
  AND id_ambiente = 1;


  UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
  SET valore_da_assegnare='Data Source=SQLINPSSVIL06.SER-TEST.INPS,2059;User ID=AUC;Password=sw54-1fr3;Initial Catalog=AUC;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;'
  WHERE nome_parametro='TargetConnection_ConnectionString'
  AND id_ambiente = 1;
  
  ----------------------------
  -- Ambiente di PRODUZIONE --
  ----------------------------
  UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
  SET valore_da_assegnare='User ID=wbpaz123;Initial Catalog=A03DB2;Provider=DB2OLEDB;Password=az123auc;Persist Security Info=True;Network Transport Library=TCPIP;Host CCSID=20280;Network Address=prod.host.inps;Network Port=446;Package Collection=COLDADM;Default Schema=DB2DA;FastLoad Optimize=False;'
  WHERE nome_parametro='DB2DM04Connection_ConnectionString'
  AND id_ambiente = 3;

  -- Utilizzato per Arigiani e Commercianti
  UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
  SET valore_da_assegnare='Data Source=SQLSERVER12,1140;User ID=ColfContribuente;Password=439tz.247;Initial Catalog=Colf;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;'
  WHERE nome_parametro='SourceConnection_ConnectionString'
  AND id_ambiente = 3;
    
  UPDATE  [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
  SET valore_da_assegnare='Data Source=sqlinps51.servizi.inps\sqlinps51;User ID=AUC_SSIS;Password=Z8n.7k9$E@4;Initial Catalog=SSIS_LOG;Provider=SQLNCLI11;Auto Translate=False;Persist Security Info=True;'
  WHERE nome_parametro='LogConnection_ConnectionString'
  AND id_ambiente = 3;
  
  UPDATE [SSIS_Config].[dbo].[AZ124_AUC_Configurazioni]
  SET valore_da_assegnare='Data Source=AUC.db.inps,2445;User ID=AUC_SSIS;Password=Z8n.7k9$E@4;Initial Catalog=AUC;Provider=SQLNCLI11;Persist Security Info=True;Auto Translate=false;'
  WHERE nome_parametro='TargetConnection_ConnectionString'
  AND id_ambiente = 3;
  
  