<?php

namespace App\Http\Livewire;

use App\Models\Image;
use Livewire\Component;
use Livewire\WithFileUploads;

class Images extends Component
{
    public $images = [];

    use WithFileUploads;
    public function uploadImages()
    {

        // loop through and store the images in the public folder
        foreach ($this->images as $key => $image) {

            $this->images[$key] = $image->store('images', 'public');
        }

        $this->images = json_encode($this->images);

        // Store the image filename
        Image::create(['filename' => $this->images]);

        // Session flash
        session()->flash('message', 'Images uploaded successfully');

        // Reset form
        $this->emit('imagesUploaded');
    }

    public function render()
    {
        return view('livewire.images');
    }
}
