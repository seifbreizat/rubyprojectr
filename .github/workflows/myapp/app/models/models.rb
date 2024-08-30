rails generate model User email:string
rails generate model Subscription user:references stripe_subscription_id:string
rails db:migrate 
   
