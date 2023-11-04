nucleotide_count <- function(input) {
  nuc <- unlist(strsplit(input, ""))
  
  #Need to ensure that only A, C, G, T, and no entry are permitted
  valid_bases <- c("A", "C", "G", "T", "")
  if (!all(nuc %in% valid_bases)) {
    stop("Invalid DNA sequence. The sequence should only contain A, C, G, or T.")
  }
  
  #create vectors for A, C, G, T
  A = 0
  C = 0
  G = 0
  T = 0
  
  #iterate through the entry to count the occurrences 
  for(i in nuc){
    if(i == "A"){
      A = A + 1
    }else if(i == "C"){
      C = C + 1
    }else if(i == "G"){
      G = G + 1
    }else if(i == "T"){
      T = T + 1
    }
  }
  
  #add counts to a list and print
  DNASeq <- list("A" = A, "C" = C, "G" = G, "T" = T)
  print(DNASeq)
  
}


#TESTING
library(testthat)
# When comparing lists, all.equal expects the objects to be in the same order
# This expectation instead checks that a) the set of names are the same and
# b) each named object is equal
expect_equal_pairs <- function(object, expected) {
  expect_equal(sort(names(object)),
               sort(names(expected)),
               info = "names in lists differ"
  )
  for (name in names(expected)) {
    expect_equal(object[name], expected[name], info = "list element missing")
  }
}
test_that("all zeros for empty strand", {
  expect_equal_pairs(
    nucleotide_count(""),
    list(
      A = 0,
      C = 0,
      G = 0,
      T = 0
    )
  )
})
test_that("3 zeros & 1 count for strand with a single repeated nucleotide", {
  expect_equal_pairs(
    nucleotide_count("GGGGGGG"),
    list(
      A = 0,
      C = 0,
      G = 7,
      T = 0
    )
  )
})
test_that("correct counts for strand with multiple nucleotides", {
  expect_equal_pairs(
    nucleotide_count(
      "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
    ),
    list(
      A = 20,
      C = 12,
      G = 17,
      T = 21
    )
  )
})
test_that("error for strand with invalid nucleotides", {
  expect_error(nucleotide_count("AGXXACT"))
})
