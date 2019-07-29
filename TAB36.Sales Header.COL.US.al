// 
tableextension 50201 "Sales Header.COL.US" extends "Sales Header"
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