module ScrivitoTabsHelper
  def scrivito_tabs
    builder = ScrivitoTabsBuilder.new(self)
    yield builder
    builder.render
  end

  class ScrivitoTabsBuilder < Struct.new(:view_context)
    delegate :content_tag, :capture, :concat, :link_to, to: :view_context

    def initialize(*args)
      super

      @titles, @blocks = [], []
      @random_id = SecureRandom.hex(3)
    end

    def tab(title, &block)
      @titles << title
      @blocks << block

      nil
    end

    def render
      content_tag(:div, class: 'scrivito_tabs') do
        capture do
          concat(render_titles)
          concat(content_tag(:div, '', class: 'scrivito_tabs_clear'))
          concat(render_blocks)
        end
      end
    end

    private

    def render_titles
      content_tag(:div) do
        capture do
          @titles.each_with_index do |title, index|
            concat(render_title(title, index))
          end
        end
      end
    end

    def render_title(title, index)
      css_class = 'scrivito_tabs_title'
      css_class << ' scrivito_tabs_active' if index == 0

      content_tag(:div, class: css_class) do
        link_to(title, "##{tab_id(index)}")
      end
    end

    def render_blocks
      content_tag(:div) do
        capture do
          @blocks.each_with_index do |block, index|
            concat(render_block(block, index))
          end
        end
      end
    end

    def render_block(block, index)
      content_tag(:div, id: tab_id(index), class: 'scrivito_tabs_block', &block)
    end

    def tab_id(index)
      "scrivito_tabs_#{@random_id}_block_#{index}"
    end
  end
end
