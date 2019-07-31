codeunit 50200 "Sales Event Mgmts.COL.US"
{
    [EventSubscriber(ObjectType::Table, database::"Sales Header", 'OnAfterValidateEvent', 'Sell-to Customer No.', true, false)]
    local procedure T_SalesHeader_SellToCustomerNo_OnAfterValidate(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    var
        cust: Record Customer;
    begin
        if cust.get(Rec."Sell-to Customer No.") then
            rec."loyaltyStatus.COL.US" := cust."loyaltyStatus.COL.US";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterPostSalesDoc', '', true, false)]
    local procedure MyProcedure(VAR SalesHeader: Record "Sales Header"; VAR GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line"; SalesShptHdrNo: Code[20]; RetRcpHdrNo: Code[20]; SalesInvHdrNo: Code[20]; SalesCrMemoHdrNo: Code[20]; CommitIsSuppressed: Boolean)
    var
        loyaltyMgmt: Codeunit "Loyalty Mgmt.COL.US";
        salesInvHeader: Record "Sales Invoice Header";
    begin
        if SalesInvHeader.get(SalesInvHdrNo) then begin
            SalesInvHeader.CalcFields("Amount Including VAT");
            loyaltyMgmt.AddLoyaltyPoints(SalesInvHeader."Sell-to Customer No.", SalesInvHeader."No.", SalesInvHeader."Posting Date", SalesInvHeader."Amount Including VAT");
        end;
    end;

}


