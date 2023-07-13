#############################################################################
# Makefile for building: mailer
# Generated by qmake (2.01a) (Qt 4.6.3) on: Fr. Nov 29 17:48:44 2013
# Project:  mailer.pro
# Template: app
# Command: /usr/bin/qmake -unix -o Makefile mailer.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_SQL_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++ -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtNetwork -I/usr/include/qt4/QtSql -I/usr/include/qt4 -I.
LINK          = g++
LFLAGS        = -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib -lQtSql -lQtNetwork -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		mailjob.cpp \
		emailaddress.cpp \
		mimeattachment.cpp \
		mimecontentformatter.cpp \
		mimefile.cpp \
		mimehtml.cpp \
		mimeinlinefile.cpp \
		mimemessage.cpp \
		mimemultipart.cpp \
		mimepart.cpp \
		mimetext.cpp \
		quotedprintable.cpp \
		smtpclient.cpp moc_mailjob.cpp \
		moc_emailaddress.cpp \
		moc_mimeattachment.cpp \
		moc_mimecontentformatter.cpp \
		moc_mimefile.cpp \
		moc_mimehtml.cpp \
		moc_mimemultipart.cpp \
		moc_mimepart.cpp \
		moc_quotedprintable.cpp \
		moc_smtpclient.cpp
OBJECTS       = main.o \
		mailjob.o \
		emailaddress.o \
		mimeattachment.o \
		mimecontentformatter.o \
		mimefile.o \
		mimehtml.o \
		mimeinlinefile.o \
		mimemessage.o \
		mimemultipart.o \
		mimepart.o \
		mimetext.o \
		quotedprintable.o \
		smtpclient.o \
		moc_mailjob.o \
		moc_emailaddress.o \
		moc_mimeattachment.o \
		moc_mimecontentformatter.o \
		moc_mimefile.o \
		moc_mimehtml.o \
		moc_mimemultipart.o \
		moc_mimepart.o \
		moc_quotedprintable.o \
		moc_smtpclient.o
DIST          = /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		mailer.pro
QMAKE_TARGET  = mailer
DESTDIR       = 
TARGET        = mailer

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: mailer.pro  /usr/share/qt4/mkspecs/linux-g++/qmake.conf /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/libQtSql.prl \
		/usr/lib/libQtNetwork.prl \
		/usr/lib/libQtCore.prl
	$(QMAKE) -unix -o Makefile mailer.pro
/usr/share/qt4/mkspecs/common/g++.conf:
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/libQtSql.prl:
/usr/lib/libQtNetwork.prl:
/usr/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -unix -o Makefile mailer.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/mailer1.0.0 || $(MKDIR) .tmp/mailer1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/mailer1.0.0/ && $(COPY_FILE) --parents mailjob.h emailaddress.h mimeattachment.h mimecontentformatter.h mimefile.h mimehtml.h mimeinlinefile.h mimemessage.h mimemultipart.h mimepart.h mimetext.h quotedprintable.h smtpclient.h SmtpMime .tmp/mailer1.0.0/ && $(COPY_FILE) --parents main.cpp mailjob.cpp emailaddress.cpp mimeattachment.cpp mimecontentformatter.cpp mimefile.cpp mimehtml.cpp mimeinlinefile.cpp mimemessage.cpp mimemultipart.cpp mimepart.cpp mimetext.cpp quotedprintable.cpp smtpclient.cpp .tmp/mailer1.0.0/ && (cd `dirname .tmp/mailer1.0.0` && $(TAR) mailer1.0.0.tar mailer1.0.0 && $(COMPRESS) mailer1.0.0.tar) && $(MOVE) `dirname .tmp/mailer1.0.0`/mailer1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/mailer1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_mailjob.cpp moc_emailaddress.cpp moc_mimeattachment.cpp moc_mimecontentformatter.cpp moc_mimefile.cpp moc_mimehtml.cpp moc_mimemultipart.cpp moc_mimepart.cpp moc_quotedprintable.cpp moc_smtpclient.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mailjob.cpp moc_emailaddress.cpp moc_mimeattachment.cpp moc_mimecontentformatter.cpp moc_mimefile.cpp moc_mimehtml.cpp moc_mimemultipart.cpp moc_mimepart.cpp moc_quotedprintable.cpp moc_smtpclient.cpp
moc_mailjob.cpp: SmtpMime \
		smtpclient.h \
		mimemessage.h \
		mimepart.h \
		mimecontentformatter.h \
		mimemultipart.h \
		emailaddress.h \
		mimehtml.h \
		mimetext.h \
		mimeattachment.h \
		mimefile.h \
		mimeinlinefile.h \
		mailjob.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) mailjob.h -o moc_mailjob.cpp

moc_emailaddress.cpp: emailaddress.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) emailaddress.h -o moc_emailaddress.cpp

moc_mimeattachment.cpp: mimepart.h \
		mimecontentformatter.h \
		mimefile.h \
		mimeattachment.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) mimeattachment.h -o moc_mimeattachment.cpp

