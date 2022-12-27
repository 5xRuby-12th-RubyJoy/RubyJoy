import { Controller } from "stimulus";

export default class extends Controller {

  connect() {}

  copy() {
    navigator.clipboard.writeText(document.URL);
    this.element.textContent = "複製成功！"
  }
}
