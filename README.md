# lab42_files

Files but Lazy

## Lazy Directories

While this can be easily done in some few lines like

```ruby
    Enumerator.new do | yielder |
      Dir.glob("**").each do | file |
        yielder << file
      end
    end
```

But using the `Lab42::Files` methods is much less verbose and more feature rich.

Please see the [QED](http://rubyworks.github.io/qed/) demos [here](https://github.com/RobertDober/lab42_files/blob/master/demo) for detailed explainations and specifications of the implemented features

