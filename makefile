all: data-preparation analysis

analysis:
	make -C src/analysis 

data-preparation:
	make -C src/data-preparation

clean:
	R -e "unlink('gen/temp/*.tsv*')"