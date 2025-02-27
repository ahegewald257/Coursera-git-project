title="Coursera-git-project"
create_time=$(shell date +'%T %Z')
create_date=$(shell date +'%d-%m-%Y')
line_count=$(shell cat guessinggame.sh | wc -l)

all: guessinggame.sh
	echo "Generating README.md file."
	@echo "# The title of this project is ${title}." > README.md
	@echo "## This file was created at ${create_time} on ${create_date}." >> README.md
	@echo "## The number of lines of code contained in guessinggame.sh is ${line_count}." >> README.md

clean:
	rm README.md

