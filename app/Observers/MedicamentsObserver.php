<?php

namespace App\Observers;

use App\Models\Medicaments;
use Illuminate\Support\Str;

class MedicamentsObserver
{
    /**
     * Handle the Medicaments "created" event.
     *
     * @param  \App\Models\Medicaments  $medicaments
     * @return void
     */

    // the crud takes place on VOYAGER

    // Creation of the slug via the name of the drug and insertion in the "slug" field then save
    public function created(Medicaments $medicaments)
    {
        {
            $medicaments->slug = Str::slug($medicaments->name, '-');
            $medicaments->save();
        }

    }

    /**
     * Handle the Medicaments "updated" event.
     *
     * @param  \App\Models\Medicaments  $medicaments
     * @return void
     */
    public function updated(Medicaments $medicaments)
    {
        //
    }

    /**
     * Handle the Medicaments "deleted" event.
     *
     * @param  \App\Models\Medicaments  $medicaments
     * @return void
     */
    public function deleted(Medicaments $medicaments)
    {
        //
    }

    /**
     * Handle the Medicaments "restored" event.
     *
     * @param  \App\Models\Medicaments  $medicaments
     * @return void
     */
    public function restored(Medicaments $medicaments)
    {
        //
    }

    /**
     * Handle the Medicaments "force deleted" event.
     *
     * @param  \App\Models\Medicaments  $medicaments
     * @return void
     */
    public function forceDeleted(Medicaments $medicaments)
    {
        //
    }
}
