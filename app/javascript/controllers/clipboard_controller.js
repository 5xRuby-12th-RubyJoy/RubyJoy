import { Controller } from "stimulus";

export default class extends Controller {

  copyOutput = document.querySelector("#copybtn")
  connect() {}

  copy() {
    navigator.clipboard.writeText(document.URL);
    this.copyOutput.textContent = "複製成功！"
  }
}
