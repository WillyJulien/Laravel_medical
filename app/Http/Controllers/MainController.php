<?php

namespace App\Http\Controllers;

use App\Models\cards;
use App\Models\Category;
use App\Models\Medicaments;

class MainController extends Controller
{

    // request concerning agencies and medicinal products (home page)

    public function index()
    {

        return view('pages.home', [
            'cards' => $cards = cards::all(),
            'medicaments' => Medicaments::all(),
        ]);
    }

    // request for a selected medicinal product ( medicinal page)

    public function showMedic($slug)
    {

        $medicament = Medicaments::where('slug', $slug)->firstOrfail();
        $MedicamentsCategories = Medicaments::where('category_id', $medicament->category_id)->get();
        return view('pages.medicament', [
            'medicamentCategorie' => $MedicamentsCategories,
            'medicament' => $medicament,
        ]);

    }

    // request concerning categories of medicinal products and medicinal products ( medicaments page)

    public function medicamentsList()
    {

        return view('pages.medicaments', [
            'medicaments' => Medicaments::all(),
            'categories' => Category::all(),
        ]);
    }

    // request concerning agencies and medicinal products (Les agences page)

    public function agencesList()
    {

        return view('pages.agences', [
            'cards' => $cards = cards::all(),
        ]);
    }
}
