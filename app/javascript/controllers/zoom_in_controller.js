import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["image"]
  connect() {

  }
  zoom_in(event) {
    // this.imageTarget.classList.add("zoom-in");

    // this.linkTargets.forEach(link => {
    //   if (!link.classList.contains("d-none")) {
    //     link.classList.add("d-none");
    //   } else {
    //     link.classList.remove("d-none");
    //   }
    // });
  }
  zoom_out(event) {
    // this.imageTarget.classList.remove("zoom-in");
  }
}