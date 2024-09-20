import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button"]
  connect() {

  }
  trigger(event) {
    this.buttonTargets.forEach(button => {
      if (button.classList.contains("d-none")){
      button.classList.remove("d-none");
      } else {
        button.classList.add("d-none");
      }
    });
  }
}
