Rails Router
------------
Routers are, as their name indicates dispathsers. They take in the URL which is sent from the browser and route it to the correct action(method) in the coorisponding controller. They can also be used to generate paths and URLs by to avoide the need to hardcode strings in the views.

Connecting URLs to Code
-----------------------
When your Rails application receives an incoming request for:
  GET /patients/17
it asks the router to match it to a controller action. If the first matching route is:
  get '/patients/:id', to: 'patients#show'

There is a detailed explanation about Rails Routers in the rails documantation: http://guides.rubyonrails.org/routing.html
http://tutorials.jumpstartlab.com/topics/routes/router.html