moc_mimecontentformatter.cpp: mimecontentformatter.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) mimecontentformatter.h -o moc_mimecontentformatter.cpp

moc_mimefile.cpp: mimepart.h \
		mimecontentformatter.h \
		mimefile.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) mimefile.h -o moc_mimefile.cpp

moc_mimehtml.cpp: mimetext.h \
		mimepart.h \
		mimecontentformatter.h \
		mimehtml.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) mimehtml.h -o moc_mimehtml.cpp

moc_mimemultipart.cpp: mimepart.h \
		mimecontentformatter.h \
		mimemultipart.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) mimemultipart.h -o moc_mimemultipart.cpp

moc_mimepart.cpp: mimecontentformatter.h \
		mimepart.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) mimepart.h -o moc_mimepart.cpp

moc_quotedprintable.cpp: quotedprintable.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) quotedprintable.h -o moc_quotedprintable.cpp

moc_smtpclient.cpp: mimemessage.h \
		mimepart.h \
		mimecontentformatter.h \
		mimemultipart.h \
		emailaddress.h \
		smtpclient.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) smtpclient.h -o moc_smtpclient.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

main.o: main.cpp mailjob.h \
		SmtpMime \
		smtpclient.h \
		mimemessage.h \
		mimepart.h \
		mimecontentformatter.h \
		mimemultipart.h \
		emailaddress.h \
		mimehtml.h \
		mimetext.h \
		mimeattachment.h \
		mimefile.h \
		mimeinlinefile.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mailjob.o: mailjob.cpp mailjob.h \
		SmtpMime \
		smtpclient.h \
		mimemessage.h \
		mimepart.h \
		mimecontentformatter.h \
		mimemultipart.h \
		emailaddress.h \
		mimehtml.h \
		mimetext.h \
		mimeattachment.h \
		mimefile.h \
		mimeinlinefile.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mailjob.o mailjob.cpp

emailaddress.o: emailaddress.cpp emailaddress.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o emailaddress.o emailaddress.cpp

mimeattachment.o: mimeattachment.cpp mimeattachment.h \
		mimepart.h \
		mimecontentformatter.h \
		mimefile.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mimeattachment.o mimeattachment.cpp

mimecontentformatter.o: mimecontentformatter.cpp mimecontentformatter.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mimecontentformatter.o mimecontentformatter.cpp

mimefile.o: mimefile.cpp mimefile.h \
		mimepart.h \
		mimecontentformatter.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mimefile.o mimefile.cpp

mimehtml.o: mimehtml.cpp mimehtml.h \
		mimetext.h \
		mimepart.h \
		mimecontentformatter.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mimehtml.o mimehtml.cpp

mimeinlinefile.o: mimeinlinefile.cpp mimeinlinefile.h \
		mimefile.h \
		mimepart.h \
		mimecontentformatter.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mimeinlinefile.o mimeinlinefile.cpp

mimemessage.o: mimemessage.cpp mimemessage.h \
		mimepart.h \
		mimecontentformatter.h \
		mimemultipart.h \
		emailaddress.h \
		quotedprintable.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mimemessage.o mimemessage.cpp

mimemultipart.o: mimemultipart.cpp mimemultipart.h \
		mimepart.h \
		mimecontentformatter.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mimemultipart.o mimemultipart.cpp

mimepart.o: mimepart.cpp mimepart.h \
		mimecontentformatter.h \
		quotedprintable.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mimepart.o mimepart.cpp

mimetext.o: mimetext.cpp mimetext.h \
		mimepart.h \
		mimecontentformatter.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mimetext.o mimetext.cpp

quotedprintable.o: quotedprintable.cpp quotedprintable.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o quotedprintable.o quotedprintable.cpp

smtpclient.o: smtpclient.cpp smtpclient.h \
		mimemessage.h \
		mimepart.h \
		mimecontentformatter.h \
		mimemultipart.h \
		emailaddress.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o smtpclient.o smtpclient.cpp

moc_mailjob.o: moc_mailjob.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mailjob.o moc_mailjob.cpp

moc_emailaddress.o: moc_emailaddress.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_emailaddress.o moc_emailaddress.cpp

moc_mimeattachment.o: moc_mimeattachment.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mimeattachment.o moc_mimeattachment.cpp

moc_mimecontentformatter.o: moc_mimecontentformatter.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mimecontentformatter.o moc_mimecontentformatter.cpp

moc_mimefile.o: moc_mimefile.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mimefile.o moc_mimefile.cpp

moc_mimehtml.o: moc_mimehtml.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mimehtml.o moc_mimehtml.cpp

moc_mimemultipart.o: moc_mimemultipart.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mimemultipart.o moc_mimemultipart.cpp

moc_mimepart.o: moc_mimepart.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mimepart.o moc_mimepart.cpp

moc_quotedprintable.o: moc_quotedprintable.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_quotedprintable.o moc_quotedprintable.cpp

moc_smtpclient.o: moc_smtpclient.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_smtpclient.o moc_smtpclient.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:
