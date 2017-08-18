const webpack = require('webpack'); //to access built-in plugins
const path = require('path');

const config = {
  entry: './server.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js'
  },
  module: {
    rules: [
      { test: /\.js$/, use: 'babel-loader' }
    ]
  },
  plugins: [
    new webpack.optimize.UglifyJsPlugin(),
  ],
node: {
  net: 'empty',
   fs: 'empty',
   tls: 'empty'
}
};

module.exports = config;