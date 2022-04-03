<?php

namespace App\Http\Livewire;

use Livewire\Component;

class Product extends Component
{
    // Product Attributes
    public $title;
    public $name;
    public $infos = [];

    // mount() - Is the first hook method; -EXECUTED BEFORE THE RENDER METHOD
    public function mount()
    {
        $this->infos[] = "Application is mounting.....";
    }

    // hidrate() - Is the second hook method;  --EXECUTES ON EVERY REQUEST TO THE SERVER
    public function hidrate()
    {
        $this->infos[] = "Application is hydrating.....";
    }

    // updating() - Is the third hook method;  --TRIGGERS BEFORE ANY OF THE PROPERTIES ARE TO BE UPDATED
    public function updating($name, $value)
    {
        $this->infos[] = "Application is updating.....";
    }

    // updated() - Is the fourth hook method;  --TRIGGERS WHEN THE PROPERTIES ARE  UPDATED
    public function updated($name, $value)
    {
        $this->infos[] = "Application is updated.....";
    }

    // updating() - Is the fifth hook method;  --TRIGGERS WHEN THE PROPERTIES ARE  UPDATED
    public function updatingName()
    {
        $this->infos[] = "Application is updating name property.....";
    }

    // updatedName() - Is the fifth hook method;  --TRIGGERS WHEN THE NAME PROPERTY HAS BEEN UPDATED
    public function updatedName()
    {
        $this->infos[] = "Application has updated name property.....";
    }


    public function render()
    {
        return view('livewire.product');
    }
}
