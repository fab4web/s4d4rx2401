@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for Carrier'

define view entity ZI_25_CarrierVH as select from scarr
{
    key carrid as Carrid,
    carrname as Carrname
    
}
