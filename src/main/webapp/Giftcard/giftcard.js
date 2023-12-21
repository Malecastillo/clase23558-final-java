const giftcards = {
  giftcardI: 5000,
  giftcardII: 10000,
  giftcardIII: 15000,
};

const cantidad = document.getElementById('cantidad');
const categoria = document.getElementById('categoria');
const totalPagar = document.getElementById('totalAPagar');

function calcularPago() {
  const selectedCategory = categoria.value;
  const amount = parseFloat(cantidad.value);

  if (selectedCategory in giftcards) {
    const giftcardValue = giftcards[selectedCategory];
    const total = amount * giftcardValue;
    totalPagar.textContent = `Total a Pagar: $${total}`;
  } else {
    totalPagar.textContent = 'Categoría de giftcard no válida';
  }
}

const btnResumen = document.getElementById('resumen');
btnResumen.addEventListener('click', calcularPago);

const btnBorrar = document.getElementById('borrar');
const camposDeEntrada = document.querySelectorAll('input[type="text"]');

btnBorrar.addEventListener('click', () => {
  camposDeEntrada.forEach((campo) => {
    campo.value = '';
  });

});

btnResumen.addEventListener('click', (e) => {
  e.preventDefault();
  calcularPago();

  const nombre = document.getElementById('nombre').value;
  const apellido = document.getElementById('apellido').value;
  const correo = document.getElementById('correo').value;
  const cantidad = document.getElementById('cantidad').value;
  const totalAPagar = document.getElementById('totalAPagar').textContent;

  console.log("nombre:", nombre);
  console.log("apellido:", apellido);
  console.log("correo:", correo);
  console.log("cantidad:", cantidad);
  console.log("totalAPagar:", totalAPagar);


});




