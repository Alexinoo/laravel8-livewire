<div>
    <style>
        nav svg {
            height: 20px;
        }
    </style>
 <section>
     <div class="container">
         <div class="row">
             <div class="col-md-12">
                 <div class="card mt-3">
                     <div class="card-header text-center">
                         <h4>All Users</h4>
                     </div>
                     <div class="card-body">
                         <table class="table table-striped">
                             <thead>
                                 <tr>
                                     <th>ID</th>
                                     <th>Name</th>
                                     <th>Email</th>
                                 </tr>
                             </thead>
                             <tbody>
                                 @foreach($users as $key => $user)
                                  <tr>
                                    <td>{{ $user->id}}</td>      
                                    <td>{{ $user->name}}</td>      
                                    <td>{{ $user->email}}</td>      
                                </tr>   
                                 @endforeach
                             </tbody>
                         </table>
                         {{ $users->links()}}
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </section>
</div>
