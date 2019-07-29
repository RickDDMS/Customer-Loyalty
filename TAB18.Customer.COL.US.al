tableextension 50200 "Customer.COL.US" extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50200; "loyaltyStatus.COL.US"; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = Bronze,Silver,Gold;
            Caption = 'Loyalty Status';
        }
    }
}