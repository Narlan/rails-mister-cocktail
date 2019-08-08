# Load the Rails application.
require_relative 'application'
const { environment } = require('@rails/webpacker')

# Initialize the Rails application.
Rails.application.initialize!
const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
  })
)

module.exports = environment
