# Installation guide

1. Let's install vuetify

```sh
cd assets

npm i vuetify
```

2. Modify `tsconfig.json`

```js
// ...
"allowJs": true, // 🤷🏻‍♂️
// ...
```

3. Modify `vite.config.js`

```js
import vuetify from "vite-plugin-vuetify";

// ...
ssr: {
  noExternal: ["vuetify"],
},
```
