HTMLWidgets.widget({

  name: 'agGridRViz',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {
                var gridOptions = {
            columnDefs: [
                {headerName: 'Name', field: 'name'},
                {headerName: 'Role', field: 'role'}
            ],
            rowData: [
                {name: 'Niall', role: 'Developer'},
                {name: 'Eamon', role: 'Manager'},
                {name: 'Brian', role: 'Musician'},
                {name: 'Kevin', role: 'Manager'}
            ]
        };
        el.setAttribute("class","ag-theme-balham");
        new agGrid.Grid(el, gridOptions);
        // TODO: code to render the widget, e.g.
        //el.innerText = x.message;

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
