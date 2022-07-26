@extends('layouts.template')

@section('content')

<section class="container-fluid home">
    <div class="container mb-2 h-100 home_text">
        <div class="row h-100 align-items-center">
            <div class="col-md-12 text-center home_text">
                <h1 class="font-bold">Medical Laravel</h1>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing<br> 
                   at nulla minima iusto
                     molestias eius necessitatibus<br>  ab
                     laborum doloremque dolor soluta.<br>  Provident adipisci nihil dicta.</p>
            </div>
        </div>
    </div>
</section>
{{-- <section class="container my-5"> 
        <div class="row justify-content-center">
            <div class="col-md-8 home_text text-center rounded-md align-items-center search_block">
                <div class="">
                    <h2 class="text-white font-bold py-3">Tìm kiếm sản phẩm </h2>
                    <form action="">
                        @csrf
                            <input type="text" class="form-control rounded-full my-2" id="searchbar" placeholder="Last name" value="Otto" required>
                    </form>
                    <button class="btn bg-slate-100 hover:text-white hover:bg-teal-800">Get started</button>
                    <button class="btn bg-slate-100 hover:text-white hover:bg-teal-800">Get started</button>
                    <button class="btn bg-slate-100 hover:text-white hover:bg-teal-800">Get started</button>
                </div>
               
            </div>
        </div>
</section> --}}
<section class="container my-5"> 
    <div class="row">
        <div class="col-12 font-bold text-center">
            <h2>Agences</h2>
        </div>
        <div class="col-12">
            <div class="row">
                @foreach ($cards as $card)
                <div class=" col-sm-6  col-lg-4 col-xl-3 rounded-md py-4">  
                    <a href="{{route('agences')}}">
                        <div class="card grid  mx-auto justify-items-center rounded-lg drop-shadow-lg border-slate-100 hover:bg-teal-100  pt-5" style="width: 18rem;">
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
                    </a>       
                </div> 
                @endforeach
            </div>
        </div>
       
    </div>
</section>
<section class="container"> 
    <div class="row">
        <div class="col-12 font-bold text-center">
            <h2>Danh mục nổi bật</h2>
        </div>
        <div class="col-md-12 my-5 pt-5 pb-2">
            <div class="swiper mySwiper">
                <div class="swiper-wrapper  mb-5">
                    @foreach ($medicaments as $medicament)
                   
                        <div class="swiper-slide">
                            <a href="{{route('medicament', $medicament->slug)}}">
                            <div class="card grid mx-auto rounded-lg drop-shadow-lg border-slate-100 pt-3" style="width: 18rem;">
                                <img src="{{ Voyager::image( $medicament->picture ) }}" class="card-img-top h-75" style="width:286px; height: 217px!important;" alt="...">
                                <div class="card-body py-1">
                                <p class="card-text font-semibold">{{ $medicament->name }}</p>
                                <span class="badge rounded-pill bg-teal-800 pb-2 ">{{ $medicament->category->label }}</span>
                                </div>
                            </div>
                        </a>
                        </div>

                    @endforeach
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="col-12 text-center">
            <a href="{{ route('medicaments') }}">
                <button class="btn  bg-teal-800 text-teal-100 font-semibold  hover:text-teal-800  hover:bg-slate-100 px-4">More</button>
            </a>
            
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

