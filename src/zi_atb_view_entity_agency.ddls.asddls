@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View Entity Agency'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_ATB_VIEW_ENTITY_AGENCY
  as select from /dmo/agency
{
  key /dmo/agency.agency_id     as AgencyId,
      /dmo/agency.name          as Name,
      /dmo/agency.street        as Street,
      /dmo/agency.postal_code   as PostalCode,
      /dmo/agency.city          as City,
      /dmo/agency.country_code  as CountryCode,
      /dmo/agency.phone_number  as PhoneNumber,
      /dmo/agency.email_address as EmailAddress,
      /dmo/agency.web_address   as WebAddress,
      concat( concat( $projection.AgencyId, '-'), $projection.Name ) as Concatenado,
      @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_ATB_FUNC_ABAP'
      cast('' as abap.char(255)) as AbapName
}
