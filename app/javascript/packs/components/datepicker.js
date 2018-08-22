import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

function initDatePicker() {
    flatpickr("#gig-date", {
        altInput: true,
        plugins: [new rangePlugin({ input: "#end_date"})]
    })
}
  
export { initDatePicker } 