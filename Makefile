default:git.png

git.png:git.dot Makefile
	dot -Tpng git.dot -o git.png
	convert git.png -resize 70% git.png
