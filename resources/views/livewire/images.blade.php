<div>
   <section class="pt-5">
       <div class="container">
           <div class="row">
               <div class="col-md-6 offset-md-3">
                   @if(session()->has('message'))
                       <div class="alert alert-success">{{session('message')}}</div>
                   @endif
                   <div class="card">
                       <div class="card-header">
                           <h5>
                               Upload Images
                           </h5>
                       </div>
                       <div class="card-body">
                           <form id="upload-images" enctype="multipart/form-data" wire:submit.prevent = uploadImages()>
                            <div class="form-group mb-3">
                                <label for="images">Choose Images</label>
                                <input type="file" name="images" id="images" class="form-control" wire:model = "images" multiple/>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary w-100">Upload</button>
                            </div>
                        </form>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </section>
</div>
