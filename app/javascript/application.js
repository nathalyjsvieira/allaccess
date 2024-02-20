// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import { h, Component } from 'preact';
import { Calendar } from './fullcalendar/core.js';
import { DayGrid } from './fullcalendar/daygrid.js';

//= require core
//= require daygrid

document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new FullCalendar.Calendar(calendarEl, {
    plugins: [ 'dayGrid' ],
    events: '/events.json'  // adjust this if your endpoint's URL is different
  });

  calendar.render();
});


