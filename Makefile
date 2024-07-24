all: README.md

README.md: guessinggame.sh
	echo "## Guessinggame" > README.md
	date >> README.md
	echo "Number of lines of code:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
clean: 
	rm README.md
