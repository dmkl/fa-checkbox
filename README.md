# fa-checkbox

A simple Ruby On Rails gem to replace standard browser's checkboxes and radio buttons with [Font Awesome][1] icons.

## Dependencies

This gem has a dependency to the [font-awesome-rails][2] gem and makes [Font Awesome][1] and [font-awesome-rails][2] available in your application implicitly.

## Installation

Add this to your Gemfile:

    gem 'fa-checkbox'

and run `bundle install`.

## Usage

In your application.css, include the css file:

```css
/*
*= require fa-checkbox
*/
```

to make it picked up by the asset pipline. Restart your webserver if it was running.

### Disable in fa-checkbox for older browsers if needed

If you support some old browsers that make trouble with custom `@font-face` fonts, you can disable `fa-checkbox` by conditional inclusion of `fa-checkbox-revert.css`. You need to make it available to your application by pre-compiling it first. Add this line to `confic/initializers/assets.rb` or another your environment initialization file:

```ruby
Rails.application.config.assets.precompile += %w(fa-checkbox-revert.css)
```

And included it to your application layout depending on your conditions. For example, for IE8 and below:

```html
<!--[if lt IE 9]>
<%= stylesheet_link_tag 'fa-checkbox-revert', media: all %>
<!--<![endif]-->
```

## Caution

Make sure that all labels in your application are linked to their checkboxes and radio buttons with `<label for='...'>` attribute properly. Otherwise they will not react to you clicks.

[1]: http://fortawesome.github.io/Font-Awesome/icons/
[2]: https://github.com/bokmann/font-awesome-rails