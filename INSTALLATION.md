# Installation guide

Assuming you successfully finished [LiveVue Installation](https://github.com/Valian/live_vue/blob/main/INSTALLATION.md).

1. Let's install vuetify and vite plugin

```sh
cd assets

npm i vuetify vite-plugin-vuetify
```

2. Modify `tsconfig.json`

```js
// ...
"allowJs": true, // 🤷🏻‍♂️
// ...
```

3. Modify `vite.config.js`

We need to add vite vuetify plugin.

```js
import vuetify from "vite-plugin-vuetify";

// ...
ssr: {
  noExternal: ["vuetify"],
},
```

4. Initialise Vuetify

Update `assets/js/app.js`.

Thank you [@Valian](https://github.com/Valian) for help with this step.

```js
// ...
// rename some imports not to colide with others.
// import { getHooks } from "live_vue";
// import components from "../vue";
import { getHooks, initializeVueApp } from "live_vue";
import { h } from 'vue';
import vueComponents from "../vue";

// Vuetify
import 'vuetify/styles'
import { createVuetify } from 'vuetify'
import * as components from 'vuetify/components'
import * as directives from 'vuetify/directives'

const vuetify = createVuetify({
  components,
  directives,
})

// ...
// update hooks
hooks: getHooks(vueComponents, { initializeApp: ({createApp, component, props, slots, plugin, el}) => {
   const renderFn = () => h(component, props, slots)
   const app = createApp({ render: renderFn });
   app.use(plugin);
   app.use(vuetify);
   app.mount(el);
   return app;
}}),

// ...
```

5. Start project

```sh
mix phx.server
```

Navigate to `localhost:4000/example` 🎉
