codeunit 50200 "Sales Event Mgmts.COL.US"
{
    [EventSubscriber(ObjectType::Table, database::"Sales Header", 'OnAfterValidateEvent', 'Sell-to Customer No.', false, true)]
    local procedure T_SalesHeader_SellToCustomerNo_OnAfterValidate(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    var
        cust: Record Customer;
    begin
        if cust.get(Rec."Sell-to Customer No.") then
            rec."loyaltyStatus.COL.US" := cust."loyaltyStatus.COL.US";
    end;
}


