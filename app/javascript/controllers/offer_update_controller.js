import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['destination', 'start', 'weight', 'submit']
  static values = { commission: Number }

  connect() {
    this.distance = 0
  }

  computeDistance(event) {
   if (this.destinationTarget.value === "" || this.startTarget.value === "") {
     this.distance = 0
     this.computeCommission()
   } else {
     this.fetchDistance()
   }
  }

  fetchDistance() {
    fetch(`/offers/distance?starting_point=${this.startTarget.value}&destination=${this.destinationTarget.value}`)
      .then((response) => { return response.json() })
      .then((data) => {
        this.distance = data.distance || 0
        this.computeCommission()
      })
  }

  computeCommission() {
    const weight = parseInt(this.weightTarget.value, 10) || 0
    const price =  this.distance * weight * this.commissionValue
    this.submitTarget.value = `Offer ${price}€`
  }
}
