library(ggplot2)


set.seed(42)


time <- seq(0, 23, by = 1)


glucocorticoid_levels <- 10 * dnorm(time, mean = 8, sd = 2) + 
  5 * dnorm(time, mean = 17, sd = 3)


metabolism_levels <- 8 * dnorm(time, mean = 10, sd = 2) + 
  4 * dnorm(time, mean = 19, sd = 3)


data <- data.frame(time = time, 
                   glucocorticoid_levels = glucocorticoid_levels, 
                   metabolism_levels = metabolism_levels)

ggplot(data , aes(x = time)) +
  geom_line(aes(y = glucocorticoid_levels, color = "Glucocorticoid Receptor Expression"), size = 1.2) +
  geom_line(aes(y = metabolism_levels, color = "Metabolism-Related Gene Expression"), linetype = "dashed", size = 1.2) +
  labs(title = "Simulated Glucocorticoid Receptor and Metabolism Gene Expression Over 24 Hours",
       x = "Time of Day (hours)", 
       y = "Expression Level (Arbitrary Units)") +
  scale_color_manual(values = c("Glucocorticoid Receptor Expression" = "purple", 
                                "Metabolism-Related Gene Expression" = "orange")) +
  scale_x_continuous(breaks = seq(0, 24, by = 6), labels = c("00:00", "06:00", "12:00", "18:00", "00:00")) +
  theme_minimal() +
  theme(legend.title = element_blank())
