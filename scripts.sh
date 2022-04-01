tippecanoe -zg -o sfmta.mbtiles --drop-densest-as-needed --extend-zooms-if-still-dropping live-positions.json
mb-util live-positions.mbtiles tiles --image_format=pbf
node node_modules/@mapbox/mbview/cli.js --port 9000 live-positions.mbtiles