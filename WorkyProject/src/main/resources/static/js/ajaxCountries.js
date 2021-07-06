(async () => {
    const where = encodeURIComponent(JSON.stringify({
        "country": {
            "__type": "Pointer",
            "className": "Country",
            "objectId": "yP5OXMfgmQ"
        }
    }));
    const response = await fetch(
        `https://parseapi.back4app.com/classes/Subdivisions_States_Provinces?count=1&where=${where}`,
        {
            headers: {
                'X-Parse-Application-Id': 'mxsebv4KoWIGkRntXwyzg6c6DhKWQuit8Ry9sHja', // This is the fake app's application id
                'X-Parse-Master-Key': 'TpO0j3lG2PmEVMXlKYQACoOXKQrL3lwM0HwR9dbH', // This is the fake app's readonly master key
            }
        }
    );
    const data = await response.json(); // Here you have the data that you need

    let listsize = data.results.length
    let cities = [];
    for (let i = 0; i < listsize; i++) {
        cities.push(data.results[i].Subdivision_Name.trim())
    }
    console.log(cities)

    // $(function () {
    //     var availableTags = cities;
    //     $("#tags").autocomplete({
    //         source: availableTags
    //     });
    // });

    $(document).ready(function () {
        var dropdown2 = $('#citydropdown');
        cities.forEach(((value, index) => dropdown2.append($('<option/>').val(value).text(value))));
    });

})();
