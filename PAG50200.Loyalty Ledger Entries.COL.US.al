page 50200 "Loyalty Ledger Entries.COL.US"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Loyalty Ledger.COL.US";
    Caption = 'Loyalty Ledger Entries';
    SourceTableView = sorting ("Customer No.COL.US", "Posting Date.COL.US");
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(ledgerEntriesRptr)
            {
                field("Entry No.COL.US"; "Entry No.COL.US")
                {
                    ApplicationArea = All;
                }
                field("Posting Date.COL.US"; "Posting Date.COL.US")
                {
                    ApplicationArea = All;
                }
                field("Customer No.COL.US"; "Customer No.COL.US")
                {
                    ApplicationArea = All;
                }
                field("Document No.COL.US"; "Document No.COL.US")
                {
                    ApplicationArea = All;
                }
                field("Points Earned.COL.US"; "Points Earned.COL.US")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }
}