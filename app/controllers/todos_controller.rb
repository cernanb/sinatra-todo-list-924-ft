class TodosController < ApplicationController 
    
    get "/todos" do 
        @all_content = Todo.all
        erb :"todos/index" 
    end 

    get '/todos/new' do

        erb :"todos/new"
    end
     
    get '/todos/:id' do 
        id = params["id"].to_i
        @todo = Todo.find_by_id(id)

        if @todo
            erb :"todos/show"
        else
            redirect "/todos"
        end
        
    end

    post '/todos' do
        todo = Todo.new(params)
        if todo.save
            redirect "/todos/#{todo.id}"
        else
            redirect "/todos/new"
        end

    end


  
end 