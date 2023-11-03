# Syntax highlighting for PeopleCode 
This is and independent proyect, but PRs are welcome!

## Installation
Clone the repository, and copy people.vim to your ~/.vim/syntax folder.
Also copy everything under autoload/ to your ~/.vim/autoload folder

Lastly, add the following to your .vimrc file:
```vim
au BufRead,BufNewFile *.ppl set filetype=people
```
The next time you open a .ppl file, it should be highlighted accordingly
Happy coding!