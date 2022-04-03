<div>
    Name: 
   <input type="text" name="name" id="name"  wire:model = "name" />
   <br><br><br>
   Message:
   <textarea name="message" id="message" rows="2" wire:model = "message"></textarea>

   <br><br><br>
   Marital Status :
   Single <input type="radio"value="Single" wire:model = "marital_status"/>
   Married <input type="radio"value="Married" wire:model = "marital_status" />

   <br><br><br>
   Favourite Colors :
   Red <input type="checkbox"value="Red" wire:model = "colors"/>
   Green <input type="checkbox"value="Green" wire:model = "colors"/>
   Orange <input type="checkbox"value="Orange" wire:model = "colors"/>
   Pink <input type="checkbox"value="Pink" wire:model = "colors"/>


   <br><br>
   Favourite fruits:
   <select name="fruit" id="" wire:model = "fruit">
       <option value="">--Select Fruit--</option>
       <option value="banana">Banana</option>
       <option value="Mango">Mango</option>
       <option value="Pineapple">Pineapple</option>
   </select>


   <hr>
   <h3>Property Binding with input:text</h3>
   Name : {{ $name}}

   <hr>
   <h3>Property Binding with textarea</h3>
   Message : {{ $message}}

    <hr>
   <h3>Property Binding with Radio</h3>
   Marital Status: {{ $marital_status}}
   <br>

    <hr>
   <h3>Property Binding with Checkbox</h3>
   Favourite Colors : 
   <ul>
   @foreach($colors as $key => $value)
       <li>{{$value}}</li>
   @endforeach
   </ul>
   <br>


    <hr>
   <h3>Property Binding with Select / Dropdown</h3>
   Favourite fruit : {{ $fruit}}
   <br>



</div>
