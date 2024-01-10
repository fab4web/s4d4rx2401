@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 01: Projections'
define view entity Z_25_Demo01 as select from sflight
{
    key carrid as CarrierID,
    key connid as ConnectionID,
    key fldate as FlightDate,
        price as FlightPrice,
        currency as Currency,
        planetype as PlaneType
    
}

