using { hr_serviceSrv } from '../srv/service.cds';

annotate hr_serviceSrv.Ticket with @UI.HeaderInfo: { TypeName: 'Ticket', TypeNamePlural: 'Tickets' };
annotate hr_serviceSrv.Ticket with {
  status @Common.ValueList: {
    CollectionPath: 'Status',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: status_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'statusID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'text'
      },
    ],
  }
};
annotate hr_serviceSrv.Ticket with @UI.DataPoint #ticketID: {
  Value: ticketID,
  Title: 'Ticket ID',
};
annotate hr_serviceSrv.Ticket with @UI.DataPoint #title: {
  Value: title,
  Title: 'Title',
};
annotate hr_serviceSrv.Ticket with @UI.DataPoint #createdOn: {
  Value: createdOn,
  Title: 'Created On',
};
annotate hr_serviceSrv.Ticket with {
  ticketID @title: 'Ticket ID';
  title @title: 'Title';
  description @title: 'Description';
  priority @title: 'Priority';
  reportedBy @title: 'Reported By';
  createdOn @title: 'Created On';
  closedOn @title: 'Closed On';
  responder @title: 'Responder'
};

annotate hr_serviceSrv.Ticket with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: ticketID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: priority },
    { $Type: 'UI.DataField', Value: reportedBy },
    { $Type: 'UI.DataField', Value: createdOn },
    { $Type: 'UI.DataField', Value: closedOn },
    { $Type: 'UI.DataField', Value: responder },
    { $Type: 'UI.DataField', Label: 'Status', Value: status_ID }
];

annotate hr_serviceSrv.Ticket with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: ticketID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: priority },
    { $Type: 'UI.DataField', Value: reportedBy },
    { $Type: 'UI.DataField', Value: createdOn },
    { $Type: 'UI.DataField', Value: closedOn },
    { $Type: 'UI.DataField', Value: responder },
    { $Type: 'UI.DataField', Label: 'Status', Value: status_ID }
  ]
};

annotate hr_serviceSrv.Ticket with {
  status @Common.Label: 'Status';
  solutions @Common.Label: 'Solutions'
};

annotate hr_serviceSrv.Ticket with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#ticketID' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#title' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#createdOn' }
];

annotate hr_serviceSrv.Ticket with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate hr_serviceSrv.Ticket with @UI.SelectionFields: [
  status_ID
];

annotate hr_serviceSrv.Solution with @UI.HeaderInfo: { TypeName: 'Solution', TypeNamePlural: 'Solutions' };
annotate hr_serviceSrv.Solution with {
  ticket @Common.ValueList: {
    CollectionPath: 'Ticket',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: ticket_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'ticketID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'title'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'priority'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'reportedBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'closedOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'responder'
      },
    ],
  }
};
annotate hr_serviceSrv.Solution with @UI.DataPoint #solutionID: {
  Value: solutionID,
  Title: 'Solution ID',
};
annotate hr_serviceSrv.Solution with @UI.DataPoint #requestingEmployee: {
  Value: requestingEmployee,
  Title: 'Requesting Employee',
};
annotate hr_serviceSrv.Solution with {
  solutionID @title: 'Solution ID';
  requestingEmployee @title: 'Requesting Employee';
  respondingHRPersonnel @title: 'Responding HR Personnel'
};

annotate hr_serviceSrv.Solution with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: solutionID },
    { $Type: 'UI.DataField', Value: requestingEmployee },
    { $Type: 'UI.DataField', Value: respondingHRPersonnel },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
];

annotate hr_serviceSrv.Solution with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: solutionID },
    { $Type: 'UI.DataField', Value: requestingEmployee },
    { $Type: 'UI.DataField', Value: respondingHRPersonnel },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
  ]
};

annotate hr_serviceSrv.Solution with {
  ticket @Common.Label: 'Ticket'
};

annotate hr_serviceSrv.Solution with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#solutionID' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#requestingEmployee' }
];

annotate hr_serviceSrv.Solution with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate hr_serviceSrv.Solution with @UI.SelectionFields: [
  ticket_ID
];

annotate hr_serviceSrv.Status with @UI.HeaderInfo: { TypeName: 'Status', TypeNamePlural: 'Statuses' };
annotate hr_serviceSrv.Status with @UI.DataPoint #statusID: {
  Value: statusID,
  Title: 'Status ID',
};
annotate hr_serviceSrv.Status with @UI.DataPoint #text: {
  Value: text,
  Title: 'Text',
};
annotate hr_serviceSrv.Status with {
  statusID @title: 'Status ID';
  text @title: 'Text'
};

annotate hr_serviceSrv.Status with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: statusID },
    { $Type: 'UI.DataField', Value: text }
];

annotate hr_serviceSrv.Status with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: statusID },
    { $Type: 'UI.DataField', Value: text }
  ]
};

annotate hr_serviceSrv.Status with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#statusID' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#text' }
];

