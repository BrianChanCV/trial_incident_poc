class ZRAP_DATA_GENERATOR_0431 definition
  public
  final
  create public .

public section.

  interfaces IF_OO_ADT_CLASSRUN .
protected section.
private section.
ENDCLASS.



CLASS ZRAP_DATA_GENERATOR_0431 IMPLEMENTATION.


METHOD IF_OO_ADT_CLASSRUN~MAIN.
    TYPES gtt_logsys TYPE TABLE OF zrap_tbdls_0431 WITH DEFAULT KEY.
    DATA gt_logsys type gtt_logsys.
    gt_logsys = VALUE #( ( logsys = 'PSD' logcli = '500' stext = 'Development 500' version = '2020 SPI' )
                         ( logsys = 'PSD' logcli = '505' stext = 'Development 505' version = '2020 SPI' )
                         ( logsys = 'PSQ' logcli = '500' stext = 'Quality 500' version = '2020 SPI' )  ).
    MODIFY ('ZRAP_TBDLS_0431') FROM TABLE @gt_logsys.
    COMMIT WORK.

    TYPES gtt_users TYPE TABLE OF zrap_users_0431.
    DATA gt_users TYPE gtt_users.

    gt_users = VALUE #( ( client = sy-mandt uname = 'V614944' fullname = 'Brian Chan' )
                        ( client = sy-mandt uname = 'K009287' fullname = 'Ng Chong Wah' )
                        ( client = sy-mandt uname = 'K578863' fullname = 'Khairul Hilmi Khalil' ) ).
    MODIFY ('ZRAP_USERS_0431') FROM TABLE @gt_users.
    COMMIT WORK.

    "Insert dummy data to incident table
    TYPES gtt_incidents TYPE TABLE OF zta_incident0431.
    DATA gt_incidents TYPE gtt_incidents.
    DATA lv_incid TYPE Z0431_INCID.
    lv_incid = '1'.

    GET TIME STAMP FIELD DATA(ltp_timestamp).
    gt_incidents = VALUE #( ( incuuid = cl_system_uuid=>create_uuid_x16_static( ) incid = lv_incid requid = 'V614944' logsys = 'PSD'
                              logcli = '505' version = '2020 SPI' appuid = 'K009287' overall_status = 'P' created_by = 'V614944'
                              created_at = ltp_timestamp last_changed_by = 'V614944' last_changed_at = ltp_timestamp local_last_changed_at = ltp_timestamp ) ).

    MODIFY ZTA_INCIDENT0431 FROM TABLE @gt_incidents.
    COMMIT WORK.

ENDMETHOD.
ENDCLASS.
