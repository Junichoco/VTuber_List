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
    const { newIndex, item } = event;
    const url = item.dataset["sortableUrl"]
    put(url, {
      body: JSON.stringify({ position: newIndex })
    });
  }
}
