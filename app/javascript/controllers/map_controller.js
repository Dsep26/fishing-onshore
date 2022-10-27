import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

import * as MapboxDirections from '@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions';
export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    console.log('connected')
    let directions = new MapboxDirections({
      accessToken: mapboxgl.accessToken,
      unit: 'metric',
      profile: 'mapbox/driving',
      alternatives: false,
      geometries: 'geojson',
      controls: { instructions: false },
      flyTo: false
    });

    this.map = new mapboxgl.Map({
      container: this.element,
      style: 'mapbox://styles/mapbox/satellite-v9',

    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    // this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
    //   mapboxgl: mapboxgl }))
      const geolocate = new mapboxgl.GeolocateControl({
        positionOptions: {
          enableHighAccuracy: true
        },
            // When active the map will receive updates to the device's location as it changes.
        trackUserLocation: true,
            // Draw an arrow next to the location dot to indicate which direction the device is heading.
        showUserHeading: true,

      })
    this.map.addControl(geolocate);
    this.map.on('load', () => {
      console.log(geolocate)
      geolocate.trigger();
    })
    this.map.addControl(
      new mapboxgl.NavigationControl()
    );

    // this.map.addControl(
    //   new MapboxDirections({
    //   accessToken: mapboxgl.accessToken
    //   }),
    //   'top-left'
    //   );
      this.map.scrollZoom.enable();
      navigator.geolocation.getCurrentPosition(position => {
        const { latitude, longitude } = position.coords;
        // window.location.reload()
        console.log(directions)
        if (this.map.loaded()) {
          directions.setOrigin([longitude, latitude]);
          directions.setDestination([this.markersValue[0].lng, this.markersValue[0].lat]);
        } else {
          this.map.on("load", () => {
            directions.setOrigin([longitude, latitude]);
            directions.setDestination([this.markersValue[0].lng, this.markersValue[0].lat]);
          })
        }
       })
  }
  #addMarkersToMap() {
    this.markerValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window) // Add this
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${marker.image_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "25px"
      customMarker.style.height = "25px"

      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    });
  }
  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markerValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

}
