function getYourPosition() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(
            onGetPositionSuccess,
            ongetPositionError,
            {enableHighAccuracy: true, maximumAge: 30000, timeout: 10000}
        );
    } else {
        alert('No support geolocation');
    }
}

function onGetPositionSuccess(position) {
    var coords = {lat: position.coords.latitude, lng: position.coords.longitude};
    var map = new google.maps.Map(document.getElementById('map_canvas'), {
        zoom: 14,
        center: coords
    });
    var marker = new google.maps.Marker({
        position: coords,
        map: map,
        title: 'You\'re here'
    });
}

function ongetPositionError() {
    alert('Cannot locate your position!');
}

$(document).ready(function() {
    if (window.localStorage == undefined || window.localStorage == null) {
        $("#localStorageInfo").show();
    }

    function showComments() {
        var outPutHtml = "<ul>";
        for (var key in localStorage) {
            if (localStorage[key] != "") {
                var userInfo = $.parseJSON(localStorage[key]);
                var name = userInfo.name;
                var email = userInfo.email;
                var comment = userInfo.comment;

                outPutHtml += "<li>";
                outPutHtml += "<h3><span>" + name + " </span> - " + email + "</h3>";
                outPutHtml += "<span>" + comment + "</span>";
                outPutHtml += "</li>";
            }
        }
        outPutHtml += "</ul>";
        $("#all-comments-container").html(outPutHtml);
    }

    function clearComments() {
        localStorage.clear();
    }

    function setStorageValue(key, value) {
        localStorage[key] = value;
    }

    function postComment() {
        var name = $("#txtName").val();
        var email = $("#txtEmail").val();
        var comment = $("#txtComment").val();

        var valueToStore = '{"name": "' + name + '", "email": "' + email + '", "comment": "' + comment + '"}';
        setStorageValue(email, valueToStore);
        // alert('Your comment is stored successfully!');
        console.log(localStorage);
    }

    $("#submitBtn").click(function() {
        postComment();
    });

    $("#showComments").click(function() {
        showComments();
    });

    $("#clearComments").click(function() {
        clearComments();
    });
});