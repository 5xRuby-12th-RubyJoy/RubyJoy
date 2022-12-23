import { Controller } from "stimulus";

export default class extends Controller {
  connect() {}

  toggle() {
    this.element.textContent = "已加入禮物";

    const productId = this.element.dataset.productId;
    const eventId = this.element.dataset.eventId;
    const token = document.querySelector("meta[name='csrf-token']").content;

    fetch(`/events/${eventId}/add_gift?product_id=${productId}`, {
      method: "PATCH",
      headers: {
        "X-CSRF-Token": token,
      },
    })
      .then((resp) => resp.json())
      .then(({ status }) => {
        this.#setState(status === "created");
      })
      .catch(() => {
        console.log("error!!");
      });
  }

  #setState(state) {
    if (state) {
      this.element.textContent = "已加入禮物";
      this.element.classList.remove("theme-button");
      this.element.classList.add("success-button");
    } else {
      this.element.textContent = "加入禮物";
      this.element.classList.remove("success-button");
      this.element.classList.add("theme-button");
    }
  }
}
