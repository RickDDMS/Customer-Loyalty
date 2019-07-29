tableextension 50200 "Customer.COL.US" extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50200; "loyaltyStatus.COL.US"; Enum "Loyalty Status.COL.US")
        {
            DataClassification = CustomerContent;
            Caption = 'Loyalty Status';
        }
    }
}