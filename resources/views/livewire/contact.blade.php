<div>

    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card mt-5">
                    <div class="card-header">
                        <h3>Contact</h3>
                    </div>
                    <div class="card-body">
                        <form action="" wire:submit.prevent = "submitForm">
                            <div class="form-group mb-3">
                                <label for="name">Name</label>
                                <input type="text" name="name" id="name" class="form-control" placeholder="Enter name"  wire:model="name"/>
                                @error('name')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            <div class="form-group mb-3">
                                <label for="email">Email</label>
                                <input type="email" name="email" id="email" class="form-control" placeholder="Enter email"  wire:model="email"/>
                                  @error('email')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            <div class="form-group mb-3">
                                <label for="phone">Phone</label>
                                <input type="text" name="phone" id="phone" class="form-control" placeholder="Enter phone"  wire:model="phone"/>
                                  @error('phone')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            
                            <div class="form-group mb-3">
                                <label for="message">Message</label>
                               <textarea name="message" id="message" rows="3" class="form-control" wire:model="message"></textarea>
                                 @error('message')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <button type="submit"class="btn btn-primary w-100">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
 