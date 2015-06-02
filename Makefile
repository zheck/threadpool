##
## Makefile for  in /home/zhou_f//c++/r-type/server
## 
## Made by fong zhou
## Login   <zhou_f@epitech.net>
## 
## Started on  Sat Nov  2 22:15:24 2013 fong zhou
## Last update Sat Nov  2 22:22:42 2013 fong zhou
##

NAME	=	test

SRC	=	./src/
EXAMPLE	=	./example/

FUNC	=	$(EXAMPLE)main.cpp \
		$(EXAMPLE)Exception.cpp \
		$(SRC)CondVar.cpp \
		$(SRC)Task.cpp \
		$(SRC)Mutex.cpp \
		$(SRC)ThreadPool.cpp

OBJ	=	$(FUNC:.cpp=.o)

CC	=	g++

INCLUDE	+=	-Iinclude -I$(SRC) -I$(EXAMPLE)

CXXFLAGS	+= -W -Wall -Wextra
CXXFLAGS	+= $(INCLUDE)

RM	=	rm -f

all:		$(NAME)

$(NAME):	$(OBJ)
		$(CC) -o $(NAME) $(OBJ)

clean:
		$(RM) $(OBJ)

fclean:		clean
		$(RM) $(NAME)

re:		fclean all

.PHONY:		all clean fclean re

