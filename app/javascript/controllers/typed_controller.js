import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

// Connects to data-controller="typed"
export default class extends Controller {
  connect() {
    const typed = new Typed('#element', {
      strings: ['Float your boat', 'Float your ship', 'Float your yacht', 'Float your vessel', 'Float your watercraft'],
      typeSpeed: 50,
      loop: true,
      loopCount: Infinity
    });
  }
}
