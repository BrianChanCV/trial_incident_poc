@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '0431 POC Data Model'
define root view entity ZI_0431_POC
  as select from zta_incident0431
  association [0..1] to ZI_TBDLS_0431_POC as _Logsys on  $projection.Logsys = _Logsys.Logsys
                                                     and $projection.Logcli = _Logsys.Logcli
  association [1..1] to ZI_USERS_0431_POC as _Users  on  $projection.Requid = _Users.Uname
                                                     or  $projection.Appuid = _Users.Uname
// association [0..1] to ZI_USERS_0431_POC as _Users2 on  $projection.Appuid = _Users2.Uname
{
  key incuuid               as Incuuid,
      incid                 as Incid,
      requid                as Requid,
      logsys                as Logsys,
      logcli                as Logcli,
      version               as Version,
      overall_status        as IncStatus,
      appuid                as Appuid,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,

      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,

      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,

      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      _Logsys,
      _Users
//      _Users2
}
