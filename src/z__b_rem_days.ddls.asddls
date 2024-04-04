@AbapCatalog.sqlViewName: 'ZV_REM_DAYS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Ramaining days'
define view Z__B_REM_DAYS
  as select from zrent_cars_cg
{

  key matricula as Matricula,
      marca     as Marca,
      case 
      when alq_hasta <> ''
      then dats_days_between( cast( $session.system_date as abap.dats ), alq_hasta )
      end       as Dias

}
