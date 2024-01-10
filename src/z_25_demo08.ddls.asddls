@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 08: Path Expressions'

define view entity Z_25_Demo08 as select from Z_25_Demo07
{
    key Carrid,
    key Connid,
    Cityfrom,
    Cityto,
    /* Associations */
    _Carrier.carrname as CarrierName,
    _Flight
}
