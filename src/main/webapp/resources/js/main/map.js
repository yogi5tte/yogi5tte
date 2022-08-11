var markerPosition = new kakao.maps.LatLng(35.167054, 129.132861)
var marker = new kakao.maps.Marker({
	position: markerPosition,
	clickable: true
});


var iwContent = '<div style="padding:5px;">요기 5때?</div>',
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
