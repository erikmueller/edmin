const CopyWebpackPlugin = require('copy-webpack-plugin');
const webpack = require('webpack')

module.exports = {
  entry: {
    app: ['./web/static/js/app.js', 'swiper']
  },
  output: {
    path: './priv/static',
    filename: 'js/app-bundle.js'
  },
  plugins: [
    new webpack.optimize.UglifyJsPlugin({compress: {warnings: false}}),
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
      },
      {
        test: /\.less$/,
        loader: "style!css!less"
      }
    ]
  }
}
