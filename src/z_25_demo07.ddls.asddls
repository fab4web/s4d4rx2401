@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 07: Outer Joins'
define view entity Z_25_Demo07 as select from spfli as Connection
association [1..1] to scarr   as _Carrier on  _Carrier.carrid = Connection.carrid
association [0..*] to sflight as _Flight  on  _Flight.carrid  = Connection.carrid 
                                         and _Flight.connid  = Connection.connid
{
key Connection.carrid   as Carrid,
key Connection.connid   as Connid,
    Connection.cityfrom as Cityfrom,
    Connection.cityto   as Cityto,
    
    // Assoziation 
    _Carrier, 
    _Flight
   
}



