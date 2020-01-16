# Karl, it's your past self, and you should README
- Local storage: /Users/flatironschool/Flatirons/3Mod/playground/pokemon-vue
- [GitHub Repository](https://github.com/CarlKarlQarl/pokemon-tm-movelist-backend)
- [Heroku Repository](https://dashboard.heroku.com/apps/pokemon-tm-movelist-backend)

# Heroku functions and set-up
I followed the standard deployment steps on Heroku, the Heroku project is connected to the GitHub repository, and is automatically deploying off the GitHub's master branch.

The deployment steps at the time were basically:
1. Install Heroku CLI
    * `$ heroku login`
1. Clone the repository
    * `$ heroku git:clone -a pokemon-tm-movelist-backend`
    * `$ cd pokemon-tm-movelist-backend`
1. Deploy your changes
    * `$ git add .`
    * `$ git commit -am "make it better"`
    * `$ git push heroku master`

But I basically only did the login, did a `heroku git:remote -a pokemon-tm-movelist-backend` to add the Heroku to the remote list, and then did `git push heroku master`

# Heroku commands
To run rake commands on the Heroku deployment, use:
- `$ heroku run rails db:migrate`
- `$ heroku run rails db:seed`