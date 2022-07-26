<?php

namespace App\Providers;

use App\Models\Medicaments;
use App\Observers\MedicamentsObserver;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Medicaments::observe(MedicamentsObserver::class);
    }
}
