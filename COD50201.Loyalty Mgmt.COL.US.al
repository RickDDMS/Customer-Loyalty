codeunit 50201 "Loyalty Mgmt.COL.US"
{
    procedure AddLoyaltyPoints(custCode: Code[20]; docNo: code[20]; postDate: date; invAmt: Decimal)
    var
        ledger: Record "Loyalty Ledger.COL.US";
    begin
        ledger."Customer No.COL.US" := custCode;
        ledger."Document No.COL.US" := docNo;
        ledger."Posting Date.COL.US" := postDate;
        // 1 point for every 5 dollars spent
        ledger."Points Earned.COL.US" := invAmt DIV 5;
        ledger.Insert(true);
    end;
}