// const path = require('path');
//
//
// module.exports = {
//     entry: './src/index.tsx',
//     output: {
//         filename: 'bundle.js',
//         path: path.resolve(__dirname, 'dist'),
//     },
//     resolve: {
//         extensions: ['.ts', '.tsx', '.js','.png'],
//         alias: {
//             '@layout': path.resolve(__dirname, './src/layout'),
//             '@components': path.resolve(__dirname, './src/components'),
//             '@pages': path.resolve(__dirname, './src/pages'),
//             '@store': path.resolve(__dirname, './src/store'),
//             '@images': path.resolve(__dirname, './src/assets/images'),
//         }
//     },
//     module: {
//         rules: [
//             {
//                 test: /\.tsx?$/,
//                 use: 'ts-loader',
//                 exclude: /node_modules/,
//             },
//             {
//                 test: /\.css$/, // .css로 끝나는 파일에 대한 규칙
//                 use: ['style-loader', 'css-loader'], // CSS 로더 사용
//             },
//             {
//                 test: /\.(png|jpg|jpeg|gif)$/i,
//                 use: [
//                     {
//                         loader: 'file-loader',
//                     },
//                 ],
//             },
//         ],
//     },
// };
