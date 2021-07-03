NAME := libasm.a
PROJECT := LIBASM
RM = /bin/rm
TEST ?= test

### Directories ###
SRC_DIR := ./srcs
INC_DIR := ./includes
OBJ_DIR := ./.obj

### INCLUDE SRC MAKEFILE ###
include $(SRC_DIR)/sources.mk

### INCLUDE INC MAKEFILE ###
include $(INC_DIR)/includes.mk

### MAIN AND SUB FILES ###
O_FILES = $(S_FILES:.s=.o)

### Full Paths ###
SRC = $(addprefix $(SRC_DIR)/,$(S_FILES))
OBJ = $(addprefix $(OBJ_DIR)/,$(O_FILES))
INC = $(addprefix $(INC_DIR)/,$(H_FILES))


###  CC && FLAGS ###
CC = nasm
DEBUG_FLAGS= 
CFLAGS = -felf64
LFLAGS = #--undefined

.PHONY: all clean fclean re

all: hey_msg $(FT_LIB) $(NAME) bye_msg

### Mkdir obj ###
.ONESHELL:
$(OBJ_DIR): mkdir_msg
	mkdir -p $(OBJ_DIR) $(OBJ_SUB_DIRS)

### Compilation ###
.ONESHELL:
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.s $(INC) Makefile | compil_msg
	@echo "$(ERASEL)$(@F) \c"
	@$(CC) $(CFLAGS) -o $@ $<

### Link ###
.ONESHELL:
$(NAME): $(OBJ_DIR) $(OBJ) | link_msg
	@ar rcs  $(NAME) $(OBJ)
	@printf "$@: Done !\n"

### Clean ###
.ONESHELL:
clean: clean_msg
	@$(RM) -vrf $(OBJ_DIR)

.ONESHELL:
fclean: clean fclean_msg
	@$(RM) -vrf $(NAME)
	@$(RM) -vrf $(TEST)
	@$(RM) -vrf *.exe

re: fclean all

.ONESHELL:
$(TEST): $(NAME)
	gcc -o $(TEST).exe tests/test_$(TEST).c $(NAME) -I includes

test: $(TEST)

### INCLUDE TOOLS MAKEFILE ###
include ./tools.mk
