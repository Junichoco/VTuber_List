import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs";

// Connects to data-controller="list-sortable"
export default class extends Controller {
  connect() {
    // console.log("list sortable");
    this.sortable = Sortable.create(this.element, {
      animation: 150,
      ghostClass: "sortable-ghost",
      chosenClass: "sortable-chosen",
      dragClass: "sortable-drag",
      onEnd: this.onEnd.bind(this)
    })
  }
  disconnect() {
    this.sortable.destroy();
  }

  async onEnd(event){
    const { newIndex, oldIndex, item } = event;
    // const url = item.dataset["sortableUrl"]
    const userId = parseInt(document.getElementsByClassName("home-list-container")[0].id);

    const old_num = parseInt(oldIndex) + 1;
    const new_num = parseInt(newIndex) + 1;
    const mydata = {
      'id': userId,
      'old_num': JSON.stringify(old_num),
      'new_num': JSON.stringify(new_num)
    }

    // console.log(userId);
    // console.log(old_num);
    // console.log(new_num);
    // console.log(mydata);

    const csrfToken = document.head.querySelector("[name~=csrf-token][content]").content;

    fetch(`/home/reorder`, {
      headers: {
        "X-CSRF-Token": csrfToken,
        "Content-Type": "application/json"
      },
      credentials: "same-origin",
      method: "PATCH",
      body: JSON.stringify(mydata)
    })
  }
}
