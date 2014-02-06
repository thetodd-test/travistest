OBJDIR := build
SRCDIR := src
DISTDIR := dist
SOURCE_FILES := main.cpp
EXECUTIVE := main

SOURCE := $(addprefix $(SRCDIR)/,$(SOURCE_FILES))
OBJS := $(addprefix $(OBJDIR)/,$(SOURCE_FILES:.cpp=.o))

all: $(OBJDIR) $(DISTDIR) $(OBJS)
	gcc -Wall $(OBJS) -o $(DISTDIR)/$(EXECUTIVE)

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(DISTDIR):
	mkdir -p $(DISTDIR)

$(OBJS): $(SOURCE)
	gcc -Wall -c $< -o $*.o
