NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror

HEADER = libft.h

SRCS =	ft_atoi.c ft_itoa.c ft_isprint.c ft_isdigit.c ft_isascii.c ft_isalpha.c ft_calloc.c \
		ft_bzero.c  ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c \
		ft_putendl_fd.c ft_putnbr_fd.c  ft_putstr_fd.c  ft_split.c  ft_strchr.c   ft_strdup.c \
		ft_striteri.c ft_strjoin.c   ft_strlen.c ft_isalnum.c ft_strlcat.c ft_strlcpy.c ft_strmapi.c  \
		ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c\
		ft_lstnew.c ft_lstsize.c ft_lstmap.c ft_lstlast.c  ft_lstiter.c ft_lstdelone.c ft_lstclear.c\
		ft_lstadd_front.c ft_lstadd_back.c

OBJS_SRCS= $(SRCS:%.c=%.o)

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@ -I $(HEADER)

$(NAME): $(OBJS_SRCS)
	@ar rcs $@ $^
	
all: $(NAME)
		@echo All files created..

bonus: all

clean:
	@rm -f $(OBJS_SRCS)
	@echo All *.o files cleaned..

fclean: clean
	@rm -f $(NAME)
	@echo All files totally removed..

re: fclean all
	@echo All files are re-built..

.PHONY: all clean fclean re
