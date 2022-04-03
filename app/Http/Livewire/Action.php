<?php

namespace App\Http\Livewire;

use Livewire\Component;

class Action extends Component
{
    // ON CLICK
    public $sum;

    // ONKEYDOWNENTER
    public $message;

    // FORM SUBMIT
    public $num1;
    public $num2;
    public $result;



    public function addTwoNumbers($num1, $num2)
    {
        $this->sum = $num1 + $num2;
    }

    public function displayMsg($msg)
    {
        $this->message = $msg;
    }

    public function getSum()
    {
        $this->result = $this->num1  + $this->num2;
    }

    public function render()
    {
        return view('livewire.action');
    }
}
