import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Import the rangePlugin from the flatpickr library
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  // Inform the controller that it has two targets in the form, which are our inputs
  static targets = [ "startTime", "endTime" ]

  connect() {
    flatpickr(this.startTimeTarget, {
      altInput: true,
      altFormat: "F j, Y",
      dateFormat: "Y-m-d",
      minDate: "today",
      plugins: [new rangePlugin({ input: "#end_time"})]})

    flatpickr(this.endTimeTarget, {
      altInput: true,
      altFormat: "F j, Y",
      dateFormat: "Y-m-d",
      minDate: "today",
    })
  }
}
