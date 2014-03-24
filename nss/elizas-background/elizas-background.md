# Eliza's Background

## Who Am I?

I'm Eliza Brock, Software Engineer.

![](elizas-background-1-eliza.jpg "Eliza")

~~~

I went to highschool in Nashville, at Hume-Fogg.

![](elizas-background-2-hume-fogg.jpg "Hume-Fogg")

~~~

And then, attended Rose-Hulman, a small yet well-regarded engineering school in Terre-Haute, IN.

I graduated with a double major in Software Engineering and Computer Science.

![](elizas-background-3-rose-hulman.png "Rose-Hulman")

~~~

After 5 delightless winters in Indiana, I was terribly homesick for Nashville.  I spent a lot of time fantasizing about returning to Centennial Park.

![](elizas-background-4-nashville.jpg "The Parthenon")

~~~

I then started Eliza Brock Software and, a few years later, started teaching at Nashville Software School.

![](elizas-background-5-eliza-brock-software.png "Eliza Brock Software")

~~~

Code shows up in these slides!

```ruby
class Slide < Struct.new(:number, :classes, :html)
  def extract_title
    return @title if @title
    html.sub!(/<h(\d)>(.*)<\/h\1>/) { @title = $2; "" }
    @title
  end
end
```
