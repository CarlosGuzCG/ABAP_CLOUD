CLASS zcl_delete_table_cg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_delete_table_cg IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DELETE FROM zrent_brands_cg.

    if sy-subrc eq 0.
       out->write( 'All data deleted' ).
    endif.

  ENDMETHOD.

ENDCLASS.
