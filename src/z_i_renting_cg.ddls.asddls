@AbapCatalog.sqlViewName: 'ZV_RENTL_CG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Renting'
@Metadata.allowExtensions: true
define view z_i_renting_cg 
    as select from Z_B_CARS as Cars
        association [1] to Z__B_REM_DAYS as _RemDays on Cars.Matricula = _RemDays.Matricula
        association [0..*] to Z_B_BRANDS as _Brands on Cars.Marca = _Brands.Marca
        association [0..*] to Z_B_CUSTOMER as _DetCustomer on Cars.Matricula = _DetCustomer.Matricula
{
    
    key Cars.Matricula,
    Cars.Marca,
    Cars.Modelo,
    Cars.Color,
    Cars.Motor,
    Cars.Potencia,
    Cars.UndPotencia,
    Cars.Combustible,
    Cars.Consumo,
    Cars.FechaFabricacion,
    Cars.Puertas,
    //@Semantics.amount.currencyCode: 'Moneda'
    //Cars.Precio,
    //Cars.Moneda as Moneda,
    Cars.Alquilado,
    Cars.Desde,
    Cars.Hasta,
    case
        when _RemDays.Dias <= 0 then 0
        when _RemDays.Dias between 1 and 30 then 1
        when _RemDays.Dias between 31 and 100 then 2
        when _RemDays.Dias > 100 then 3
      else 0 
    end as TiempoRenta,
    '' as Estado,
    _Brands.Imagen as Imagen,
    _DetCustomer as ClienteAlias
    
}
