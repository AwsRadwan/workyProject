function readURL(input) {
    var url = input.value;
    var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
    if (input.files && input.files[0] && (ext == "gif" || ext == "png" || ext == "jpeg" || ext == "jpg")) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#image1').css('background-image', 'url(' + e.target.result + ')');
        }
        reader.readAsDataURL(input.files[0]);
    } else {
        console("noimage")
    }
}