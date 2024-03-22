movies_data.tsv: Basics.tsv.gz Ratings.tsv.gz
	R --vanilla < Cleaning_data.R

Basics.tsv.gz Ratings.tsv.gz: Download_data.R
	R --vanilla < Download_data.R

clean:
	R -e "unlink('../../gen/temp/*.tsv*')"