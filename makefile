all: pdf/budget_justification.pdf pdf/cover_letter.pdf pdf/human_subjects.pdf \
  pdf/project_abstract.pdf pdf/project_narrative.pdf pdf/research_approach.pdf \
  pdf/research_environment.pdf pdf/specific_aims.pdf pdf/module_content_tables.pdf \
  pdf/module_track_table.pdf pdf/evaluation_table.pdf pdf/criteria_for_review.pdf \
  pdf/timeline.pdf

pdf/budget_justification.pdf: writing/budget_justification.tex
	pdflatex writing/budget_justification; 
	mv budget_justification.pdf pdf/
	rm budget_justification.*
	
pdf/criteria_for_review.pdf: writing/criteria_for_review.tex
	pdflatex writing/criteria_for_review; 
	mv criteria_for_review.pdf pdf/
	rm criteria_for_review.*
	
pdf/cover_letter.pdf: writing/cover_letter.tex
	pdflatex writing/cover_letter;
	mv cover_letter.pdf pdf/
	rm cover_letter.*
	
pdf/human_subjects.pdf: writing/human_subjects.tex
	pdflatex writing/human_subjects
	mv human_subjects.pdf pdf/
	rm human_subjects.*
	
pdf/project_abstract.pdf: writing/project_abstract.tex
	pdflatex writing/project_abstract
	mv project_abstract.pdf pdf/
	rm project_abstract.*
	
pdf/project_narrative.pdf: writing/project_narrative.tex
	pdflatex writing/project_narrative
	mv project_narrative.pdf pdf/
	rm project_narrative.*
	
pdf/research_environment.pdf: writing/research_environment.tex
	pdflatex writing/research_environment
	mv research_environment.pdf pdf/
	rm research_environment.*
	
pdf/specific_aims.pdf: writing/specific_aims.tex
	pdflatex writing/specific_aims
	mv specific_aims.pdf pdf/
	rm specific_aims.*
	
pdf/timeline.pdf: writing/timeline.tex figures/timeline.pdf
	pdflatex writing/timeline
	mv timeline.pdf pdf/
	rm timeline.*

pdf/research_approach.pdf: rep_modules.bib writing/research_approach.tex \
 tables/evaluation.tex tables/module_content_data_preprocessing.tex \
 tables/module_tracks.tex tables/module_content_data_recording.tex \
 figures/timeline.pdf
	pdflatex writing/research_approach
	bibtex research_approach
	mv research_approach.pdf pdf/
	rm research_approach.aux
	rm research_approach.out
	rm research_approach.bbl
	rm research_approach.log
	
pdf/module_content_tables.pdf: writing/module_content_tables.tex \
 tables/module_content_data_recording.tex \
 tables/module_content_data_preprocessing.tex
	pdflatex writing/module_content_tables
	mv module_content_tables.pdf pdf/
	rm module_content_tables.*
	
pdf/module_track_table.pdf: writing/module_track_table.tex \
 tables/module_tracks.tex 
	pdflatex writing/module_track_table
	mv module_track_table.pdf pdf/
	rm module_track_table.*
	
pdf/evaluation_table.pdf: writing/evaluation_table.tex tables/evaluation.tex
	pdflatex writing/evaluation_table
	mv evaluation_table.pdf pdf/
	rm evaluation_table.*
	
tables: tables/module_content_data_recording.tex \
 tables/module_content_data_preprocessing.tex \
 tables/module_tracks.tex \
 tables/evaluation.tex
	
tables/module_content_data_recording.tex: R/table_module_content_data_recording.R
	R CMD BATCH R/table_module_content_data_recording.R
	
tables/module_content_data_preprocessing.tex: R/table_module_content_data_preprocessing.R
	R CMD BATCH R/table_module_content_data_preprocessing.R
	
tables/module_tracks.tex: R/table_module_tracks.R
	R CMD BATCH R/table_module_tracks.R
	
tables/evaluation.tex: R/table_evaluation.R
	R CMD BATCH R/table_evaluation.R
	
figures/timeline.pdf: R/plot_timeline.R
	R CMD BATCH R/plot_timeline.R
	
clean: 
	rm pdf/*.pdf
	