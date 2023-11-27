using sap.sm.stationery as sm from '../db/schema';

annotate sm.Stationery with @(
    UI.LineItem : [
        {
        $Type : 'UI.DataField',
        Value : items,
        ![@UI.Importance] : #High
        },

        {
            $Type : 'UI.DataField',
            Value : desc,
            ![@UI.Importance] : #High
         },
         {
            $Type : 'UI.DataField',
            Value : value,
            ![@UI.Importance] : #High
         },
         {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : employee.name,
            ![@UI.Importance] : #High
            
         }

    ]
);

annotate sm.Stationery with @odata.draft.enabled;
annotate sm.Employees with @odata.draft.enabled;


annotate sm.Stationery with @(
    UI.SelectionFields : [
        items,cost,employee.name
    ]
);








