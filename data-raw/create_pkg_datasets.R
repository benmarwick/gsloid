# Ice core data
lisiecki2005 <- readLines("data-raw/lisiecki2005.txt")
lisiecki2005 <- lisiecki2005[89:2204]
lisiecki2005 <-  strsplit(lisiecki2005, " ")
lisiecki2005 <- lapply(lisiecki2005, function(i) i[i != ""])
lisiecki2005 <- do.call(rbind, lisiecki2005)
lisiecki2005 <- as.data.frame(lisiecki2005, stringsAsFactors = FALSE)
names(lisiecki2005) <- lisiecki2005[1, ]
lisiecki2005 <- lisiecki2005[-1,  ]
lisiecki2005 <-  apply(lisiecki2005, 2, as.numeric)
lisiecki2005 <- as.data.frame(lisiecki2005, stringsAsFactors = FALSE)
devtools::use_data(lisiecki2005, overwrite = TRUE )

# sea level data
spratt2016 <- readLines("data-raw/spratt2016.txt")
spratt2016 <- spratt2016[96:length(spratt2016)]
spratt2016 <- strsplit(spratt2016, "\t")
spratt2016 <- do.call(rbind, spratt2016)
spratt2016 <- as.data.frame(spratt2016, stringsAsFactors = FALSE)
names(spratt2016) <- spratt2016[1, ]
spratt2016 <-  spratt2016[-1, ]
spratt2016 <- apply(spratt2016, 2, as.numeric)
spratt2016 <- as.data.frame(spratt2016, stringsAsFactors = FALSE)
devtools::use_data(spratt2016, overwrite = TRUE )


# MIS boundaries
LR04_MISboundaries <- read.table("data-raw/LR04_MISboundaries.txt")
names(LR04_MISboundaries) <- c("MIS_Boundary", "LR04_Age_ka")
LR04_MISboundaries <-  LR04_MISboundaries[-c(1:2), ]
LR04_MISboundaries[, 1] <- as.character(LR04_MISboundaries[, 1])
LR04_MISboundaries[, 2] <- as.numeric(as.character(LR04_MISboundaries[, 2]))
LR04_MISboundaries <-   cbind(LR04_MISboundaries,setNames(as.data.frame(do.call(rbind, strsplit(LR04_MISboundaries[, 1], "/")), stringsAsFactors = FALSE), c("end", "start")))
LR04_MISboundaries$label <- ifelse(grepl("\\(peak\\)", LR04_MISboundaries$end),
                                 gsub("\\(peak\\)", "", LR04_MISboundaries$end),
                                 LR04_MISboundaries$end)
LR04_MISboundaries$line_start <- c(0, LR04_MISboundaries$LR04_Age_ka[-length(LR04_MISboundaries$LR04_Age_ka)])
LR04_MISboundaries$mid <- LR04_MISboundaries$line_start + ((LR04_MISboundaries$LR04_Age_ka - LR04_MISboundaries$line_start) / 2)
devtools::use_data(LR04_MISboundaries, overwrite = TRUE )

