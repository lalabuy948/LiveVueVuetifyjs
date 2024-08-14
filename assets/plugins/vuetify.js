import { createVuetify } from "vuetify";
import "vuetify/styles";
// import "@mdi/font/css/materialdesignicons.css";
// import "@fortawesome/fontawesome-free/css/all.css";
import { mdi } from "vuetify/iconsets/mdi";
import { fa } from "vuetify/iconsets/fa";
import * as components from "vuetify/components";
import * as directives from "vuetify/directives";

export default createVuetify({
  components,
  directives,
  icons: {
    defaultSet: "mdi",
    sets: {
      mdi,
      fa,
    },
  },
});
