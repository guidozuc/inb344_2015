Week 5 data

The zip files in AP8889_data contain the data that you need to decompress and index. Note, data is split into two directories to comply with GitHub file size limits; however when you decompress, put all data (i.e. the individual files, without folder nesting) into a unique folder (e.g. AP8889). This will avoid problem with the collection.spec file. 


The file terrier.index.ap8889.stoplist.sh contains an example command line used to index the collection. You can modify this command as you see adequate. Note thought that you need to use the provided TrecDocTags (and remember to use the TREC parser if that is not the default parser you have set in your Terrier installation).


The file TREC123.topics.51-200.short.full.clean.txt contains the queries to run on this collection. Queries are written one per line, and the first number is the query id. There is a specific parameter in the Terrier retrieval module to specify which query format to use (in this case trec.topics.parser=SingleLineTRECQuery). So be sure you identify and pass the correct query format option.


The file run_lmbaselinetuning_ap8889.sh contains a script to run a specific retrieval method (called Language Model, LM) on the collection using the provided queries. The script runs through a range of parameter values for the retrieval models and records the relevant results. In this week you can use this script for figuring out how to use the retrieval module in Terrier. You can get inspiration from the parameter range exploration for later weeks.

Ignore for now the qrel file (qrels.ap8889.all) - this file contains the relevance assessments for the provided queries and documents.