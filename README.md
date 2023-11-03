# Syntax highlighting for PeopleCode 
This is and independent proyect, but PRs are welcome!

## Installation
Clone the repository, and copy `syntax/people.vim` to your `~/.vim/syntax` folder.<br>
Also copy everything under `autoload/` to your `~/.vim/autoload` folder.<br>

Lastly, add the following to your .vimrc file:
```vim
au BufRead,BufNewFile *.ppl set filetype=people
```
The next time you open a .ppl file, it should be highlighted accordingly.<br>
Happy coding!