document.addEventListener('DOMContentLoaded', iniciar);

function iniciar() {
    cargaDatos();

    const entradaElemnt = document.getElementById('entrada');
    if (entradaElemnt) {
        entradaElemnt.addEventListener('input', cargaDatos);
    }
}

function cargaDatos() {
    fetch("mates.json", { method: 'GET' })
        .then(response => response.json())
        .then(datos => {
            cargar(datos);
        })
        .catch(error => console.error(error));
}

function cargar(datos) {
    const entradaElemnt = document.getElementById('entrada');
    let entrada = entradaElemnt ? entradaElemnt.value.toUpperCase() : '';

    const matematicosFiltrados = datos.filter(matematico => {
        const pais = matematico.pais.toUpperCase();
        const nombreCompleto = (matematico.nombre + ' ' + matematico.apellido).toUpperCase();
        return pais.includes(entrada) || nombreCompleto.includes(entrada);
    });

    const cartasContainer = document.getElementById('cartas');
    if (cartasContainer) {
        cartasContainer.innerHTML = '';

        matematicosFiltrados.forEach(matematico => {
            cartasContainer.innerHTML += `
            <div class="carta">
                <div class="cara1">
                    <img src="img/${matematico.imagen}">
                </div>
                <div class="cara2">
                    <h1>${matematico.nombre} ${matematico.apellido}</h1>
                    <h2>(${matematico.nacimiento} - ${matematico.fallecimiento})</h2>
                    <h2>${matematico.pais}</h2>
                    <p>${matematico.biografia}</p>
                </div>
            </div>`;
        });
    }
}