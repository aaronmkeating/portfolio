library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")

text <- readLines(file.choose())

docs <- Corpus(VectorSource(text))

inspect(docs)

toSpace <- content_transformer(function (x , pattern ) gsub(pattern, " ", x))

# Create a corpus
corpus <- Corpus(VectorSource(docs))

# Preprocessing steps
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, removeWords, c("blabla1", "blabla2"))
corpus <- tm_map(corpus, stripWhitespace)

# Term Document Matrix
dtm <- DocumentTermMatrix(corpus)

# Find the most frequent terms
freq_terms <- findFreqTerms(dtm, lowfreq = 4)

# Find associations with a specific term
associations <- findAssocs(dtm, terms = "freedom", corlimit = 0.3)

# Create a data frame of word frequencies
word_freq <- data.frame(word = colnames(dtm), freq = colSums(as.matrix(dtm)))

# Sort the word frequencies
word_freq <- word_freq[order(word_freq$freq, decreasing = TRUE), ]

# Display the top 10 words by frequency and save to a csv
SumText <- head(word_freq, 10)
write_csv(SumText, "CV Word Summary.csv")

# Display the top 20 words by frequency and save to a csv
SumText_20 <- head(word_freq, 20)
write_csv(SumText, "CV Word Summary_20.csv")

# Create a word cloud
wordcloud(words = word_freq$word, freq = word_freq$freq, min.freq = 1,
          max.words = 200, random.order = FALSE, rot.per = 0.35,
          colors = brewer.pal(8, "Dark2"))

# Create barplots for the most frequent words
barplot(word_freq[1:10, "freq"], las = 2, names.arg = word_freq[1:10, "word"],
        col = "lightblue", main = "Most frequent words",
        ylab = "Word frequencies")

barplot(word_freq[1:20, "freq"], las = 2, names.arg = word_freq[1:20, "word"],
        col = "lightblue", main = "Most frequent words",
        ylab = "Word frequencies")


