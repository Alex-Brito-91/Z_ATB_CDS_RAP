@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View Entity Basic'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_ATB_VENDAS
  as select from ztatbvendas
{
  key venda_id   as VendaId,
      data_venda as DataVenda,
      vendedor   as Vendedor
}
