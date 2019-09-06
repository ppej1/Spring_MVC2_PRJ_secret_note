const path = require('path');

module.exports = {
  context: path.resolve(__dirname, 'front'),
  entry: {
    home: './home.js',
  },
  output: {
    path: path.resolve(__dirname, 'webapp/resources/js/webpack'),
    filename: '[name].js',
    publicPath: '/example/resources',
  },
  module: {
	    rules: [
	      { test: /\.css$/, use: 'css-loader' },
	      { test: /\.js$/, exclude: /node_modules/, loader: "babel-loader" }
	      
	    ]
	  }
  
};