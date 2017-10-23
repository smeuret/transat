#!/usr/bin/env ruby
# coding: utf-8
$: << File.expand_path(File.dirname(__FILE__) + '/../lib')

require 'gtk2'
require 'logger'
require 'transat/keyboard'

LOG = Logger.new(STDOUT)
LOG.progname = 'trn'
LOG.datetime_format = '%T'

module Transat
  class Window < Gtk::Window
    include Keyboard    
    def initialize
      super(Gtk::Window::TOPLEVEL)
      set_size_request(225, 250)
      signal_connect('key_press_event') { |w, e| handleKeyPress(w, e) }
      signal_connect('destroy') { handleDestroy }
      self.show_all
      Gtk.main
    end
  end
end

Transat::Window.new
