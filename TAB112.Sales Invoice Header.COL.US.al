tableextension 50202 "Sales Invoice Header.COL.US" extends "Sales Invoice Header"
{
    fields
    {
        field(50200; "loyaltyStatus.COL.US"; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = Bronze,Silver,Gold;
            Caption = 'Loyalty Status';
            Editable = false;
        }
    }
}