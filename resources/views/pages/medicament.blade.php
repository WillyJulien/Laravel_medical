@extends('layouts.template')

@section('content')



<section class="container my-4"> 
    <div class="row">
        <div class="col-12 font-bold text-center py-5">
            <h1>Danh mục nổi bật</h1>
        </div>
      <div class="col-12 col-xl-8 mx-auto mh-50 py-2"> 
            <div class="row">
                <div class="col-md-6 col-12 border border-solid rounded border-gray-300 pb-3 sm:mx-2 max-w-sm mx-auto">
                    <img src="{{ Voyager::image( $medicament->picture ) }}" class="card-img-top  w-100" alt="...">
                </div>
                <div class="col-md-6 col-12 py-2 ">
                    <h2 class="card-text font-semibold">{{ $medicament->name }}</h2>
                    <span class="badge rounded-pill bg-teal-800 pb-2 ">{{ $medicament->category->label }}</span>
                    <hr class="my-2">
                
                <p class="card-text py-2 ">{{ Illuminate\Mail\Markdown::parse($medicament->Description)}}</p>
                <hr class="my-2">
                <p class="card-text">{{ $medicament->price }}€</p>
                
                </div>
            </div>
                
                
            
                </div>
        </div>
    </div>
</section>
<section class="container"> 
    <div class="row">
        <div class="col-12 font-bold text-center">
            <h2>{{ $medicament->category->label }}</h2>
        </div>
        <div class="col-md-12 my-5 py-5">
            <div class="swiper mySwiper">
                <div class="swiper-wrapper  mb-5">
                    @foreach ($medicamentCategorie as $medicamentCate)
                   
                        <div class="swiper-slide mx-auto">
                            <a href="{{route('medicament', $medicamentCate->slug)}}">
                            <div class="card grid rounded-lg drop-shadow-lg border-slate-100 pt-3 mx-auto" style="width: 18rem;">
                                <img src="{{ Voyager::image( $medicamentCate->picture ) }}" class="card-img-top h-75" style="width:286px; height: 217px!important;" alt="...">
                                <div class="card-body py-1">
                                <p class="card-text font-semibold">{{ $medicamentCate->name }}</p>
                                <span class="badge rounded-pill bg-teal-800 pb-2 ">{{ $medicamentCate->category->label }}</span>
                                </div>
                            </div>
                        </a>
                        </div>
                    
                    @endforeach
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
</section>
<script>

  // Using SwiperJS
  
    var swiper = new Swiper(".mySwiper", {

      centeredSlides: true,  
      loop: true,
      grabCursor: true,
      breakpoints: {
          500 : {
            slidesPerView: 1,
            spaceBetween: 5,
          },
          640 : {
            slidesPerView: 2,
            spaceBetween: 20,
          },
          1200 : {
            slidesPerView: 3,
            spaceBetween: 40,
          },
          1536 : {
            slidesPerView: 4,
            spaceBetween: 10,
          },
        },
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
    });
  </script>
@endsection

