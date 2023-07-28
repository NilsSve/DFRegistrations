// C:\Projects\DF20\DFRegistrations\AppSrc\Registrations_View.vw
// Registration Codes
//

Use DFClient.pkg
Use DFEntry.pkg
Use DfCEntry.pkg

Use cRegistrationsDataDictionary.dd
Use cDbTextEdit.pkg
Use Windows.pkg

ACTIVATE_VIEW Activate_oRegistrations_View FOR oRegistrations_View
Object oRegistrations_View is a dbView
    Set Location to 5 5
    Set Size to 222 308
    Set Label To "Registration Codes"
    Set Border_Style to Border_Thick
    Set pbAutoActivate to True
    Set Verify_Save_msg to (RefFunc(No_Confirmation))
    Set Auto_Clear_DEO_State to False


    Object oRegistrations_DD is a cRegistrationsDataDictionary
    End_Object 

    Set Main_DD To oRegistrations_DD
    Set Server  To oRegistrations_DD

    Object oRegistrationsID is a dbForm
        Entry_Item Registrations.ID
        Set Size to 12 54
        Set Location to 5 53
        Set Label to "ID"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oRegistrationsSN is a dbForm
        Entry_Item Registrations.SN
        Set Size to 12 54
        Set Location to 19 53
        Set Label to "SN"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oRegistrationsNAME is a dbForm
        Entry_Item Registrations.NAME
        Set Size to 12 250
        Set Location to 33 53
        Set peAnchors to anTopLeftRight
        Set Label to "NAME"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oRegistrationsCODE is a dbForm
        Entry_Item Registrations.CODE
        Set Size to 12 250
        Set Location to 47 53
        Set peAnchors to anTopLeftRight
        Set Label to "CODE"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oRegistrationsUSERS is a dbForm
        Entry_Item Registrations.USERS
        Set Size to 12 54
        Set Location to 61 53
        Set Label to "USERS"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oRegistrationsProduct_Class is a dbComboForm
        Entry_Item Registrations.Product_Class
        Set Size to 12 199
        Set Location to 75 53
        Set peAnchors to anTopLeftRight
        Set Label to "Product Class"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
        Set Entry_State to False
    End_Object 

    Object oRegistrationsProduct_Name is a dbForm
        Entry_Item Registrations.Product_Name
        Set Size to 12 250
        Set Location to 89 53
        Set peAnchors to anTopLeftRight
        Set Label to "Product Name"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oRegistrationsPN is a dbForm
        Entry_Item Registrations.PN
        Set Size to 12 54
        Set Location to 103 53
        Set peAnchors to anTopLeftRight
        Set Label to "PN"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oDbTextEdit1 is a cDbTextEdit
        Entry_Item Registrations.Comments
        Set Size to 100 250
        Set Location to 118 52
        Set Label_Justification_Mode to JMode_Right
        Set Label_Row_Offset to 0
        Set Label to "Comments"
    End_Object

    Object oCreate_IniFile_btn is a Button
        Set Size to 14 63
        Set Location to 12 171
        Set Label to "Create INI-file"   
        Set psToolTip to "Displays a popup dialog for creating an license data ini-file that can be read by the DataFlex Registration program."
    
        Procedure OnClick                       
            Integer iID
            Get Field_Current_Value of (Main_DD(Self)) Field Registrations.ID to iID
            Send Initialize_CreateIniFileDialog iID
        End_Procedure
    
    End_Object

    On_Key Key_Ctrl+Key_S Send Request_Save
End_Object 
