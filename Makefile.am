AM_VALAFLAGS = --pkg=gtk+-3.0 --pkg=libxfce4panel-2.0

plugindir = $(libdir)/xfce4/panel/plugins
plugin_LTLIBRARIES = libpopover.la

libpopover_la_SOURCES = popover.vala
libpopover_la_CFLAGS = @LIBXFCE4PANEL_CFLAGS@
libpopover_la_LIBADD = @LIBXFCE4PANEL_LIBS@

desktopdir = $(datadir)/xfce4/panel/plugins
desktop_DATA = popover-applet.desktop
