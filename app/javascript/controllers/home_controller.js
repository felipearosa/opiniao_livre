import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["option"]
  connect() {
//     let optionBtn = document.querySelectorAll('.option');
// optionBtn.forEach((el) => {
//   el.addEventListener('click', () => {
//     optionBtn.forEach((ell) => {
//       ell.classList.remove('active');
//     });
//     el.classList.add('active');
//    })
// })

  }

  activate(event) {
    this.optionTargets.forEach((ell) => {
      ell.classList.remove('active')
    });
    event.target.classList.add('active');
  }

}
