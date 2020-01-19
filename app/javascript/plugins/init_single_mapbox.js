import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, marker) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ marker.lng, marker.lat ]);
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initSingleMapbox = () => {
  const mapElement = document.getElementById('map');
  console.log(mapElement)

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
    });
    const marker = JSON.parse(mapElement.dataset.marker);
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'cover';
    element.style.width = '75px';
    element.style.height = '75px';
      new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    fitMapToMarkers(map, marker);
  }
  console.log(map)
};

export { initSingleMapbox };
