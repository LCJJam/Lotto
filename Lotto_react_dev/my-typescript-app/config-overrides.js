// config-overrides.js

const path = require('path');
const { override, addWebpackAlias } = require('customize-cra');

module.exports = override(
    addWebpackAlias({
        '@layout': path.resolve(__dirname, 'src/layout'),
        '@components': path.resolve(__dirname, 'src/components'),
        '@pages': path.resolve(__dirname, './src/pages'),
        '@store': path.resolve(__dirname, './src/store'),
        '@images': path.resolve(__dirname, './src/assets/images'),
        // 추가적인 alias 설정
    })
);
