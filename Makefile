default:git.png

git.png:git.dot Makefile
	dot -Tpng git.dot -o git.png
	convert git.png -resize 30% git.png
