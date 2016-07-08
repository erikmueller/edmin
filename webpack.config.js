const CopyWebpackPlugin = require('copy-webpack-plugin');
const webpack = require('webpack')

module.exports = {
  entry: {
    app: './web/static/js/app.js',
    vendor: [
      'swiper'
    ]
  },
  output: {
    path: './priv/static',
    filename: 'js/[name]-bundle.js'
  },
  plugins: [
    new webpack.optimize.CommonsChunkPlugin('vendor', 'js/vendor-bundle.js'),
    new CopyWebpackPlugin([
      {from: './web/static', ignore: ['ex_admin/**', 'js/**']},
      // copy ex_admin assets flat into priv/static/{js,css}
      {
        context: './web/static/ex_admin/',
        from: '*.{js,js.map}',
        to: './js'
      },
      {
        context: './web/static/ex_admin/',
        from: '*.{css,css.map}',
        to: './css'
      }
    ])
  ],
  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /(node_modules)/,
        loader: 'babel'
      }
    ]
  }
}
