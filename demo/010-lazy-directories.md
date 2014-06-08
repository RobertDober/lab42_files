#

# Lab42::Files QED 

Creating a lazy enumerator is easy, e.g.

```ruby
    Enumerator.new do | yielder |
      Dir.glob("**").each do | file |
        yielder << file
      end
    end.lazy
```

However the yielded objects are just strings, not something we find too useful.

