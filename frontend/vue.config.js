const { defineConfig } = require('@vue/cli-service');

const path = require('path');

module.exports = defineConfig({
  transpileDependencies: true,
  configureWebpack: {
    resolve: {
      alias: {
        '@': path.resolve(__dirname, 'src'),
      },
      fallback: {
        http: false,
        https: false,
        url: false,
        util: false,
        stream: false,
        zlib: false,
        assert: false,
      },
    },
  },
});
