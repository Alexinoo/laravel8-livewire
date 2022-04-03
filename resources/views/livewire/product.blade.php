<div>
    <label for="">Title : </label>
    <input type="text" wire:model="title">
    <br><br>

    <label for="">Name : </label>
    <input type="text" wire:model="name">
    <br><br>

    <hr>
    Title : {{ $title }}
    <br>

    Name : {{ $name }}

    <hr>
    <h3>Lifecycle Hooks Methods</h3>

    @foreach($infos as $key => $info)
        <h5>{{ $info }}</h5>
    @endforeach

</div>