annotate hr_serviceSrv.Status with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate hr_serviceSrv.Priority with @UI.HeaderInfo: { TypeName: 'Priority', TypeNamePlural: 'Priorities' };
annotate hr_serviceSrv.Priority with @UI.DataPoint #priorityID: {
  Value: priorityID,
  Title: 'Priority ID',
};
annotate hr_serviceSrv.Priority with @UI.DataPoint #text: {
  Value: text,
  Title: 'Text',
};
annotate hr_serviceSrv.Priority with {
  priorityID @title: 'Priority ID';
  text @title: 'Text'
};

annotate hr_serviceSrv.Priority with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: priorityID },
    { $Type: 'UI.DataField', Value: text }
];

annotate hr_serviceSrv.Priority with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: priorityID },
    { $Type: 'UI.DataField', Value: text }
  ]
};

annotate hr_serviceSrv.Priority with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#priorityID' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#text' }
];

annotate hr_serviceSrv.Priority with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate hr_serviceSrv.MyQueue with @UI.HeaderInfo: { TypeName: 'MyQueue', TypeNamePlural: 'MyQueues' };
annotate hr_serviceSrv.MyQueue with {
  ticket @Common.ValueList: {
    CollectionPath: 'Ticket',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: ticket_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'ticketID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'title'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'priority'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'reportedBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'closedOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'responder'
      },
    ],
  }
};
annotate hr_serviceSrv.MyQueue with @UI.DataPoint #myQueueID: {
  Value: myQueueID,
  Title: 'My Queue ID',
};
annotate hr_serviceSrv.MyQueue with @UI.DataPoint #title: {
  Value: title,
  Title: 'Title',
};
annotate hr_serviceSrv.MyQueue with @UI.DataPoint #createdOn: {
  Value: createdOn,
  Title: 'Created On',
};
annotate hr_serviceSrv.MyQueue with {
  myQueueID @title: 'My Queue ID';
  title @title: 'Title';
  createdBy @title: 'Created By';
  createdOn @title: 'Created On';
  timeTaken @title: 'Time Taken'
};

annotate hr_serviceSrv.MyQueue with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: myQueueID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: createdBy },
    { $Type: 'UI.DataField', Value: createdOn },
    { $Type: 'UI.DataField', Value: timeTaken },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
];

annotate hr_serviceSrv.MyQueue with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: myQueueID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: createdBy },
    { $Type: 'UI.DataField', Value: createdOn },
    { $Type: 'UI.DataField', Value: timeTaken },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
  ]
};

annotate hr_serviceSrv.MyQueue with {
  ticket @Common.Label: 'Ticket'
};

annotate hr_serviceSrv.MyQueue with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#myQueueID' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#title' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#createdOn' }
];

annotate hr_serviceSrv.MyQueue with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate hr_serviceSrv.MyQueue with @UI.SelectionFields: [
  ticket_ID
];

annotate hr_serviceSrv.HRReports with @UI.HeaderInfo: { TypeName: 'HRReports', TypeNamePlural: 'HRReports' };
annotate hr_serviceSrv.HRReports with {
  ticket @Common.ValueList: {
    CollectionPath: 'Ticket',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: ticket_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'ticketID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'title'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'priority'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'reportedBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'closedOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'responder'
      },
    ],
  }
};
annotate hr_serviceSrv.HRReports with @UI.DataPoint #hRReportsID: {
  Value: hRReportsID,
  Title: 'HR Reports ID',
};
annotate hr_serviceSrv.HRReports with @UI.DataPoint #title: {
  Value: title,
  Title: 'Title',
};
annotate hr_serviceSrv.HRReports with @UI.DataPoint #createdOn: {
  Value: createdOn,
  Title: 'Created On',
};
annotate hr_serviceSrv.HRReports with {
  hRReportsID @title: 'HR Reports ID';
  title @title: 'Title';
  createdBy @title: 'Created By';
  createdOn @title: 'Created On';
  highPriorityCount @title: 'High Priority Count';
  mediumPriorityCount @title: 'Medium Priority Count';
  lowPriorityCount @title: 'Low Priority Count';
  statusCount @title: 'Status Count';
  timeTaken @title: 'Time Taken'
};

annotate hr_serviceSrv.HRReports with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: hRReportsID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: createdBy },
    { $Type: 'UI.DataField', Value: createdOn },
    { $Type: 'UI.DataField', Value: highPriorityCount },
    { $Type: 'UI.DataField', Value: mediumPriorityCount },
    { $Type: 'UI.DataField', Value: lowPriorityCount },
    { $Type: 'UI.DataField', Value: statusCount },
    { $Type: 'UI.DataField', Value: timeTaken },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
];

