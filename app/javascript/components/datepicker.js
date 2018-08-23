import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

function initDatePicker() {
    flatpickr("#gig-date", {    
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
  })
}
  
export { initDatePicker } 