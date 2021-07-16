test_that("rename_expenses_to_fr works", {
  
  # Test 1
  test_1 <- tibble(
    object = sample(x = 1: 10, size = 20, replace = TRUE),
    real_projected = c(rep("Real", 10), rep("Projected", 10)),
    paid_pending = c(rep("Paid", 10), NA, rep("Pending", 9)),
    desc = sample(x = 1: 10, size = 20, replace = TRUE),
    society = sample(x = 1: 10, size = 20, replace = TRUE),
    paymaster = sample(x = 1: 10, size = 20, replace = TRUE),
    amount =  sample(x = 1: 10, size = 20, replace = TRUE)
  )
  
  expect_equal(test_1 %>% rename_expenses_to_fr() %>% names(),
               c("Poste de d\u00e9pense", "R\u00e9el ou pr\u00e9visionnel", "Pay\u00e9 ou en attente", 
                 "Desc", "Destinataire", "Payeur", "Montant"))
  
  expect_equal(test_1 %>% rename_expenses_to_fr() %>% select("R\u00e9el ou pr\u00e9visionnel") %>% pull(),
               c("R\u00e9el", "R\u00e9el", "R\u00e9el", "R\u00e9el", "R\u00e9el", "R\u00e9el", "R\u00e9el", 
                 "R\u00e9el", "R\u00e9el", "R\u00e9el", "Pr\u00e9visionnel", "Pr\u00e9visionnel", 
                 "Pr\u00e9visionnel", "Pr\u00e9visionnel", "Pr\u00e9visionnel", "Pr\u00e9visionnel", 
                 "Pr\u00e9visionnel", "Pr\u00e9visionnel", "Pr\u00e9visionnel", "Pr\u00e9visionnel"))
  
  expect_equal(test_1 %>% rename_expenses_to_fr() %>% select("Pay\u00e9 ou en attente") %>% pull(),
               c("Pay\u00e9", "Pay\u00e9", "Pay\u00e9", "Pay\u00e9", "Pay\u00e9", "Pay\u00e9", "Pay\u00e9", 
                 "Pay\u00e9", "Pay\u00e9", "Pay\u00e9", NA, "En attente", "En attente", 
                 "En attente", "En attente", "En attente", "En attente", "En attente", 
                 "En attente", "En attente"))
  
  # Test 1
  test_2 <- tibble(
    random = sample(x = 1: 10, size = 20, replace = TRUE),
    real_projected = sample(x = 1: 10, size = 20, replace = TRUE),
    paid_pending = sample(x = 1: 10, size = 20, replace = TRUE),
    desc = sample(x = 1: 10, size = 20, replace = TRUE),
    nothing = sample(x = 1: 10, size = 20, replace = TRUE),
    paymaster = sample(x = 1: 10, size = 20, replace = TRUE),
    amount =  sample(x = 1: 10, size = 20, replace = TRUE)
  )
  
  expect_error(test_2 %>% rename_expenses_to_fr() %>% names())
  
})
