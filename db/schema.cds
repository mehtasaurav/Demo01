namespace sap.sm.stationery;

using {Currency} from '@sap/cds/common';

@assert.unique.name:[email, phone]
entity Employees {
    key Emp_ID : UUID @(Core.Computed : true);
    name : String(100);
    email: String(100);
    phone : String(10);
    manager : String(100);
    stationery : Association to many Stationery on stationery.employee = $self;
}

entity Stationery{
    key ID : UUID @(Core.Computed : true);
    items : String(100);
    desc : String;
    value : Integer;
    cost : Decimal(9,2);
    currency : Currency;
    employee : Association to  Employees;
}

