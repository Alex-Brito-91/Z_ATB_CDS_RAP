@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Composta de Vendas'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_ATB_VENDAS
  as select from ZR_ATB_VENDAS
  association [1..*] to ZR_ATB_VENDAS_IT as _Item on $projection.VendaId = _Item.VendaId
{
  key VendaId,
      DataVenda,
      Vendedor,
      _Item
}
