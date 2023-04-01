import { Controller } from "@hotwired/stimulus"
import StarRating from "star-rating.js"

export default class extends Controller {
  connect() {
   console.log("connected")
   const star = new StarRating(this.element)
   console.log(star)

  }
}
