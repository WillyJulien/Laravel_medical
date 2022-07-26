<nav class="navbar navbar-expand-lg bg-white">
    <div class="container">
        <a class="navbar-brand" href="/"><img src="{{ asset('storage/logo.png') }}"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
            <ul class="navbar-nav ">
                <li class="nav-item">
                    <a class="nav-link text-teal-800" aria-current="page" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-teal-800" aria-current="page" href="{{ route('medicaments') }}">Medicaments</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-teal-800" aria-current="page" href="{{ route('agences') }}">Nos agences</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
