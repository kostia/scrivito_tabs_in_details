# Scrivito Tabs In Details

[![Gem Version](https://badge.fury.io/rb/scrivito_tabs_in_details.svg)](http://badge.fury.io/rb/scrivito_tabs_in_details)

This gem provides a template helper for creating simple tabs in details dialogs in Scrivito CMS.

<img src="https://raw.github.com/kostia/scrivito_tabs_in_details/master/scrivito_tabs_in_details.png" alt="Screenshot Scrivito Tabs In Details">

## Installation

Add to `Gemfile`:
```ruby
gem 'scrivito_tabs_in_details'
```

and run `bundle`.

Add to `app/assets/javascripts/application.js` _after_ `scrivito`:
```javascript
//= require scrivito_tabs_in_details
```

Add to `app/assets/stylesheets/application.css`:
```css
/*
 *= require scrivito_tabs_in_details
 */
```

## Usage example

```erb
<%= scrivito_large_dialog do %>
  <%= scrivito_tabs do |t| %>
    <%= t.tab 'Page Information' do %>
      <%= scrivito_details_for 'Title and Summary' do %>
        <%= scrivito_tag :h3, @obj, :title %>
        <%= scrivito_tag :div, @obj, :summary %>
      <% end %>
    <% end %>

    <%= t.tab 'Images' do %>
      <%= scrivito_details_for 'Cover' do %>
        <%= scrivito_image_tag @obj, :foreground_image %>
      <% end %>

      <%= scrivito_details_for 'Background' do %>
        <%= scrivito_image_tag @obj, :background_image %>
      <% end %>
    <% end %>

    <%= t.tab 'Social Media' do %>
      <%= scrivito_details_for 'Facebook URL' do %>
        <%= scrivito_tag :div, @obj, :facebook_url %>
      <% end %>

      <%= scrivito_details_for 'Twitter URL' do %>
        <%= scrivito_tag :div, @obj, :twitter_url %>
      <% end %>
    <% end %>
  <% end %>
<% end %>
```

You can also have multiple tab panels per details dialog:

```erb
<%= scrivito_medium_dialog do %>
  <%= scrivito_tabs do |t| %>
    <%# ... %>
  <% end %>

  <%= scrivito_tabs do |t| %>
    <%# ... %>
  <% end %>

  <%= scrivito_tabs do |t| %>
    <%# ... %>
  <% end %>
<%= end %>
```

## Contributing

1. Fork it (https://github.com/kostia/scrivito_tabs_in_details/merge_tags/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
