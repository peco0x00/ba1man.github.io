all: build

.PHONY : build serve

build:
	jekyll build

serve:
	jekyll serve

