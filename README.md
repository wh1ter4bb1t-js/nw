# nw

nw(new checkout) is a cli tool focused to help developers who work with .env files and node modules have a better experience while working with git worktrees

## Download

```bash
git clone https://github.com/wh1ter4bb1t-js/nw
cd nw
sudo make
```

## Usage
  ### How it works
  
  nw checks an `environtment directory` of your choice to find if there is a directory inside with a similar name to the name of the parent folder of your worktree. If there is such a directory, a fuzzy finder will appear for you to check which project .env files you would like. It will then go ahead and copy over those .env files to your current worktreee. If there is a `node_modules` folder inside it will copy over those as well. If there is not any `node_modules` it will go ahead and run an `npm install` in your worktree and copy over the newly created `node_modules` to your `environment directory` so that the next time a worktree is created that same `node_modules` folder can be copied over removing the need to run `npm install` again.

  ### Example File Tree Structure
    Environment Directory
      /business/.dotfiles
        -> test
          -> .env.production
          -> .env.development
          -> node_modules
    Git Directory
      /business/test-project.git
        -> new_worktree


 when you run nw in the `new_worktree` it will look to /business/.dotfiles to see if anything is a sub string to test-project.git. In this case the `test` directory. it will then copy over all the files inside of the `test` directory to the `new_worktree` folder
    

## Flags

  - f: the `environment directory` that you want the nw to check against
  - h: for help with how to use this tool

## Configs

A Config file should be created so that nw can default to an `environment directory` of your choice.
this can be done by creating the file

```bash
$HOME/.config/nw/config
```
### Example Config
```
folders="$HOME/business/.dotfiles"
```

## Dependencies

* fzf

## FAQ

- Why fzf instead of automatically copying over the files to the worktree?


  This was a concious decision to allow for users to have multiple completely different environments that they can work on inside of each worktree.

