@EndUserText.label: '0431 POC Incident Projection Model'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.semanticKey: ['Incid']
define root view entity ZC_0431_POC
  as projection on ZI_0431_POC
{
 key Incuuid,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.90
      @EndUserText.label: 'Incident ID'
      Incid,

      @Consumption.valueHelpDefinition: [ {
        entity: {
          name: 'ZI_USERS_0431_POC',
          element: 'Uname'
        }
      } ]
      @EndUserText.label: 'Requester ID'
      @ObjectModel.text.element: ['Reqname']
      Requid,
      _Users.Fullname as Reqname,
      
      @Consumption.valueHelpDefinition: [ {
        entity: {
          name: 'ZI_TBDLS_0431_POC',
          element: 'Logsys'
        }
      } ]
      Logsys,
      @Consumption.valueHelpDefinition: [ {
        entity: {
          name: 'ZI_TBDLS_0431_POC',
          element: 'Logcli'
        }
      } ]
      Logcli,
      @Consumption.valueHelpDefinition: [ {
        entity: {
          name: 'ZI_TBDLS_0431_POC',
          element: 'Version'
        }
      } ]
      Version,
      IncStatus,
      @Consumption.valueHelpDefinition: [ {
        entity: {
          name: 'ZI_USERS_0431_POC',
          element: 'uname'
        }
      } ]
      @EndUserText.label: 'Approver ID'
      @ObjectModel.text.element: ['Appname']
      Appuid,
      _Users.Fullname as Appname,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Logsys      
}
