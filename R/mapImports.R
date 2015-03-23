mapImports<-function(item){
  dat=subset(finland_import_2011,Item==item & Unit=="tonnes" & Value>0)
  dat.map<-joinCountryData2Map(dat,joinCode="ISO3",nameJoinColumn="ISO3")
  mapCountryData(dat.map,nameColumnToPlot="Value",missingCountryCol="grey",mapTitle=item)
}