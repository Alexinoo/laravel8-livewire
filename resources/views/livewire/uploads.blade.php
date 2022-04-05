<div>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                @if(session()->has('message'))
                    <div class="alert alert-success">{{session('message')}}</div>
                @endif
                <div class="card mt-5">
                    <div class="card-header" class="text-center">
                        <h3>
                            File Upload
                        </h3>
                    </div>
                    <div class="card-body">
                        <form id="file-upload" enctype="multipart/form-data" wire:submit.prevent = "fileUpload()">
                        <div class="form-group mb-3">
                           <label for="title">Title</label>
                           <input type="text" name="title" id="" class="form-control" wire:model = "title"/>
                           @error('title')
                               <span class="text-danger">{{ $message}}</span>
                           @enderror
                        </div>
                        <div class="form-group mb-3">
                           <label for="filename">Filename</label>
                           <input type="file" name="filename" id="" class="form-control" wire:model = "filename"/>
                            @error('filename')
                               <span class="text-danger">{{ $message}}</span>
                           @enderror
                        </div>
                        <div class="form-group">                       
                           <input type="submit" value="Upload" class="btn btn-primary w-100"  />
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</div>
