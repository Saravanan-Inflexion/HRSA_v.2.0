using hr_serviceSrv as service from '../../srv/service';
using from '../annotations';

annotate service.Ticket with {
    priority @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Priority',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : priority,
                    ValueListProperty : 'text',
                },
                {
                    $Type : 'Common.ValueListParameterIn',
                    ValueListProperty : 'priorityID',
                    LocalDataProperty : status_ID,
                },
            ],
            Label : 'Priority',
        },
        Common.ValueListWithFixedValues : true
)};

annotate service.Ticket with {
    status @(Common.ValueList : {
            CollectionPath : 'Status',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : status_ID,
                    ValueListProperty : 'statusID',
                },
                {
                    $Type : 'Common.ValueListParameterIn',
                    ValueListProperty : 'text',
                    LocalDataProperty : status.text,
                },
                {
                    $Type : 'Common.ValueListParameterIn',
                    ValueListProperty : 'ID',
                    LocalDataProperty : ID,
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
