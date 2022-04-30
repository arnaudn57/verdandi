import Swal from 'sweetalert2'

const popup = () => {
  const msg_btn = document.getElementById('msg_btn');
  msg_btn.addEventListener('click', (event) => {
    Swal.fire(
      'Félicitation',
      'Votre message a été envoyé avec succès',
      'success'
    )
  })
}
export { popup };
