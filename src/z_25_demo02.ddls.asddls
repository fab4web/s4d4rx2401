@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 02: Literals, Cases, Arithmetic Expressions'
define view entity Z_25_Demo02 as select from sbook
{
// Literale definiert
'Hello World' as Text1,               // Textliteral definiert 
42            as Integer1,            // Zahl definiert
0.1           as FloatingPointNumber,  // Kommazahl definiert

// Cases definieren 
// Switch Case
cancelled,
case cancelled 
  when ''  then 'Booked' 
  when 'X' then 'Cancelled'
  else cancelled
end as CancelledText, 

class,
luggweight,
wunit,

// if 
case when class = 'F' then ''
     when luggweight > 25 and wunit = 'KG' then 'X'
     else ''
end as ExessLuggage,

// Aritmethic Expressions and Type Casts
loccuram,
loccurkey,
forcuram,
forcurkey,
cast(loccuram as abap.dec(16, 2)) + cast(forcuram as abap.dec(16, 2)) as Add1,
cast(loccuram as abap.dec(16, 2)) - cast(forcuram as abap.dec(16, 2)) as Subtract1,
cast(loccuram as abap.dec(16, 2)) * cast(forcuram as abap.dec(16, 2)) as Multiply1,
cast(loccuram as abap.fltp) / cast(forcuram as abap.fltp) as Div1 


}
