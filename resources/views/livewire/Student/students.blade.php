<div>
    @include('livewire.Student.create')
    @include('livewire.Student.update')
    <section>
        <style>
            nav svg {
                max-height: 20px;
            }
        </style>
     <div class="container">
         <div class="row">
             <div class="col-md-12">
                 @if(Session::has('message'))
                     <div class="alert alert-success">{{session('message')}}</div>
                 @endif
                 <div class="card mt-3">
                     <div class="card-header text-center">
                         <div class="row">
                             <div class="col-md-8">
                                   <h4>All Students   
                                    <button type="button" 
                                data-bs-toggle="modal" data-bs-target="#addStudentModal"
                                    class="btn btn-primary float-end">Add</button>
                                </h4>
                             </div>
                             <div class="col-md-4">
                                 <input type="text" name="" id="" class="form-control" placeholder="Search.." wire:model="searchTerm"/>
                             </div>
                         </div>
                                               
                       
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
                                     <th>Action</th>
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
                                    <td>
                                        <button type="button" class="btn btn-info" data-bs-target="#updateStudentModal" data-bs-toggle="modal"  wire:click.prevent = "edit({{$student->id}})">Edit</button>
                                    </td>    
                                    <td>
                                        <button type="button" class="btn btn-danger"  wire:click.prevent = "delete({{$student->id}})">Delete</button>
                                    </td>    
                                </tr>   
                                 @endforeach
                             </tbody>
                         </table>
                         {{$students->links()}}
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </section>
</div>
