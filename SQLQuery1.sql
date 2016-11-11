select [Data]         
    ,[LiczbaMiejsc]    
    ,[IDPolaczenia]   
    ,[MiastoWylotu]   
    ,[MiastoPrzylotu] 
    ,[Odleglosc]     
    ,[Cena]            
    ,[Linia]           
    ,[GodzinaWylotu]  
    ,[GodzinaPrzylotu] from Parametry2
	
	
	select Data    
    ,mw.miasto as MiastoWylotu  
    ,mp.miasto as MiastoPrzylotu    
    ,[Cena]            
    ,[Linia]           
    ,[GodzinaWylotu]  
    ,[GodzinaPrzylotu] from Parametry2 p inner join miasta mw on p.MiastoWylotu = mw.IDmiasta 
	inner join miasta mp on p.MiastoPrzylotu = mp.IDmiasta
	where  mw.miasto = 
	and mp.miasto =
	and Data >=
	and LiczbaMiejsc >=