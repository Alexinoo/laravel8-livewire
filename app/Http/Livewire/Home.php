<?php

namespace App\Http\Livewire;

use Livewire\Component;

class Home extends Component
{
    public $name;

    // mount() - Is a hook method that is executed befor rendering the view
    public function mount($name)
    {
        $this->name = $name;
    }

    public function render()
    {
        return view('livewire.home');
    }
}
