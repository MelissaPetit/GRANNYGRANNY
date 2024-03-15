import { Controller } from "@hotwired/stimulus"
import  flatpickr from "flatpickr"
// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    //global options
     flatpickr(this.element, {
      enableTime: true,
      time_24hr: true,
      dateFormat: "d-m-Y",
      minDate : new Date()
    })
   }
}
