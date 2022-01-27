using RiskService as service from '../../srv/risk-service';
//Risk List Report Page
annotate service.Risks with @(
    UI.HeaderInfo : {
        TypeName : 'Risk',
        TypeNamePlural : 'Risks',
        Title : {
            $Type : 'UI.DataField',
            Value : title
        },
        Description : {
            $Type : 'UI.DataField',
            Value : descr
        }
    },
    UI.SelectionFields : [prio],
    UI.Identification : [{Value : title}],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            Value : miti_ID
        },
        {
            $Type : 'UI.DataField',
            Value : owner,
        },
        {
            $Type : 'UI.DataField',
            Value : bp_BusinessPartner
        },
        {
            $Type : 'UI.DataField',
            Value : prio,
            Criticality : criticality
        },
        {
            $Type : 'UI.DataField',
            Value : impact,
            Criticality : criticality
        },
    ]
);
//Risk Object Page
annotate service.Risks with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'owner',
                Value : owner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'prio',
                Value : prio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impact',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'criticality',
                Value : criticality,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Main',
            Label : 'General Information',
            Target : '@UI.FieldGroup#Main',
        },
    ],
    UI.FieldGroup #Main : {
        Data : [
            { Value: miti_ID },
            { Value: bp_BusinessPartner },
            { Value: owner },
            {
                Value: prio,
                Criticality : criticality
            },
            {  
                Value: impact,
                Criticality : criticality
            }
        ]
    }
);
