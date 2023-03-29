import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["boat"];

  filter() {
    const category = this.categoryTarget.value;

    this.boatTargets.forEach((boat) => {
      if (category == "All" || boat.dataset.category == category) {
        boat.classList.remove("d-none");
      } else {
        boat.classList.add("d-none");
      }
    });
  }

  get categoryTarget() {
    return this.element.querySelector("[data-target='boats.category']");
  }
}
