import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="submission"
export default class extends Controller {
  static targets = ["vtuber_tab", "agency_tab", "tag_tab", "vtuber_form", "agency_form", "tag_form"];
  // var current_tab = vtuber_tabTarget;

  connect() {
    // const selectedOption = this.menuTarget.options[this.menuTarget.selectedIndex];
    console.log(`${this.menuTarget}`);
  }

  open_vtuber_form(event){
    // const currentTab = document.getElementsByClassName("submission-selected");
    // console.log(`${this.vtuber_tabTarget}`);
    if(!this.vtuber_tabTarget.classList.contains("submission-selected")){
      this.vtuber_tabTarget.classList.add("submission-selected");
      this.agency_tabTarget.classList.remove("submission-selected");
      // this.tag_tabTarget.classList.remove("submission-selected");

      this.vtuber_formTarget.classList.toggle("d-none");
      this.agency_formTarget.classList.toggle("d-none");
    }
  }

  open_agency_form(event){
    if(!this.agency_tabTarget.classList.contains("submission-selected")){
      this.agency_tabTarget.classList.add("submission-selected");
      this.vtuber_tabTarget.classList.remove("submission-selected");
      // this.tag_tabTarget.classList.remove("submission-selected");

      this.vtuber_formTarget.classList.toggle("d-none");
      this.agency_formTarget.classList.toggle("d-none");
    }
  }

  open_tag_form(event){
    if(!this.tag_tabTarget.classList.contains("submission-selected")){
      this.tag_tabTarget.classList.add("submission-selected");
      this.vtuber_tabTarget.classList.remove("submission-selected");
      this.agency_tabTarget.classList.remove("submission-selected");
    }
  }
}
