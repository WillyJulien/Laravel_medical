<?php

namespace App\Http\Livewire;

use App\Models\Medicaments;
use Livewire\Component;

class Filters extends Component
{
    public $categories;
    public $activeFilters = [];
    public function render()
    {

        $this->activeFilters = array_filter($this->activeFilters, function ($val) {
            return $val;
        });

        return view('livewire.filters', [
            'medicaments' => (empty($this->activeFilters))
            ? Medicaments::All()
            : Medicaments::whereIn('category_id', array_keys($this->activeFilters))->get(),

        ]);
    }
}
