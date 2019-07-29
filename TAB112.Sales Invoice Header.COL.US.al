tableextension 50202 "Sales Invoice Header.COL.US" extends "Sales Invoice Header"
{
    fields
    {
        field(50200; "loyaltyStatus.COL.US"; Enum "Loyalty Status.COL.US")
        {
            DataClassification = CustomerContent;
            Caption = 'Loyalty Status';
            Editable = false;
        }
    }
}