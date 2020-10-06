#all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "## Title: makefile for the guesseinggame.sh" >> README.md
	echo "Current time:" >> README.md
	echo $$(date) >> README.md
	echo " \n" >> README.md
	echo "Number of lines in the guessinggame.sh file: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
  
clean:
	rm README.md
