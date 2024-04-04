@AbapCatalog.sqlViewName: 'ZV_DET_CUSTL_CG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'DETAILS CUSTOMERS'
@Metadata.allowExtensions: true
define view Z_B_CUSTOMER
  as select from zrent_cust_cg
{
  key doc_id    as ID,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellido,
      email     as Correo,
      cntr_type as TipoContrato
}
