#
# config.mk
#
# This file controls how RoadMap gets built.  Try and keep your
# customizations here.  You can override these settings from the
# commandline if you wish, e.g. "make MODE=DEBUG".

# GNU make is probably required to build RoadMap.

# default installation directory.
# INSTALLDIR = /usr/local

# If you change settings in this file, it's quite possible that
# you'll need to do a "make clean" before trying your build again.
# (In other words, it may appear to build correctly, and in some
# cases might, but there are no guarantees.)

# Choose a desktop toolkit:
# DESKTOP = GTK
DESKTOP = GTK2
# DESKTOP = GPE
# DESKTOP = QT
# DESKTOP = QT4
# DESKTOP = QPE
# DESKTOP = QPE4
# DESKTOP = WINCE  # but see below

# If you select WINCE for your WinCE device, you'll need to turn
# off POPT, and maybe EXPAT as well, both below.  You'll also
# need the arm-wince-mingw32ce cross-compiler.  And even after
# all that, wroadmap probably won't run until someone finishes
# debugging and fixing it.  You may have better luck with a
# windows-based devkit.  There are some more comments in win32/Makefile.
# CROSS=/opt/mingw32ce/bin/arm-wince-mingw32ce-
# CFLAGS += ???  others needed?

# If you selected QT or QPE above, you might also want to set QTDIR
# here.  (But it might already be set in your environment.)
# Different QT installations seem to vary quite a bit.  You
# may have to experiment to find the right combination of CFLAGS
# and LIBS settings.  Various examples are shown.
# QTDIR = /usr
# QTDIR = /usr/share/qt4
# CFLAGS += -I/usr/include/qt4
# LIBS += -L$(QTDIR)/lib

# If you selected QPE4 above, then QTOPIADIR is needed -- it
# points to the place where the qtopia was built.  QTDIR should
# also be set, and you may need to set CROSS to enable
# cross-compilation.  You probably will also want to check
# qt4/Makefile, which contains a few more settings.  For example:
# QTOPIADIR=/opt/src/qtopia/qtopia_arm
# QTDIR=$(QTOPIADIR)/qtopiacore/target

# If you are using a build of QT without the QPainter::rotate()
# call builtin (i.e., built with QT_NO_TRANSFORMATIONS, as in
# some Familiar builds), set QT_NO_ROTATE.
# QT_NO_ROTATE = YES

# RoadMap contains a hard-coded list of directories in which it
# will look for its system configuration files.  (see
# "unix/roadmap_path.c")  Specifying a directory here will add
# this path to the front of that list, causing it to be checked
# first.  (This search path can be set at runtime via '--config=PATH'.)
# Note!  If set, this will also be used for the config files
# during "make install".  Most users will not need to set 
# this value.
# ROADMAP_CONFIG_DIR = /usr/local/share/roadmap

# Likewise, setting the following path will prefix the built-in
# list of locations to be searched for maps.  (This search path
# can be set at runtime by changing the value of Map.Path in the
# system (or user's) "preferences" file.)  If this path ends with the
# special string "/...", then all subdirectories of this directory
# will be searched for maps as well.  Most users will use Map.Path,
# and will not need to set this value.
# ROADMAP_MAP_DIR = $(ROADMAP_CONFIG_DIR)/maps/...

# RoadMap uses the "expat" library in order to read and write xml
# for the GPX format route/track/waypoint files.  If you don't
# libexpat.a on your system, you can still use RoadMap, but you
# won't be able to import or export your route and waypoint data.
EXPAT = YES
# EXPAT = NO

# RoadMap uses the "popt" library when parsing arguments in some
# of the utility programs, primarily those concerned with
# building the maps.  If you don't have libpopt (and the popt.h),
# you can still build and run RoadMap, but not those utilities.
POPT = YES
# POPT = NO

# RoadMap users in the USA will probably use the Tiger maps from
# the US Census bureau.  These maps do not requre "shapefile"
# support when building the rdm format of the maps.  Users in
# other areas will likely be building maps from other sources,
# and will probably need shapefile support.
SHAPEFILES = NO
# SHAPEFILES = YES

# For better-looking lines and a better looking street-label
# font, RoadMap can use the "Anti-Grain Geometry" library,
# libagg.a, on some desktops.  If you don't have this library,
# RoadMap can still do street labels, but they won't look as
# nice.  (for more information on AGG, see http://antigrain.com)
# RoadMap requires version 2.4 of agg.  
# [ Note -- currently, AGG is only available with GTK2 builds.]
#
# Choose one of the options below.  This is really ugly, but unlike
# the rest of the graphics code in RoadMap, the AGG code doesn't
# autodetect what kind of display you have.  (Would someone out
# there like to fix this?  :-)  If your screen is squished or 
# stretched, 16/32 is wrong.  If you have bad colors, rgb/bgr is
# wrong.  Other values are possible -- see the AGG documention
# for pixfmt_XXX values
AGG = NO
# AGG = rgb565	# 16bit "highcolor"
# AGG = rgba32	# 24bit+alpha "truecolor", RGB order
# AGG = bgra32	# 24bit+alpha "truecolor", BGR order
# AGG = rgb24	# 24bit "truecolor", RGB order
# AGG = bgr24	# 24bit "truecolor", BGR order

# Some languages need to present text that flows from right to to
# left.  RoadMap supports this via the "Free Implementation of
# the BiDirectional" algorithm library, (aka "FriBidi" -- for
# more information, see http://fribidi.org )  (AGG is also
# required.)
BIDI = NO
# BIDI = YES

# RoadMap internal profiling -- you probably don't want this.
# DBG_TIME = YES

# Basic building mode
MODE =		# blank for "normal" build
# MODE=DEBUG	# enables -g, disables -O, turns on mtrace leak detection
# MODE=PROFILE	# sets up for profiling with gprof

# You can add any other special local CFLAGS values here
# e.g., CFLAGS += -DWGET_GOOGLE_ROUTE
# CFLAGS +=

# If you know you need other libraries for your build, you can
# add those here as well.  For example:
# LIBS += -L/home/me/mylibdir -lmine

