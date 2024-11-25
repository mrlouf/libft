# -=-=-=-=-    NAME -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= #

NAME		= 	libft.a

# -=-=-=-=-    PATH -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= #

SRC			= 	.

# -=-=-=-=-    FILES -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- #

SRCS		=	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c 	\
			ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c 	\
			ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c\
			ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c 		\
			ft_strchr.c ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c \
			ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c \
			ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c \
			ft_printf.c ft_printf_conv.c ft_printf_utils.c ft_lstnew.c 		\
			ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c 	\
			ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c			\
			get_next_line.c ft_atoi_base.c cucufu.c free_array.c			\
			print_array.c

			
OBJS		:=	$(SRCS:%.c=%.o)

HEADER		=	libft.h ft_printf.h

MAKE		=	Makefile
			
# -=-=-=-=-    NAME -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= #

CC			= cc
CFLAGS		= -Wall -Wextra -Werror -g
INCLUDES	= -I./

# -=-=-=-=-    TARGETS -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- #

all: $(NAME)

$(NAME): $(OBJS) $(HEADER) $(SRCS) $(MAKE)
	ar rcs $(NAME) $(OBJS)
	
%.o: %.c $(HEADER) $(MAKE)
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@
	
clean:
	/bin/rm -f $(OBJS)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY:  all clean fclean re
