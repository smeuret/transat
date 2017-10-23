module Transat
  module Keyboard
    def handleKeyPress(widget, event)
      if event.state.control_mask? and event.keyval == Gdk::Keyval::GDK_q
        LOG.debug "Exiting"
        destroy
        true
      else
        case event.keyval
        when Gdk::Keyval::GDK_Page_Down
          doSomethingAwesome
          true
        when Gdk::Keyval::GDK_Page_Up
          doSomethingAwesome
          true
        else
          false
        end
      end
    end

    def handleDestroy
      Gtk.main_quit
    end
  end
end
