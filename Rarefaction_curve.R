Dataset<-Init.DatasetObj()
Dataset<-SetModuleType(Dataset, "mdp")
Dataset<-ReadSampleTable(Dataset, "Meta.csv");
Dataset<-ReadMothurData(Dataset, "Galaxy1316-[Make.shared_on_data_1313_and_data_1314__shared].mothur.shared","0.03.mothur.cons.taxonomy","SILVA");
Dataset<-SanityCheckData(Dataset, "mothur","sample","true");
Dataset<-SanityCheckSampleData(Dataset);
Dataset<-SetMetaAttributes(Dataset, "1")
Dataset<-PlotLibSizeView(Dataset, "norm_libsizes_0","png");
Dataset<-CreatePhyloseqObj(Dataset, "mothur","SILVA","F" , "false")
Dataset<-ApplyAbundanceFilter(Dataset, "prevalence", 0, 0.1);
Dataset<-ApplyVarianceFilter(Dataset, "iqr", 0.0);
Dataset<-GetLibscale(Dataset);
Dataset<-PerformNormalization(Dataset, "rareto", "none", "none", "true",16323);
Dataset<-ApplyAbundanceFilter(Dataset, "prevalence", 0, 0.1);
Dataset<-ApplyVarianceFilter(Dataset, "iqr", 0.0);
Dataset<-GetLibscale(Dataset);
Dataset<-PerformNormalization(Dataset, "rareto", "none", "none", "true",16323);
Dataset<-PlotTaxaAundanceBar(Dataset, "taxa_alpha_0","Phylum","Type", "null", "barraw",10, "set3","sum",10, "bottom", "F", "png");
Dataset<-PlotOverallPieGraph(Dataset, "Phylum", 10,"sum", 10, "bottom");
GetSeriesColors()
Dataset<-SavePiechartImg(Dataset, "Phylum","primary_piechart_0","png");
Dataset<-PlotRarefactionCurve(Dataset, "filt","Type","Type","Type","5","rarefaction_curve_0","png");
