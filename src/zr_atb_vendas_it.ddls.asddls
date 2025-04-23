@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View Entity Basic Itens'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_ATB_VENDAS_IT
  as select from ztatbvendasit
{
  key venda_id   as VendaId,
  key venda_item as VendaItem,
      product_id as ProductId,
      quantidade as Quantidade
}
