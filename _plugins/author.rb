# encoding: utf-8
require 'rubygems'

module Jekyll
  class DisplayAuthorTag < Liquid::Tag

    def initialize(tag_name, author, tokens)
      super
      @author = author
    end

    def render(context)
      "hey there #{@author}"
    end

  end
end

Liquid::Template.register_tag('display_author', Jekyll::DisplayAuthorTag)