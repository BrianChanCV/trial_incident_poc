@AbapCatalog.sqlViewName: 'ZIUSERS0431POC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.resultSet.sizeCategory: #XS
@EndUserText.label: 'POC Users Data Model'
define view ZI_USERS_0431_POC as select from zrap_users_0431 {
    key uname as Uname,
    fullname as Fullname
}
