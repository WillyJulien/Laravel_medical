<div>
    <div class="row">
        <div class="col-12 font-bold text-center">
            <h2>Danh mục nổi bật</h2>
        </div>
        <div class="col-md-2 pt-5 sm:block md:hidden">
            @foreach ($categories as $category)
                <div class="form-group">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="{{ $category->id }}" wire:model="activeFilters.{{ $category->id }}"/>
                        <label class="custom-control-label" for="{{ $category->id }}">
                            {{ $category->label }}
                        </label>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="col-md-10">
            <div class="row">
                @foreach ($medicaments as $medicament)
                    <div class="card grid rounded-lg drop-shadow-lg border-slate-100 pt-3 mx-2 my-5 mx-auto" style="width: 18rem;">
                        <a href="{{route('medicament', $medicament->slug)}}">
                        <img src="{{ Voyager::image( $medicament->picture ) }}" class="card-img-top h-75" alt="...">
                        <div class="card-body py-1">
                            <p class="card-text font-semibold">{{ $medicament->name }}</p>
                            <span class="badge rounded-pill bg-teal-800 pb-2 ">{{ $medicament->category->label }}</span>

                        </div>
                        </a>   
                    </div>
                @endforeach
            </div>
            
        </div>
        <div class="col-md-2 pt-5 sm:hidden md:block">
            @foreach ($categories as $category)
                <div class="form-group">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="{{ $category->id }}" wire:model="activeFilters.{{ $category->id }}"/>
                        <label class="custom-control-label" for="{{ $category->id }}">
                            {{ $category->label }}
                        </label>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>
