table 50200 "Loyalty Ledger.COL.US"
{
    DataClassification = CustomerContent;
    Caption = 'Loyalty Ledger Entries';

    fields
    {
        field(1; "Entry No.COL.US"; BigInteger)
        {
            DataClassification = CustomerContent;
            Caption = 'Entry No.';
            AutoIncrement = true;
        }
        field(2; "Posting Date.COL.US"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Posting Date';
        }
        field(3; "Customer No.COL.US"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer No.';
            TableRelation = Customer."No.";
        }
        field(4; "Document No.COL.US"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Document No.';
            TableRelation = "Sales Invoice Header"."No.";
        }
        field(5; "Points Earned.COL.US"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Points Earned';
        }
    }

    keys
    {
        key(PK; "Entry No.COL.US")
        {
            Clustered = true;
        }
        key(custDoc; "Customer No.COL.US", "Document No.COL.US") { }
        key(custDate; "Customer No.COL.US", "Posting Date.COL.US") { }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}