@AbapCatalog.sqlViewName: 'ZV_BRANDSL_CG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'BRANDS'
define view Z_B_BRANDS as select from zrent_brands_cg
{
    key marca as Marca,
    @UI.hidden: true 
    url as Imagen
}
