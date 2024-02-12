SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[TESTCRI]
    @a BIT
as
begin
    create table #verscha_BELEG_BVX (
        ID        INT primary key identity(1, 1),
        BR_ID     INT,
        BVX       XML,
        _FILENAME VARCHAR(256)
    );

    create table #verschaS (
        verscha_ID       INT primary key identity(1, 1),
        verscha_GUID     UNIQUEIDENTIFIER,
        verscha_XML      XML,
        verscha_PROD_XML XML,
        verscha_ART_NR   NVARCHAR(200),
        verscha_FILENAME VARCHAR(256),
        index IX_#verschaS_GUID ( verscha_GUID )
    );

    select
        iiF(1 = 1, 'true', 'false');

    if @a = 1
    begin;

        /*** This variant uses a combination of CTE and cross apply on a XML-Column and 
             then generates wrong formatted SQL since line 62 ***/
        with verschaDATA ( ID, PROCNAME, XML )
            as ( select
                     ID = y.value('@Id', 'int'),
                     PROCNAME = y.value('@ProductionProcessName', 'NVARCHAR(500)'),
                     y.query('.')
                 from #verscha_BELEG_BVX
                      cross apply #verscha_BELEG_BVX.bvx.nodes('/Job/xN1/xN2') as X(y) )
        update
            #verschaS
        set
            verscha_PROD_XML = verschaS
        from ( select
                   verschaURSPRUNGID = ORIGIN.ID,
                   verschaS = CONVERT(XML, STRING_AGG(CONVERT(NVARCHAR(max), PRODUCTION.XML), ''))
               from verschaDATA ORIGIN ) as owo;
    end;

    select
        iif(1 = 1, 'true', 'false');
end;
GO
EXEC sp_addextendedproperty N'MS_Description', N'This

is

one

of

description', 'SCHEMA', N'dbo', 'PROCEDURE', N'TESTCRI', NULL, NULL
GO
