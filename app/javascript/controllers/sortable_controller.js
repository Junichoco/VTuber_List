import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs";
import { put } from "@rails/request.js";

// Connects to data-controller="sortable"
export default class extends Controller {
  static values = { url: String };

  connect() {
    console.log("sortable");
    this.sortable = Sortable.create(this.element, {
      animation: 350,
      ghostClass: 'blue-background-class',
      onEnd: this.onEnd.bind(this),
      // handle: "[data-sortable-handle]",
    });
  }

  disconnect() {
    this.sortable.destroy();
  }

  onEnd(event) {
    const { newIndex, oldIndex, item } = event;
    // const url = item.dataset["sortableUrl"]
    // // put(url, {
    // //   body: JSON.stringify({ position: newIndex })
    // // });

    // console.log(item.dataset);
    // console.log(event);

    // // let id = event.item.dataset.id
    // let data = new FormData()
    // // data.append("position", event.newIndex + 1)
    // console.log(this.data.get("url"));
    // // Rails.ajax({
    //   // url: this.data.get("url").replace(":id", id),
    //   url:
    //   type: 'PATCH',
    //   data: data
    // })

    // const formData = new FormData();
    // formData.append(newIndex, oldIndex);

    // // console.log(formData);

    // fetch(this.formTarget.action, {
    //   method: "PATCH", // Could be dynamic with Stimulus values
    //   headers: { "Accept": "application/json" },
    //   body: new FormData(this.formTarget)
    // })
    //   .then(response => response.json())
    //   .then((data) => {
    //     console.log(data)
    //   })
  }
}
