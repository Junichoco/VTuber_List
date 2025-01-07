import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs";
import { put } from "@rails/request.js";
import { FetchRequest } from '@rails/request.js'
import Rails from "@rails/ujs";

// Connects to data-controller="sortable"
export default class extends Controller {
  static values = { url: String, listId: String };

  connect() {
    console.log("sortable");
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

  async onEnd(event) {
    const { newIndex, oldIndex, item } = event;
    // const url = item.dataset["sortableUrl"]
    const listId = parseInt(document.getElementsByClassName("list-cards")[0].id);
    const markerId = parseInt(document.getElementsByClassName("vtuber-card")[newIndex].id);

    const old_num = parseInt(oldIndex) + 1;
    const new_num = parseInt(newIndex) + 1;
    const mydata = {
      'id': listId,
      'old_num': JSON.stringify(old_num),
      'new_num': JSON.stringify(new_num)
    }

    console.log(listId);
    console.log(mydata);

    const csrfToken = document.head.querySelector("[name~=csrf-token][content]").content;

    fetch(`/lists/${listId}/sort`, {
      headers: {
        "X-CSRF-Token": csrfToken,
        "Content-Type": "application/json"
      },
      credentials: "same-origin",
      method: "PATCH",
      body: JSON.stringify(mydata)
    })


    //  Rails.ajax({
    //   url: `/lists/${listId}/sort`,
    //   type: "patch",
    //   data: mydata
    // });
  }
}
