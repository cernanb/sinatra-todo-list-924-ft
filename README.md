ReST

Representational state transfer

HTTP Verb | Route | Action
GET /todos index
GET /todos/:id show
GET /todos/new new
GET /todos/:id/edit edit
PUT/PATCH /todos/:id update
POST /todos create
DELETE /todos/:id destroy

MVC

model
logic - communicates with our database

view
displays the data to the client (browser)

controller
interaction between the model and view
accepts web requests from the client (browser)
communicates with the model to get the data
passes the data to the view to render to the page
