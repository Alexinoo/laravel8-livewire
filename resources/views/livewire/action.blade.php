<div>
   {{-- ON CLICK ACTION --}}
   <h4>Buuton - On Click</h4>
   <br>
   <button type="button" wire:click = "addTwoNumbers(40,40)">Sum</button>
   <br><br>


   {{-- ON KEY PRESS ENTER --}}
   <h4>Textarea - On Keydown Enter</h4>
   <br>
   <textarea name="message" id="message"  rows="3" wire:keydown.enter = "displayMsg($event.target.value)"></textarea>
   <br><br>


   {{-- ON SUBMIT --}}
   <h4>Form - On Submit</h4>
   <br>
   <form action="" wire:submit.prevent="getSum">
      <label for="">Num 1 :</label>
      <input type="text" name="num1" id="" placeholder = "Enter num 1" wire:model = "num1"/><br><br>
        <label for="">Num 2 :</label>
      <input type="text" name="num2" id="" placeholder = "Enter num 2" wire:model = "num2"/><br><br>
      <input type="submit" value="Submit" /><br>
   </form>

   <br><br><br>
   <hr>
   Sum : {{ $sum }}
   <br>

   <hr>
   Message : {{ $message }}


   <hr>
   Result : {{ $result }}
</div>
