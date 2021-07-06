(async () => {
    const where = encodeURIComponent(JSON.stringify({
        "country": {
            "__type": "Pointer",
            "className": "Continentscountriescities_Country",
            "objectId": "yP5OXMfgmQ"
        }
    }));
    const response = await fetch(
        `https://parseapi.back4app.com/classes/Continentscountriescities_Subdivisions_States_Provinces?keys=Subdivision_Name&where=${where}`,
        {
            headers: {
                'X-Parse-Application-Id': 'exEID19NZ5pALhsaWP5zEIKIfcZNMEJlMZMhS59u', // This is your app's application id
                'X-Parse-REST-API-Key': 'oiz8oqOM5jT061r00uoL6YxwTCMLdE2gfM4MvBva', // This is your app's REST API key
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
