SRCS = 	srcs/main.c \
		srcs/lexer/lexer.c srcs/lexer/check_quote_notop.c srcs/lexer/syntax_checker.c srcs/lexer/utils_lexer.c \
		srcs/parsing/parser.c srcs/parsing/utils_parsing.c srcs/parsing/check_cmds.c srcs/parsing/commands.c srcs/parsing/tokens.c \
		srcs/execution/execute.c srcs/execution/heredoc.c srcs/execution/init.c srcs/execution/builtin_execve.c srcs/execution/child_process.c srcs/execution/exec_utils.c \
		srcs/utils/ft_notop.c srcs/utils/ft_strdup.c srcs/utils/ft_strlen.c  srcs/utils/ft_strncmp.c srcs/utils/ft_str_join_utils.c srcs/utils/tweaked_strjoin.c srcs/utils/ft_memmove.c srcs/utils/ft_split.c srcs/utils/tweaked_split.c srcs/utils/tweaked_strdup.c srcs/utils/ft_add_char.c srcs/utils/free1.c srcs/utils/free2.c srcs/utils/ft_memset.c srcs/utils/ft_atoi.c srcs/utils/ft_itoa.c srcs/utils/ft_isnum.c \
		srcs/signaux/prompt_sig.c \
		srcs/builtins/ft_copy_env.c srcs/builtins/ft_env.c srcs/builtins/ft_pwd.c srcs/builtins/ft_export.c srcs/builtins/ft_export_2.c srcs/builtins/ft_unset.c srcs/builtins/ft_unset_2.c srcs/builtins/ft_expender.c srcs/builtins/ft_expender_2.c srcs/builtins/ft_echo.c srcs/builtins/ft_cd.c srcs/builtins/ft_cd_2.c srcs/builtins/ft_exit.c \

C.O = ${SRCS:.c=.o}

H = includes/minishell.h
NAME = minishell

CC = gcc
FLAGS = -Wall -Wextra -Werror
DEBUG = -g
LEAK = -fsanitize=address

all : $(NAME)

$(NAME) :
	$(CC) $(FLAGS) $(DEBUG) $(SRCS) -o $(NAME) -lreadline

leak :
	$(CC) $(FLAGS) $(LEAK) $(SRCS) -o leak -lreadline

clean :
	rm -f $(C.O)

fclean : clean
	rm -f $(NAME)

re : fclean all
