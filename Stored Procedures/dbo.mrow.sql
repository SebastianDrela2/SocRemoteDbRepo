SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[mrow]
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
                      cross apply bvx.nodes('/Job/xN1/xN2') as X(y) )
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
EXEC sp_addextendedproperty N'MS_Description', N'
Specialists:
Handler:


...


ERP competence center


Goal
To provide the DSCP-tooling the unit of meassures (UOM) per resource allowing
them to show the capacity in other units then the default.


Business rules
The script is only applicable for production resources at the moment. The capacity
per resource is stated in a surface unit (M2, Ha). The UOM factor is based on an
average of the tsw and baseyield.', 'SCHEMA', N'dbo', 'PROCEDURE', N'mrow', NULL, NULL
GO
