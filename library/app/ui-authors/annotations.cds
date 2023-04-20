using CatalogService as service from '../../srv/catalog-service';

annotate service.Authors with @(
    UI. HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Author',
        TypeNamePlural : 'Authors',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
    },
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Value : name,
        },
    ]
);
annotate service.Authors with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Value : name,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type: 'UI.ReferenceFacet',
            ID: 'Books',
            Label: 'Books',
            Target: 'books/@UI.LineItem'
        }
    ]
);

annotate service.Authors {
    ID @title : 'ID';
    name @title : 'Name';
};

annotate service.Authors with @odata.draft.enabled;

annotate service.Books with @(UI: {
    HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Book',
        TypeNamePlural : 'Books',
    },
    LineItem  : [
        {
            $Type : 'UI.DataField',
            Value : title,
            Label: 'Title'
        },
        {
            $Type: 'UI.DataField',
            Value: stock,
            Label: 'Stock'
        }
    ],
}
);
