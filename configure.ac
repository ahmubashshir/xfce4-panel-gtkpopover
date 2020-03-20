dnl Initialize
AC_INIT([Xfce4 Panel GtkPopover], [0.01], [ahmubashshir@gmail.com], [xfce4-panel-popover])
AM_INIT_AUTOMAKE([1.11 dist-bzip2])
AM_MAINTAINER_MODE()
AM_SILENT_RULES([yes])
LT_INIT([disable-static])
LT_PREREQ([2.4])
dnl Check for basic programs
AC_PROG_INSTALL()
#AC_PROG_LIBTOOL()

dnl Check for required packages
XDT_CHECK_PACKAGE([LIBXFCE4PANEL], [libxfce4panel-2.0], [4.10.0])

dnl Check for Vala
AM_PROG_VALAC()

dnl Makefile outputs
AC_OUTPUT([
Makefile
])
