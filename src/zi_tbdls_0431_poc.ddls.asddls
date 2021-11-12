@AbapCatalog.sqlViewName: 'ZITBDLS0431POC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'POC Logical System Data Model'
@ObjectModel.resultSet.sizeCategory: #XS
define view  ZI_TBDLS_0431_POC as select from zrap_tbdls_0431 {
    key logsys as Logsys,
    key logcli as Logcli,
    stext as Stext,
    version as Version
}
