#!/bin/bash
cd /Users/zuccong/experiments/sigir2015_nlm/
for mu in 100 500 1000 1500 2000 2500 3000 3500 4000 5000 6000 7000 8000 9000 10000 11000 12000 13000 14000 15000
do
    echo "Computing LM baseline for mu = $mu"
    /tools/terrier-4.0/bin/trec_terrier.sh -r -Dterrier.index.path=/indeces/terrier/ap8889_stoplist -Dterrier.index.prefix=data -Dtermpipelines=Stopwords -Dtrec.model=DirichletLM -Dtrec.results.file=/Users/zuccong/experiments/sigir2015_nlm/test/terrier_ap8889_trec123_dir_mu_${mu}.txt -Dtrec.topics=/Users/zuccong/experiments/trec.collections/TREC123.topics.51-200.short.full.clean -Dtrec.topics.parser=SingleLineTRECQuery -c $mu &
done
