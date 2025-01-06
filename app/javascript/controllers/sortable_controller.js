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
    const old_num = parseInt(event.oldIndex) + 1;
    const new_num = parseInt(event.newIndex) + 1;
    const listId = parseInt(document.getElementsByClassName("list-cards")[0].id);
    const markerId = parseInt(document.getElementsByClassName("vtuber-card")[newIndex].id);
    // put(`/lists/${listId}/sort`, {
    //   body: JSON.stringify({ position: newIndex + 1 })
    // });
    // put(`/lists/${listId}/sort`, {
    //   body: JSON.stringify({ id: listId,
    //   old_num: old_num,
    //   new_num: new_num })
    // });
    // console.log(newIndex + 1);

    // const request = new FetchRequest('patch', `/lists/${listId}/sort`);
    // const response = await request.perform();
    // console.log(response);

    // console.log(listId);
    // Rails.ajax({
    //   url: `/lists/${listId}/sort`,
    //   type: "patch",
    //   data: {
    //     params: {
    //       id: listId,
    //       old_num: event.oldIndex + 1,
    //       new_num: event.newIndex + 1
    //     }
    //   }
    // });

    // const mydata = {
    //   params: {
    //     id: listId,
    //     old_num: oldIndex + 1,
    //     new_num: newIndex + 1
    //  }};

    const mydata = {
      'id': listId,
      'old_num': JSON.stringify(old_num),
      'new_num': JSON.stringify(new_num)
    }

    console.log(listId);
    console.log(mydata);

    // put(`/lists/${listId}/sort`, {
    //   body: JSON.stringify({ id: listId, old_num: old_num, new_num: new_num })
    // });

    // const request = new FetchRequest('patch', `${this.urlValue}?old_position=${event.oldIndex + 1}&new_position=${event.newIndex + 1}`)
    // const response = await request.perform()
    // console.log(response)

    //  Rails.ajax({
    //   url: `/lists/${listId}/sort`,
    //   type: "patch",
    //   data: mydata
    // });



    // fetch(`/lists/${listId}/sort`, {
    //   method: "POST",
    //   headers: { "Accept": "application/json" },
    //   body: mydata
    // }).then(response => response.json())
    // .then((data) => {
    //   console.log(data)
    // });

    //  console.log(mydata.params.id);

    // Rails.ajax({
    //   type: "PATCH",
    //   url: `${listId}/sort`,
    //   data: JSON.stringify({ params: {"id": listId, "old_num": oldIndex + 1, "new_num": newIndex + 1}})
    // });

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
