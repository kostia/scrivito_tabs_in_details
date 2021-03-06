;(function() {
  scrivito.on('content', function(content) {
    $(content).find('.scrivito_tabs').each(function() {
      var $tabs = $(this);

      var $titles = $tabs.find('> .scrivito_tabs_titles > .scrivito_tabs_title');
      var $blocks = $tabs.find('> .scrivito_tabs_blocks > .scrivito_tabs_block');

      $blocks.hide();
      $blocks.eq(0).show();

      $titles.each(function() {
        var $title = $(this);

        $title.on('click', function() {
          $titles.removeClass('scrivito_tabs_active');
          $title.addClass('scrivito_tabs_active');

          $blocks.hide();
          $($title.find('a').attr('href')).show();

          return false;
        });
      });
    });
  });
}());
