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
Dataset<-PlotAlphaData(Dataset, "filt","alpha_diver_0","Chao1","Type","OTU", "default", "png");
Dataset<-PlotAlphaBoxData(Dataset, "alpha_diverbox_0","Chao1","Type","default", "png");
Dataset<-PerformAlphaDiversityComp(Dataset, "tt","Type","true");
Dataset<-PerformBetaDiversity(Dataset, "beta_diver_0","PCoA","bray","expfac","Type","none","OTU","","Chao1", "yes", "adonis", "png", 72, "default", "true");
Dataset<-PCoA3D.Anal(Dataset, "PCoA","bray","OTU","expfac","Type","","Chao1","beta_diver3d_0.json")
Dataset<-PerformCategoryComp(Dataset, "OTU", "adonis","bray","Type","true");
Dataset<-PerformBetaDiversity(Dataset, "beta_diver_1","PCoA","bray","expfac","Type","none","OTU","","Chao1", "yes", "adonis", "png", 72, "default", "true");
Dataset<-PCoA3D.Anal(Dataset, "PCoA","bray","OTU","expfac","Type","","Chao1","beta_diver3d_1.json")
Dataset<-PerformCategoryComp(Dataset, "OTU", "adonis","bray","Type","true");
Dataset<-CoreMicrobeAnalysis(Dataset, "core_micro_0",0.2,0.01,"OTU","bwm","overview", "all_samples", "Type", "null", "png");
Dataset<-PlotTreeGraph(Dataset, "plot_tree_0","bray","ward.D","Type","OTU", "default", "png");
Dataset<-PlotHeatmap(Dataset, "heatmap_0", "norm", "row","euclidean","ward.D","bwm","Type","OTU","overview","F", "png","T","T",23,10,12,6, 2.0,10.0,"F","F","NA");
Dataset<-PlotHeatmap(Dataset, "heatmap_1", "norm", "row","euclidean","ward.D","bwm","Type","OTU","overview","F", "png","T","T",23,10,12,6, 2.0,10.0,"F","F","NA");
Dataset<-PerformLefseAnal(Dataset,  0.1, "fdr", 2.0,  "Type","F","NA","OTU");
Dataset<-PerformLefseAnal(Dataset,  0.1, "fdr", 2.0,  "Type","F","NA","OTU");
Dataset<-PlotLEfSeSummary(Dataset, 15, "dot",  "bar_graph_0","png");
Dataset<-PlotLEfSeSummary(Dataset, 15, "dot",  "bar_graph_1","png");
