


var markerPosition = new kakao.maps.LatLng(longtitude, latitude)
var marker = new kakao.maps.Marker({
	position: markerPosition,
	clickable: true
});



var iwContent = document.createElement('div')
	iwContent.innerText += name,
iwRemoveable = true
var infowindow = new kakao.maps.InfoWindow({
	content : iwContent,
	removable: iwRemoveable
});


//var clusterer = new kakao.maps.MarkerClusterer({
//	map: map,
//	markers: markers,
//	gridSize: 35,
//	averageCenter: true,
//	minLevel: 6,
//	disableClickZoom: true,
//	styles: [{
//		width: '53px', height: '52px',
//		background: 'url(cluster.png) no-repeat',
//		color: '#fff',
//		textAlign: 'center',
//		lineHeight: '54px'
//	}]
//});
