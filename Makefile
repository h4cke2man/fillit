# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: niogden <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/07 19:32:22 by niogden           #+#    #+#              #
#    Updated: 2019/02/04 23:05:44 by niogden          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit

FLAGS = -Wextra -Wall -Werror

SRC =	fillit.c \
		filler.c \
		ft_checker.c \
		ft_data.c \
		maps.c

all: $(NAME)

$(NAME):
	@make -C libft
	@gcc $(FLAGS) -o fillit $(SRC) -L libft/ -lft

clean:
	@make clean -C libft
	@rm -f $(OBJ)

fclean: clean
	@make fclean -C libft
	@rm -f $(NAME)

re: fclean all

.PHONY: all fclean clean re lib
