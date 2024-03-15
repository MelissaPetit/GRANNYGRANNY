import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="validation"
export default class extends Controller {
  static targets = ["buttons"]

  response(event) {
    event.preventDefault()
    this.buttonsTarget.classList.add("d-none")
  }
}
