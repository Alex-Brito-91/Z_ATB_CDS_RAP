@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Consumo App Vendas'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_ATB_VENDAS
  as projection on ZI_ATB_VENDAS
{
  key VendaId,
      DataVenda,
      Vendedor,
      /* Associations */
      _Item
}
