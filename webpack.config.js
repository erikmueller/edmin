const CopyWebpackPlugin = require('copy-webpack-plugin');

module.exports = {
  entry: './web/static/js/app.js',
  output: {
    path: './priv/static',
    filename: 'js/app.js'
  },
  plugins: [
    new CopyWebpackPlugin([
      {from: './web/static', ignore: ['ex_admin/**', 'js/**']},
      // copy ex_admin assets flat into priv/static
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
  ]
}
