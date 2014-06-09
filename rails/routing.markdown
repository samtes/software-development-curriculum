Router
======
General Defenition
------------------
A router is a device that forwards data packets between computer networks. This creates an overlay internetwork, as a router is connected to two or more data lines from different networks. When a data packet comes in one of the lines, the router reads the address information in the packet to determine its ultimate destination. Then, using information in its routing table or routing policy, it directs the packet to the next network on its journey. Routers perform the "traffic directing" functions on the Internet. A data packet is typically forwarded from one router to another through the networks that constitute the internetwork until it reaches its destination node.

In this case, the most familiar type of routers are home and small office routers that simply pass data, such as web pages, email, IM, and videos between the home computers and the Internet. An example of a router would be the owner's cable or DSL modem, which connects to the Internet through an ISP. More sophisticated routers, such as enterprise routers, connect large business or ISP networks up to the powerful core routers that forward data at high speed along the optical fiber lines of the Internet backbone. Though routers are typically dedicated hardware devices, use of software-based routers has grown increasingly common.

In the same way, just like the network routing device, software applications also have a routing file to impliment similar concept for routing requests coming from the browser in the form of URL to the the right action or method in the model.

Rails Router
------------
Routers in Rails are, as their name indicates are dispathsers. They take in the URL and their associated verbs which is sent from the browser and route it to the correct action(method) in the coorisponding controller. They can also be used to generate paths and URLs to avoide the need to hardcode strings in the views. Rails use the CRUD verbs format. 

CRUD, Verbs, and Actions
------------------------
In Rails, a resourceful route provides a mapping between HTTP verbs and URLs to controller actions. By convention, each action also maps to particular CRUD operations in a database. A single entry in the routing file, such as: 'resources :photos' creates seven different routes in your application, all mapping to the Photos controller:

| HTTP Verb | Path             | Controller#Action | Used for                                     |
|-----------|------------------|-------------------|----------------------------------------------|
| GET       | /photos          | photos#index      | display a list of all photos                 |
| GET       | /photos/new      | photos#new        | return an HTML form for creating a new photo |
| POST      | /photos          | photos#create     | create a new photo                           |
| GET       | /photos/:id      | photos#show       | display a specific photo                     |
| GET       | /photos/:id/edit | photos#edit       | return an HTML form for editing a photo      |
| PATCH/PUT | /photos/:id      | photos#update     | update a specific photo                      |
| DELETE    | /photos/:id      | photos#destroy    | delete a specific photo                      |

And whenever we want to see the routs that are created created, we can run the 'rake routes' command in the command line in the project directory and we can see all the routes. 

Resources:
----------
General concept of routers: http://en.wikipedia.org/wiki/Router_(computing)

Detailed explanation about Rails Routers can be found in the rails documantation: http://guides.rubyonrails.org/routing.html

CRUD verbs and actions for rails: http://guides.rubyonrails.org/routing.html#crud-verbs-and-actions

Further Reading:
----------------

Very helpful article about rails routers can be found: http://tutorials.jumpstartlab.com/topics/routes/router.html
