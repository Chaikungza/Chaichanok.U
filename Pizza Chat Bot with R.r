print("Good Day to you")
print("Welcome to our Pizza")
print("What should we call you")
cus_name <- readLines("stdin", n=1)
print(paste("OK",cus_name))
print(paste("What would you like to eat for today",cus_name))
con_order <- 1
price <- 0
while (con_order == 1) {
menu <- c("1=Pizza","2=Soup","3=Appetziers")
print(menu)
order_no <- readLines("stdin", n=1)
if(order_no ==1){
  print("We have the best Pizza for you")
  print("Please choose the menu")
  pizza_menu <- c('1= Hawaiian > 199 THB',
                  '2= Seafood > 219 THB Deluxe',
                  '3= Tom Yum Kung > 259 THB')
  print(pizza_menu)

pizza_price <- c(199,219,259)
pizza_no <- readLines("stdin", n=1)
print("How many quantity do you order")
pizza_qty <- as.numeric(readLines("stdin", n=1))
  if(pizza_no ==1){
    Total_p <- pizza_price[1]*pizza_qty
    price <- Total_p + price
  }else { 
  if(pizza_no ==2){
    Total_p <- pizza_price[2]*pizza_qty
    price <- Total_p + price
  }else {
    Total_p <- pizza_price[3]*pizza_qty
    price <- Total_p + price
  }
}
} else{if(order_no==2){
  print("Good Soup is the best side dish")
  print("Please choose the menu")
  soup_menu <- c('1= Corn Soup >  59 THB',
                '2= Pumkin Soup > 69 THB',
                '3= Onion Soup >  69 THB')
  print(soup_menu)
  soup_price <- c(59,69,69)
soup_no <- readLines("stdin", n=1)
print("How many quantity do you order")
soup_qty <- as.numeric(readLines("stdin", n=1))
  if(soup_no ==1){
    Total_p <- soup_price[1]*soup_qty
    price <- Total_p + price
  }else { 
  if(soup_no ==2){
    Total_p <- soup_price[2]*soup_qty
    price <- Total_p + price
  }else {
    Total_p <- soup_price[3]*soup_qty
    price <- Total_p + price
  }
  }
} else{
  if(order_no==3){
  print("We hope you will like it")
  print("Please choose the menu")
  app_menu <- c('1= French Fries >  59 THB',
                '2= Chicken Pop > 59 THB',
                '3= Caesar Salad >  79 THB')
  print(app_menu)
  app_price <- c(59,69,79)
app_no <- readLines("stdin", n=1)
print("How many quantity do you order")
app_qty <- as.numeric(readLines("stdin", n=1))
  if(app_no ==1){
    Total_p <- app_price[1]*app_qty
    price <- Total_p + price
  }else { 
  if(app_no ==2){
    Total_p <- app_price[2]*app_qty
    price <- Total_p + price
  }else {
    Total_p <- app_price[3]*app_qty
    price <- Total_p + price
        }
        }
                }
      }
}
print(paste("Total Price",price,"THB"))
print("You would like to more order ? ")
go_to <- c('1=Continue order','2=Check out')
print(go_to)
go_no <- readLines("stdin", n=1)
con_order = go_no
}
 if(go_no==2){
  e_add <- 2
  while (e_add ==2) {
  print("Please input delivery address")
  address <-readLines("stdin", n=1)
  print("Please input mobile phone no.")
  phone <-readLines("stdin", n=1)
  print("Summary information")
  print(paste("Total Price",price,"THB"))
  print(paste("Your address:",address))
  print(paste("Your telephone:",phone))
  print("Please confirm your information: 1: Confirm 2: Back to edit address")
  confirm <-readLines("stdin", n=1)
  e_add <- confirm
} 
  print("Your order is successful")
  print("We will delivery to you by 30 mins")
  print("Thank you for your order & Enjoy the meal")
}
