# Jungle
A mini e-commerce application to sell plants. 
Built with Rails 6.1, and made for educational purposes in order to learn Ruby and Rails!

# Appliation Previews

### Homepage
![homepage-1](https://raw.githubusercontent.com/nbar72/jungle-rails/master/docs/homepage-1.png)
![homepage-2](https://raw.githubusercontent.com/nbar72/jungle-rails/master/docs/homepage-2.png)

### Cart View
![cart-page](https://raw.githubusercontent.com/nbar72/jungle-rails/master/docs/cart-page.png)

### Individual Product Page
![product-page](https://raw.githubusercontent.com/nbar72/jungle-rails/master/docs/product-page.png)

### Admin Pages: Dashboard & Product Details
![admin-dashboard](https://raw.githubusercontent.com/nbar72/jungle-rails/master/docs/admin-dashboard.png)
![admin-product-details](https://raw.githubusercontent.com/nbar72/jungle-rails/master/docs/admin-product-details.png)



## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
