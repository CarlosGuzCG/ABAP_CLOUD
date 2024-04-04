@AbapCatalog.sqlViewName: 'ZV_CARSL_CG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CARS'

define view Z_B_CARS as select from zrent_cars_cg
{
    key matricula as Matricula,
    marca as Marca,
    modelo as Modelo,
    color as Color,
    motor as Motor,
    potencia as Potencia,
    und_potencia as UndPotencia,
    combustible as Combustible,
    consumo as Consumo,
    fecha_fabr as FechaFabricacion,
    puertas as Puertas,
    //@Semantics.amount.currencyCode: 'Moneda'
    //precio as Precio,
    //moneda as Moneda,
    alquilado as Alquilado,
    alq_desde as Desde,
    alq_hasta as Hasta
}
