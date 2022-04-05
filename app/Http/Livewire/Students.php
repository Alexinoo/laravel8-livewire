<?php

namespace App\Http\Livewire;

use App\Models\Student;
use Livewire\Component;

class Students extends Component
{
    public $ids;
    public $firstname;
    public $lastname;
    public $email;
    public $phone;
    public $searchTerm;

    public function resetInputFields()
    {
        $this->firstname = '';
        $this->lastname = '';
        $this->email = '';
        $this->phone = '';
    }
    public function store()
    {
        $validatedData = $this->validate([
            'firstname' => 'required',
            'lastname' => 'required',
            'email' => 'required|email',
            'phone' => 'required'
        ]);
        Student::create($validatedData);
        session()->flash('message', 'Student Added successfully');
        $this->resetInputFields();
        $this->emit('StudentAdded');
    }
    public function edit($id)
    {
        $student = Student::where('id', $id)->first();

        // populate the input fields
        $this->ids = $student->id;
        $this->firstname = $student->firstname;
        $this->lastname = $student->lastname;
        $this->email = $student->email;
        $this->phone = $student->phone;
    }
    public function update()
    {
        //Validate all inputs required
        $this->validate([
            'firstname' => 'required',
            'lastname' => 'required',
            'email' => 'required|email',
            'phone' => 'required'
        ]);


        if ($this->ids) {
            $student = Student::find($this->ids);
            $student->update([
                'firstname' => $this->firstname,
                'lastname' => $this->lastname,
                'email' => $this->email,
                'phone' => $this->phone,
            ]);

            // Show update flash
            session()->flash('message', 'Student Updated successfully');
            $this->resetInputFields();
            $this->emit('StudentUpdated');
        }
    }

    public function delete($id)
    {

        $student = Student::find($id);
        $student->delete();

        // Show delete flash
        session()->flash('message', 'Student Deleted successfully');
    }

    public function render()
    {
        $searchTerm = '%' . $this->searchTerm . '%';
        $students = Student::where('firstname', 'LIKE',  $searchTerm)
            ->orWhere('lastname', 'LIKE',  $searchTerm)
            ->orWhere('email', 'LIKE',  $searchTerm)
            ->orWhere('phone', 'LIKE',  $searchTerm)
            ->orderBy('id', 'DESC')->get();

        return view('livewire.Student.students', compact('students'));
    }
}
