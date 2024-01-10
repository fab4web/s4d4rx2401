@EndUserText.label: 'Flight'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_25_Flight as projection on ZI_25_Flight
{
    @Consumption.valueHelpDefinition: [{entity: { name: 'ZI_25_CarrierVH', element: 'Carrid'}}]
    key CarrierID,
    key ConnectionID,
    key FlightDate,
    FlightPrice,
    @Consumption.valueHelpDefinition: [{entity: { name: 'I_CurrencySTDVH', element: 'Currency'}}]
    CurrencyCode,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7
    Planetype,
    MaximumSeatsEconomyClass,
    OccupiedSeatsEconomyClass,
    Paymentsum,
    MaximumSeatsBusinessClass,
    OccupiedSeatsBusinessClass,
    MaximumSeatsFirstClass,
    OccupiedSeatsFirstClass,
    CarrierName,
    FlightDateCriticality,
    
    
    _Bookings : redirected to composition child ZC_25_Booking
}
