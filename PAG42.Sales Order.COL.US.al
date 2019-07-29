pageextension 50201 "Sales Order.COL.US" extends "Sales Order"
{
    layout
    {
        addlast(General)
        {
            field("loyaltyStatus.COL.US"; "loyaltyStatus.COL.US") { }
        }
    }
}