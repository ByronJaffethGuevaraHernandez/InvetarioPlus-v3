<template>
    <vue-simple-calendar :events="events"></vue-simple-calendar>
  </template>
  
  <script>
  import VueSimpleCalendar from 'vue-simple-calendar';
  import 'vue-simple-calendar/dist/vue-simple-calendar.css';
  
  export default {
    components: {
      VueSimpleCalendar
    },
    data() {
      return {
        events: [
          { title: 'Evento 1', start: '2024-11-01' },
          { title: 'Evento 2', start: '2024-11-02' }
        ]
      };
    }
  };
  </script>