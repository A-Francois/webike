import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) { // only build a map if there's a div#map to inject into
    const startElement = document.querySelector("#start")
    const startLg = startElement.dataset.startlg
    const startLt = startElement.dataset.startlt

    const endElement = document.querySelector("#end")
    const endLg = endElement.dataset.endlg
    const endLt = endElement.dataset.endlt
    console.log('map')
    mapboxgl.accessToken = 'pk.eyJ1Ijoibmljb2xhc2R1Y2hhbXAiLCJhIjoiY2ttNjlrbnlhMG00MzJwanhiNjY3cHlnNiJ9.tVdym874AWgMxZ57S3EiAg';
    var map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10',
        center: [startLg, startLt], // starting position
        //longitude, lat
        zoom: 6
      });
      // set the bounds of the map
      //var bounds = [[endLg, endLt], [startLg, startLt]];
      //map.setMaxBounds(bounds);
      // initialize the map canvas to interact with later
      var canvas = map.getCanvasContainer();
      // an arbitrary start will always be the same
      // only the end or destination will change
      var start = [startLg, startLt];
      // this is where the code for the next step will go
      // create a function to make a directions request
    function getRoute(end) {
    // make a directions request using cycling profile
    // an arbitrary start will always be the same
    // only the end or destination will change
    var start = [startLg, startLt];
    var url = 'https://api.mapbox.com/directions/v5/mapbox/cycling/' + start[0] + ',' + start[1] + ';' + end[0] + ',' + end[1] + '?steps=true&geometries=geojson&access_token=' + mapboxgl.accessToken;
    // make an XHR request https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
    var req = new XMLHttpRequest();
    req.open('GET', url, true);
    req.onload = function() {
      var json = JSON.parse(req.response);
      var data = json.routes[0];
      console.log(data.legs[0].steps)
      // get the sidebar and add the instructions
        var instructions = document.getElementById('instructions');
        var steps = data.legs[0].steps;
        var tripInstructions = [];
        for (var i = 0; i < steps.length; i++) {
        tripInstructions.push('<br><li>' + steps[i].maneuver.instruction) + '</li>';
        instructions.innerHTML = '<br><span class="duration">Trip duration: ' + Math.floor(data.duration / 60) + ' min :bicyclist: </span>' + tripInstructions;
        }
      var route = data.geometry.coordinates;
      var geojson = {
        type: 'Feature',
        properties: {},
        geometry: {
          type: 'LineString',
          coordinates: route
        }
      };
      // if the route already exists on the map, reset it using setData
      if (map.getSource('route')) {
        map.getSource('route').setData(geojson);
      } else { // otherwise, make a new request
        map.addLayer({
          id: 'route',
          type: 'line',
          source: {
            type: 'geojson',
            data: {
              type: 'Feature',
              properties: {},
              geometry: {
                type: 'LineString',
                coordinates: geojson
              }
            }
          },
          layout: {
            'line-join': 'round',
            'line-cap': 'round'
          },
          paint: {
            'line-color': '#3887be',
            'line-width': 5,
            'line-opacity': 0.75
          }
        });
      }
      // add turn instructions here at the end
    };
    req.send();
  }
    map.on('load', function() {
        // make an initial directions request that
        // starts and ends at the same location
        getRoute(start);
        // Add starting point to the map
        map.addLayer({
        id: 'point',
        type: 'circle',
        source: {
            type: 'geojson',
            data: {
            type: 'FeatureCollection',
            features: [{
                type: 'Feature',
                properties: {},
                geometry: {
                type: 'Point',
                coordinates: start
                }
            }
            ]
            }
        },
        paint: {
            'circle-radius': 10,
            'circle-color': '#3887be'
        }
        });
        // this is where the code from the next step will go
        // ADD ORIGIN AND DESTINATION

            var coords = [endLg, endLt]
            var end = {
              type: 'FeatureCollection',
              features: [{
                type: 'Feature',
                properties: {},
                geometry: {
                  type: 'Point',
                  coordinates: coords
                }
              }
              ]
            };
            if (map.getLayer('end')) {
              map.getSource('end').setData(end);
            } else {
              map.addLayer({
                id: 'end',
                type: 'circle',
                source: {
                  type: 'geojson',
                  data: {
                    type: 'FeatureCollection',
                    features: [{
                      type: 'Feature',
                      properties: {},
                      geometry: {
                        type: 'Point',
                        coordinates: coords
                      }
                    }]
                  }
                },
                paint: {
                  'circle-radius': 10,
                  'circle-color': '#f30'
                }
              });
            }
            getRoute(coords);

    });
  }
};
export { initMapbox };
