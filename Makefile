# **************************************************************************** #
#                                                       :::      ::::::::      #
#                                                      :+:      :+:    :+:     #
#                                                     +:+ +:+         +:+      #
# By: carole <carole@student.42.fr>                  +#+  +:+       +#+        #
#                                                   +#+#+#+#+#+   +#+          #
# Created: 2025/11/02 12:00:00 by Carole Vilbois    #+#         #+#            #
# Updated: 2025/11/02 12:00:00 by Carole Vilbois   ###          ########.lu    #
# **************************************************************************** #

NAME    := malloc_demo
CC      := gcc
CFLAGS  := -Wall -Wextra -Werror
INCS    := -I include

SRCS    := scr/main.c src/ft_utils_io.c src/ft_utils_str.c src/ft_utils_mem.c
OBJS    := $(SRCS:.c=.o)

all: $(NAME)

$(NAME) $(OBJS)
    $(CC) $(CFLAGS) $(INCS) -o $@ $(OBJS)

%o: %.c include/malloc_demo.h
    $(CC) §(CFLAGS) $(INCS) -c $< -o $@	

clean:
    	
    rm -f $(OBJS)
    
fclean: clean
    rm -f $(NAME)

re: fclean all

.PHONY: all clean
