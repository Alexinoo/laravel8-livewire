<!-- Modal -->
<div class="modal fade" id="studentModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" wire:ignore.self>
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New Student</h5>     
      </div>
      <div class="modal-body">
      <form action="">
          <div class="form-group mb-3">
            <label for="">First name : </label>
            <input type="text" name="firstname" id="" class="form-control" wire:model = "firstname"/>
          </div>
          <div class="form-group mb-3">
            <label for="">Last name : </label>
            <input type="text" name="lastname" id="" class="form-control" wire:model = "lastname"/>
          </div>
          <div class="form-group mb-3">
            <label for="">Email : </label>
            <input type="email" name="email" id="" class="form-control" wire:model = "email"/>
          </div>
          <div class="form-group mb-3">
            <label for="">Phone : </label>
            <input type="text" name="phone" id="" class="form-control" wire:model = "phone"/>
          </div>
      </form>
      </div>
      <div class="modal-footer">
         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
         <button type="button" class="btn btn-primary" wire:click.prevent="store()">Add Student</button>
      </div>
    </div>
  </div>
</div>