<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\User as Users;
use Livewire\WithPagination;

class User extends Component
{
    use WithPagination;

    // public $users;

    public function render()
    {
        // $this->users = Users::all();

        $users = Users::paginate(10);

        return view('livewire.user', compact('users'));
    }
}
