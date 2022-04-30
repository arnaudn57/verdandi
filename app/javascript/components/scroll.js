export { scroll };

const scroll = () => {

  // Sroll Members
  const btnMembers = document.getElementById('btnMembers');
  const members = document.getElementById('members');

  btnMembers.addEventListener('click', (event) => {
    members.scrollIntoView({
      behavior: "smooth"
    });
  })

  // Scroll Galerie
  const btnGalerie = document.getElementById('btnGalerie');
  const galerie = document.getElementById('galerie');

  btnGalerie.addEventListener('click', (event) => {
    galerie.scrollIntoView({
      behavior: "smooth"
    });
  })

  //Scroll Events
  const btnEvents = document.getElementById('btnEvents');
  const events = document.getElementById('events');

  btnEvents.addEventListener('click', (event) => {
    events.scrollIntoView({
      behavior: "smooth"
    });
  })

  //Scroll contact
  const btnContact = document.getElementById('btnContact');
  const contact = document.getElementById('contact');

  btnContact.addEventListener('click', (event) => {
    contact.scrollIntoView({
      behavior: "smooth"
    });
  })
}
