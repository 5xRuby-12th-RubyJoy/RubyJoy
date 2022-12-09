import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["show"]
  connect() {

  }

  toggle(){
    this.showTarget.classList.toggle("hidden")
  }
}