annotate hr_serviceSrv.HRReports with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: hRReportsID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: createdBy },
    { $Type: 'UI.DataField', Value: createdOn },
    { $Type: 'UI.DataField', Value: highPriorityCount },
    { $Type: 'UI.DataField', Value: mediumPriorityCount },
    { $Type: 'UI.DataField', Value: lowPriorityCount },
    { $Type: 'UI.DataField', Value: statusCount },
    { $Type: 'UI.DataField', Value: timeTaken },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
  ]
};

annotate hr_serviceSrv.HRReports with {
  ticket @Common.Label: 'Ticket'
};

annotate hr_serviceSrv.HRReports with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#hRReportsID' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#title' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#createdOn' }
];

annotate hr_serviceSrv.HRReports with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate hr_serviceSrv.HRReports with @UI.SelectionFields: [
  ticket_ID
];

annotate hr_serviceSrv.EmployeeReports with @UI.HeaderInfo: { TypeName: 'EmployeeReports', TypeNamePlural: 'EmployeeReports' };
annotate hr_serviceSrv.EmployeeReports with {
  ticket @Common.ValueList: {
    CollectionPath: 'Ticket',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: ticket_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'ticketID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'title'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'priority'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'reportedBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'closedOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'responder'
      },
    ],
  }
};
annotate hr_serviceSrv.EmployeeReports with @UI.DataPoint #employeeReportsID: {
  Value: employeeReportsID,
  Title: 'Employee Reports ID',
};
annotate hr_serviceSrv.EmployeeReports with @UI.DataPoint #title: {
  Value: title,
  Title: 'Title',
};
annotate hr_serviceSrv.EmployeeReports with @UI.DataPoint #createdOn: {
  Value: createdOn,
  Title: 'Created On',
};
annotate hr_serviceSrv.EmployeeReports with {
  employeeReportsID @title: 'Employee Reports ID';
  title @title: 'Title';
  createdBy @title: 'Created By';
  createdOn @title: 'Created On';
  priorityCount @title: 'Priority Count';
  statusCount @title: 'Status Count';
  timeTaken @title: 'Time Taken'
};

annotate hr_serviceSrv.EmployeeReports with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: employeeReportsID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: createdBy },
    { $Type: 'UI.DataField', Value: createdOn },
    { $Type: 'UI.DataField', Value: priorityCount },
    { $Type: 'UI.DataField', Value: statusCount },
    { $Type: 'UI.DataField', Value: timeTaken },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
];

annotate hr_serviceSrv.EmployeeReports with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: employeeReportsID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: createdBy },
    { $Type: 'UI.DataField', Value: createdOn },
    { $Type: 'UI.DataField', Value: priorityCount },
    { $Type: 'UI.DataField', Value: statusCount },
    { $Type: 'UI.DataField', Value: timeTaken },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
  ]
};

annotate hr_serviceSrv.EmployeeReports with {
  ticket @Common.Label: 'Ticket'
};

annotate hr_serviceSrv.EmployeeReports with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#employeeReportsID' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#title' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#createdOn' }
];

annotate hr_serviceSrv.EmployeeReports with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate hr_serviceSrv.EmployeeReports with @UI.SelectionFields: [
  ticket_ID
];

annotate hr_serviceSrv.KnowledgeBase with @UI.HeaderInfo: { TypeName: 'KnowledgeBase', TypeNamePlural: 'KnowledgeBases' };
annotate hr_serviceSrv.KnowledgeBase with {
  ticket @Common.ValueList: {
    CollectionPath: 'Ticket',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: ticket_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'ticketID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'title'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'priority'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'reportedBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'closedOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'responder'
      },
    ],
  }
};
annotate hr_serviceSrv.KnowledgeBase with @UI.DataPoint #knowledgeBaseID: {
  Value: knowledgeBaseID,
  Title: 'Knowledge Base ID',
};
annotate hr_serviceSrv.KnowledgeBase with @UI.DataPoint #title: {
  Value: title,
  Title: 'Title',
};
annotate hr_serviceSrv.KnowledgeBase with @UI.DataPoint #createdOn: {
  Value: createdOn,
  Title: 'Created On',
};
annotate hr_serviceSrv.KnowledgeBase with {
  knowledgeBaseID @title: 'Knowledge Base ID';
  title @title: 'Title';
  createdBy @title: 'Created By';
  createdOn @title: 'Created On'
};

annotate hr_serviceSrv.KnowledgeBase with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: knowledgeBaseID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: createdBy },
    { $Type: 'UI.DataField', Value: createdOn },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
];

annotate hr_serviceSrv.KnowledgeBase with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: knowledgeBaseID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: createdBy },
    { $Type: 'UI.DataField', Value: createdOn },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
  ]
};

annotate hr_serviceSrv.KnowledgeBase with {
  ticket @Common.Label: 'Ticket'
};

annotate hr_serviceSrv.KnowledgeBase with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#knowledgeBaseID' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#title' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#createdOn' }
];

annotate hr_serviceSrv.KnowledgeBase with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate hr_serviceSrv.KnowledgeBase with @UI.SelectionFields: [
  ticket_ID
];

