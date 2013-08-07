VIMRC
=====

This is my `vimrc` configuration.  There are many like it, but this one is mine.

If you intend to clone this for your one file, you may want to take a look at `mappings.vim`.
It has an external dependency on pandoc.

To compile vim from source, we'll need some options like this:

~~~
./configure --enable-pythoninterp --with-python-config-dir=/usr/lib64/python2.6/config --with-features=big
~~~

In order for the PHP debugger to work, VIM also needs :sign command.
There are instructions [here](http://developers.blog.box.com/2007/06/20/how-to-debug-php-with-vim-and-xdebug-on-linux/) for how to enable that.


## Maintainence ##

To add new plugins and stuff

    git submodule add http://github.com/plugin/plugin.git .vim/bundle/plugin
    git add .


