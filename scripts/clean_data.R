#Remove preliminary run (i.e., remove duplicated samples "S046...1" that have newer ".2" version) & cleanup columns

data <- esv_data_all %>% 
  select(-c(S046420.1, S046419.1, S046417.1, S046416.1, S046415.1, S046414.1)) %>%
  rename(
    Match_percent = `% match`,
    Species_number = `# species`
  ) 

#head(data) 
#glimpse(data)

### Cobine header row cells into one
#Takes the following row headers: "TestId", "ESVId", "sequence", "Kingdom", "Phylum", "Class", "Order", "Family", "Genus", "Species", "% match", "\# species" Merges them into one "MergedID" with the separator ","

#esv_data_all_mergedrows <- unite(esv_data_all, col='MergedID', c('TestId', 'ESVId', 'sequence', 'Kingdom', 'Phylum', 'Class', 'Order', 'Family', 'Genus', 'Species', '% match', '# species'), sep=',')

### AM - Collin is this relevant to all data? How can we generalize this?

####CC - The S046420.1 is the sample name that Jonah Ventures gave, for this set of data. So, these steps would need to be modified for each sample set.


data_long <- data %>%
  pivot_longer(
    "S049508.1":"S049391.0",
    names_to = "sample",
    values_to = "obs"
  )

# load in sample key & merge with "long" formatted data
samples_key_df <- read_csv(file.path(dir_data_raw, "JVB1710-samples_rv3.csv"))

# join sample keys with data matching by sample
data_long_key_df <- left_join(data_long, samples_key_df, by = "sample")

# Create full sample ID - merge original Sample name w/ the JV sample version name

##### Collin & Althea - convert this to left_join - don't want to do without data loading
left_joined_unite <- data_long_key_df %>%
  unite(col="ID_v", SampleID, sample, sep= "-", 
        remove = TRUE)

# Convert data frame back into "Wide" Format
esv_clean_data <- left_joined_unite %>% 
  pivot_wider(
    names_from = "ID_v", 
    values_from = "obs"
  )

## Identify and verify that higher taxonomic rankings check out
unique(esv_clean_data$Phylum)
#Should only bring back Chordata
#brings back: "Chordata"    ""
#    "" is n=179 unannotated ESVs

unique(esv_clean_data$Class)
#"Actinopteri"    ""               "Mammalia" (n=3spp - false killer whale, spinner dolphin, and pantropical spotted dolphin)      "Chondrichthyes" (n=1spp - Blue shark), "Aves" (n=1spp ~ game fowl/pheasant, chicken)           "Amphibia"  (n=1spp - giant slamander)
#Select for only Classes: Actinopteri and Mammalia, which will remove Classes: Aves and Amphibia, as well as the unannotated ESVs 
#Within Mammalia remove non-marine mammals in  Family: Bovidae, Suidae, Canidae, Felindae, Hominidae and Order: Primates

# save clean data (with analysis date in name)
write_csv(esv_clean_data, file = file.path(dir_data_proc, paste0("esv_clean_data_rv_", analysis_date ,".csv")))