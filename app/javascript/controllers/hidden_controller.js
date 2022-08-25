import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hidden"
export default class extends Controller {
  static targets = [ 'category' ]

  hide(e) {
    if (e.currentTarget.checked) {
      this.categoryTarget.classList.add('d-none')
    } else {
      this.categoryTarget.classList.remove('d-none')
    }
  }
}
