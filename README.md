# natools

natools is an R package designed to simplify and visualize working with missing data. While current tools in R focus on handling NAs at the vector level, natools provides a tool for working with NAs within a dataframe, which can help you quickly identify, summarize, and manage NAs across a whole dataset. 

natools contains six functions. drop_na_columns() takes in a dataframe and a threshold number (0-100%) and removes columns whose missing values are above the threshold. extract_na() takes in a dataframe and subsets it so that the resulting dataframe has only rows that have missing data in them. missing_check() takes in a dataframe and creates a table with the same columns as the input and one row with the number of NA values in each column. missing_tilecheck() takes in a dataframe and creates a tilemap visualization highlighting missing values across rows and columns. na_column_replace() takes in a dataframe and a list of columns and values, and replaces NA values in the specified columns with the given values. na_summary() takes in a dataframe and creates a table that summarizes the number of missing values, percentage of missing values, data type, and if all the data is missing, for each column.   

natools makes working with large dataframes that contain lots of missing data easier to handle and understand. With natools, it's easier to spot gaps, understand data quality, and communicate issues with the data. 

natools can be installed with install_github("tlochner2/natools")

You can find a write-up demonstrating natools capabilities at 
