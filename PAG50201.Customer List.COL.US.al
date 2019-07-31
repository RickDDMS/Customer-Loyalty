pageextension 50203 "Customer List.COL.US" extends "Customer List"
{
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