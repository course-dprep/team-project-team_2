all: ../../gen/output/average_rating_genres_each_year.pdf ../../gen/output/distribution_movie_ratings_vs_comedy.pdf ../../gen/output/table_linear_regression.pdf ../../gen/output/average_ratings_per_yearplot.pdf ../../gen/output/total_genre_ratings_change_2000-2023.pdf ../../gen/output/average_rating_genres_each_year.pdf ../../gen/output/distribution_movie_ratings_vs_comedy.pdf ../../gen/output/table_linear_regression.pdf average_ratings_per_yearplot.pdf ../../gen/output/total_genre_ratings_change_2000-2023.pdf
	R --vanilla < Analysis_data.R

../../gen/output/average_rating_genres_each_year.pdf ../../gen/output/distribution_movie_ratings_vs_comedy.pdf ../../gen/output/table_linear_regression.pdf ../../gen/output/average_ratings_per_yearplot.pdf ../../gen/output/total_genre_ratings_change_2000-2023.pdf ../../gen/output/average_rating_genres_each_year.pdf ../../gen/output/distribution_movie_ratings_vs_comedy.pdf ../../gen/output/table_linear_regression.pdf average_ratings_per_yearplot.pdf ../../gen/output/total_genre_ratings_change_2000-2023.pdf: Analysis_data.R
	R --vanilla < Analysis_data.R

Analysis_data.R:
	R --vanilla < Analysis_data.R

clean:
	R -e "unlink('../../gen/temp/*.tsv*')"