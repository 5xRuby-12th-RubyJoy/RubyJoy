import { Controller } from "stimulus";

export default class extends Controller {

  static targets = [ "hbTop", "hbMid", "hbBot", "navList"]
  hbTop = document.querySelector('#hbTop')
  hbMid = document.querySelector('#hbMid')
  hbBot = document.querySelector('#hbBot')
  navList = document.querySelector('#navList')

  connect() {
  }

  toggle() {
    this.hbTopTarget.classList.toggle("rotate-45");
    this.hbTopTarget.classList.toggle("top-2");
    this.hbTopTarget.classList.toggle("top-5");

    this.hbMidTarget.classList.toggle("hidden");

    this.hbBotTarget.classList.toggle("rotate-135");
    this.hbBotTarget.classList.toggle("top-8");
    this.hbBotTarget.classList.toggle("top-5");
    this.navListTarget.classList.toggle("hidden");
  }

}