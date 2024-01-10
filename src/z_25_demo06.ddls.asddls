@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 06: Nested Views'

define view entity Z_25_Demo06 as select from Z_25_Demo05
{
    count(*) as NumberOfCarriersWithMoreThan4MRevenue
}
