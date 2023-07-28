// Registrations.sl
// Registrations Selections

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cRegistrationsDataDictionary.dd

CD_Popup_Object Registrations_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 423
    Set Label To "Registrations Selections"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oRegistrations_DD is a cRegistrationsDataDictionary
    End_Object 

    Set Main_DD To oRegistrations_DD
    Set Server  To oRegistrations_DD

    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 413
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Registrations_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oRegistrations_ID is a cDbCJGridColumn
            Entry_Item Registrations.ID
            Set piWidth to 80
            Set psCaption to "ID"
        End_Object 

        Object oRegistrations_SN is a cDbCJGridColumn
            Entry_Item Registrations.SN
            Set piWidth to 46
            Set psCaption to "SN"
        End_Object 

        Object oRegistrations_NAME is a cDbCJGridColumn
            Entry_Item Registrations.NAME
            Set piWidth to 250
            Set psCaption to "Name"
        End_Object 

        Object oRegistrations_CODE is a cDbCJGridColumn
            Entry_Item Registrations.Product_Class
            Set piWidth to 100
            Set psCaption to "Product Class"
        End_Object 

        Object oRegistrations_USERS is a cDbCJGridColumn
            Entry_Item Registrations.USERS
            Set piWidth to 45
            Set psCaption to "Users"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to C_$OkButtonLabel
        Set Location to 115 260
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to C_$CancelButtonLabel
        Set Location to 115 314
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to C_$SearchButtonLabel
        Set Location to 115 368
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+C_$OkAcceleratorKey Send KeyAction of oOk_bn
    On_Key Key_Alt+C_$CancelAcceleratorKey Send KeyAction of oCancel_bn
    On_Key Key_Alt+C_$SearchAcceleratorKey Send KeyAction of oSearch_bn


CD_End_Object // Registrations_sl
