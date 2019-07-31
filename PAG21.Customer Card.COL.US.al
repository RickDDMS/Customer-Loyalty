pageextension 50200 "Customer Card.COL.US" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("loyaltyStatus.COL.US"; "loyaltyStatus.COL.US") { }
        }
    }
    actions
    {
        addlast(History)
        {
            action(loyalty)
            {
                Caption = 'Loyalty Points';
                Image = LedgerEntries;
                RunObject = page "Loyalty Ledger Entries.COL.US";
                RunPageLink = "Customer No.COL.US" = field ("No.");

            }
        }
    }
}