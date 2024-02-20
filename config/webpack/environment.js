const { environment } = require("@rails/webpacker");

environment.resolve.alias = {
  ...environment.resolve.alias,
  react: "preact/compat",
  "react-dom/test-utils": "preact/test-utils",
  "react-dom": "preact/compat", // Must be below test-utils
};

environment.resolve = {
  alias: {
    preact: "preact/compat",
  },
  extensions: [".js", ".jsx"],
  modules: [path.resolve("./node_modules"), path.resolve("./app/javascript")],
};

module.exports = environment;
