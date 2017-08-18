$.ajax({
    type: 'GET',
    url: 'http://localhost:7000/path1',
    dataType: 'json',
    success: function (data) {
        var trHTML = '';
        $.each(data, function (index, item) {
            trHTML += '<tr><td>' + item.name + '</td><td>' + item.place + '</td><td>' + item.animal + '</td><td>' + item.thing + '</td><td align="center"><a href="http://localhost:7000/delete/' + item.id + '"><input type="button" class="btn btn-danger" value="X" id="del' + item.id + '"></td></tr>';
        });
        $('#tb').append(trHTML);
    }
});

function sortTable(col) {
    var table, rows, switching, i, x, y, shouldSwitch;
    table = document.getElementById("tb");
    switching = true;

    while (switching) {

        switching = false;
        rows = table.getElementsByTagName("TR");

        for (i = 1; i < (rows.length - 1); i++) {

            shouldSwitch = false;

            x = rows[i].getElementsByTagName("TD")[col];
            y = rows[i + 1].getElementsByTagName("TD")[col];

            if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {

                shouldSwitch = true;
                break;
            }
        }
        if (shouldSwitch) {

            rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
            switching = true;
        }
    }
}
