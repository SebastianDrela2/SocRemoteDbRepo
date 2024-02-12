SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[testProc]
    @a BIT
as
begin
    create table #verscha_BELEG_BVX (
        BVX      XML       
    );

    create table #verschaS (
        verscha_ID       INT primary key identity(1, 1),
        verscha_GUID     UNIQUEIDENTIFIER,
        verscha_XML      XML,
		verscha_XML_7556      XML,       
        index IX_#verschaS_GUID ( verscha_GUID )
    );
	
    if @a = 1
    begin;       
        with verschaDATA ( ID, PROCNAME, XML )
            as ( select
                     ID = y.value('@Id', 'int'),                   
                     PROCNAME = y.value('@ProductionProcessName', 'NVARCHAR(500)'),
                     y.query('.')
                 from #verscha_BELEG_BVX
                      cross apply #verscha_BELEG_BVX.bvx.nodes('/Job/xN1/xN2') as X(y) )
        update
            #verschaS
        set verscha_ID = PRODverschaS.verscha_ID           
        from ( select * FROM #verschaS)as PRODverschaS
        where #verschaS.verscha_ID = PRODverschaS.verscha_ID          
    end;

    select
        iif(1 = 1, 'true', 'false');
end;
GO
