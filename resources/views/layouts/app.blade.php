<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LiveWire Project</title>
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css')}}">
    @livewireStyles
</head>
<body>
    
    {{ $slot }}

    <script src="{{asset('assets/js/jquery-3.6.0.min.js')}}"></script>
    <script src="{{asset('assets/js/bootstrap.bundle.min.js')}}"></script>
    @livewireScripts
    <script>
        window.livewire.on('StudentAdded' , ()=>{
            $('#addStudentModal').modal('hide')
        });
        window.livewire.on('StudentUpdated' , ()=>{
            $('#updateStudentModal').modal('hide')
        });
        
    </script>
</body>
</html>