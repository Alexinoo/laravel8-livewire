<div>
    @include('livewire.Student.create')
    <section>
     <div class="container">
         <div class="row">
             <div class="col-md-12">
                 @if(Session::has('message'))
                     <div class="alert alert-success">{{session('message')}}</div>
                 @endif
                 <div class="card mt-3">
                     <div class="card-header text-center">
                         <h4>All Students   
                             <button type="button" 
                          data-bs-toggle="modal" data-bs-target="#studentModal"
                              class="btn btn-primary float-end">Add</button>
                        </h4>                         
                       
                     </div>
                     <div class="card-body">
                         <table class="table table-striped">
                             <thead>
                                 <tr>
                                     <th>ID</th>
                                     <th>First Name</th>
                                     <th>Last Name</th>
                                     <th>Email</th>
                                     <th>Phone</th>
                                 </tr>
                             </thead>
                             <tbody>
                                 @php($i = 1)
                                 @foreach($students as $key => $student)
                                  <tr>
                                    <td>{{ $i++ }}</td>      
                                    <td>{{ $student->firstname}}</td>      
                                    <td>{{ $student->lastname}}</td>      
                                    <td>{{ $student->email}}</td>      
                                    <td>{{ $student->phone}}</td>      
                                </tr>   
                                 @endforeach
                             </tbody>
                         </table>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </section>
</div>
