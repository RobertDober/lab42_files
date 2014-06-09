#

# Lab42::Files QED 

Creating a lazy enumerator is easy, e.g.

```ruby
  Dir.enum_for( :glob, "**" ).lazy
```

However the yielded objects are just strings, not something we find too useful.

Assuming the existance of the following directory structure

```ruby
    with_dir_structure <<-EOS
    ├── b
    │   ├── one
    │   ├── two
    │   └── three
    ├── bin
    ├── boxes
    │   └── centos64
    └── work
        ├── lab42
        │   ├── lib
        └── tutorial
    EOS
```

