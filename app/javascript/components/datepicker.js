import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

function initDatePicker() {
    flatpickr("#gig-date", {})
}
  
export { initDatePicker } 