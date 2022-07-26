@extends('layouts.template')

@section('content')
<section class="container"> 
    {{-- Using the LIVEWIRE filter, we pass the category table as an argument (see the LIVEWIRE IN VIEW folder and HTTP folder) --}}
    @livewire('filters', ['categories' => $categories ])
</section>
@endsection

