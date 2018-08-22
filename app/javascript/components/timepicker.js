import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

function initTimePicker() {
    flatpickr("#gig-time", {  
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
    time_24hr: true
  })
}
  
export { initTimePicker } 