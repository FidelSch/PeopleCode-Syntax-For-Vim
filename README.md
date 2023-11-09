# Syntax highlighting for PeopleCode 
This is and independent proyect, but PRs are welcome!

## Installation
### As a plugin (Recommended)
Now compatible with the plugin manager of your choice!<br>
Recommended: [vim-plug](https://github.com/junegunn/vim-plug)

### Manually
First, clone the repository to an empty directory on your machine:<br>
```sh
mkdir Peoplecode-Syntax-For-Vim
cd Peoplecode-Syntax-For-Vim
git init && git pull https://github.com/FidelSch/PeopleCode-Syntax-For-Vim.git 
```

Then, copy the files under each directory to `~/.vim/<folder-name>`<br>
You may have to create them if they don't exist.
```sh
mkdir ~/.vim/syntax
cp Peoplecode-Syntax-For-Vim/syntax/* ~/.vim/syntax/
```

The next time you open a .ppl file, it should be highlighted accordingly.<br>
Happy coding!