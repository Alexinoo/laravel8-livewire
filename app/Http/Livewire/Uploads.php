<?php

namespace App\Http\Livewire;

use App\Models\Upload;
use Livewire\Component;
use Livewire\WithFileUploads;

class Uploads extends Component
{
    public $title;
    public $filename;

    use WithFileUploads;

    public function fileUpload()
    {
        $validatedData = $this->validate([
            'title' => 'required',
            'filename' => 'required'
        ]);

        $filename =  $this->filename->store('files', 'public');

        $validatedData['filename'] = $filename;

        // store file details
        Upload::create($validatedData);
        session()->flash('message', 'File uploaded successfully');
        $this->emit('FileUploaded');
    }

    public function render()
    {
        return view('livewire.uploads');
    }
}
