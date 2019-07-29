// 
tableextension 50201 "Sales Header.COL.US" extends "Sales Header"
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