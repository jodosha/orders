# Orders

This is a demo app to show how to use together the following gems:

  * `hanami` `~> 1.3`
  * `hanami-validations` `2.0.0.alpha1` (which depends on `dry-validation` `~> 1.0`)
  * `rom` `~> 5.0`

## Setup

How to get the code:

```
$ git clone https://github.com/jodosha/orders.git
$ cd orders
$ bundle
```

How to run the development server:

```
$ bundle exec hanami server
```

## Manual testing

  1. Visit [http://localhost:2300](http://localhost:2300)
  1. Try to fill the signin form with invalid data (missing email, or missing password)
  1. Try to fill the signin form with valid data (any email/password will work)

---

Explore Hanami [guides](https://guides.hanamirb.org/), [API docs](http://docs.hanamirb.org/1.3.1/), or jump in [chat](http://chat.hanamirb.org) for help. Enjoy! 🌸
