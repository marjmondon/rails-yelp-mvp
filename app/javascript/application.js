// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import { dynamicRating } from "../plugins/starsInReviewForm";

document.addEventListener('turbolinks:load', () => {
  dynamicRating();
})
