const CopyWebpackPlugin = require('copy-webpack-plugin');


module.exports = {
  entry: './web/static/js/app.js',
  output: {
    path: './priv/static',
    filename: 'js/app.js'
  },
  plugins: [
    new CopyWebpackPlugin([
      {from: './web/static/css', to: './css'},
      {from: './web/static/fonts', to: './fonts'},
      {from: './web/static/images', to: './images'},
      {from: './web/static/videos', to: './videos'},
      {
        context: './web/static/vendor/',
        from: '*.{js,js.map}',
        to: './js'
      },
      {
        context: './web/static/vendor/',
        from: '*.{css,css.map}',
        to: './css'
      }
    ])
  ]
}
