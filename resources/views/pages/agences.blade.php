@extends('layouts.template')

@section('content')
<div id="form">
    <input type="text">
    </div> 
<div id="map"></div>

<section class="container my-5"> 
    <div class="row">
        <div class="col-12 font-bold text-center">
            <h2>Danh mục nổi bật</h2>
        </div>
        <div class="col-12">
            <div class="row">
                @foreach ($cards as $card)
                <div class=" col-sm-6  col-lg-4 col-xl-3 rounded-md py-4">  
                   
                        <div class="card grid  mx-auto justify-items-center rounded-lg drop-shadow-lg border-slate-100  pt-5" style="width: 18rem;">
                            <img src="{{ Voyager::image( $card->picture ) }}" class="card-img-top w-25 " alt="...">
                            <div class="card-body text-center px-0">
                              <p class="card-text">{{ $card->Adresse }}</p>
                              <p class="card-text">{{ $card->code_postal }} {{ $card->ville }}</p>
                              <p class="card-text font-semibold">{{ $card->pays }}</p>
                            </div>
                            <div class="bg-slate-200 translate-y-6 w-10 h-10 rounded-full drop-shadow-lg text-center pt-2 hover:bg-teal-800">
                                <i class="fa-solid fa-map-pin"></i>
                            </div>
                        </div>
     
                </div> 
                @endforeach
            </div>
        </div>
       
    </div>
</section>



 <script>

// Using LEAFLETJS

// Initializing reference point of map

    var map = L.map('map').setView([46.8534100, 2.3488000], 5);
    map.scrollWheelZoom.disable()

// Initializing the map (tilelayer)

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
    }).addTo(map);


    // ICON
    var cleaIcon = L.Icon.extend({
        iconUrl: 'my-icon.png',
        iconSize: [1, 1],
        iconAnchor: [0, 5],
        popupAnchor: [0, 70],
        shadowUrl: 'my-icon-shadow.png',
        shadowSize: [68, 95],
        shadowAnchor: [22, 94],
    });


    var agenciesIcon = new cleaIcon({
        iconUrl: '{{ asset('/storage/cards.png') }}',
        shadowUrl: '{{ asset('/storage/cards.png') }}',
        iconAnchor: [12, 0],
        popupAnchor: [0, 0],
        maxWidth: [5]
    })

// retrieving the agencies table and looping in order to create several markers on the map + use of the icon

@foreach ($cards as $card)
            L.marker([{{ $card->latitude }}, {{ $card->longitude }}], { icon: agenciesIcon }).addTo(map)
                .bindPopup('<span class="text-center">{{ $card->Adresse }}<br> {{ $card->code_postal }} <br><span class="uppercase"> {{ $card->ville }}<br> {{ $card->pays }}<br><a href="tel:{{ $card->Adresse }}"</span>')
        @endforeach


// Using leaflet.locatecontrol

var lc = L.control.locate({
   position: 'topleft',
   showCompass: true,
   strings: {title: "Location"},
   initialZoomLevel: 11,
 }).addTo(map);

// Using leaflet-geosearch 

    const provider = new GeoSearch.OpenStreetMapProvider();
 const search = new GeoSearch.GeoSearchControl({
    provider: provider,
  showMarker: false, // optional: true|false  - default true
  //showPopup: false, // optional: true|false  - default false
  marker: {
    // optional: L.Marker    - default L.Icon.Default
    icon: new L.Icon.Default(),
    draggable: false,
  },
  style:'bar',
  autoComplete: true, // optional: true|false  - default true
  autoCompleteDelay: 250, // optional: number      - default 250
 
  //maxMarkers: 1, // optional: number      - default 1
  retainZoomLevel: false, // optional: true|false  - default false
  animateZoom: true, // optional: true|false  - default true
  autoClose: false, // optional: true|false  - default false
  searchLabel: 'Enter address', // optional: string      - default 'Enter address'
  keepResult: false, // optional: true|false  - default false
  updateMap: false, // optional: true|false  - default true
});
map.addControl(search);

</script>

@endsection
