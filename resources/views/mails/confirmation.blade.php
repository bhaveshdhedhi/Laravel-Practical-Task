Hi {{ $firstname }} {{ $lastname }} ,

<p> Your registration successfully done. Please verify your email address by click on link.

{{ route('confirmation' , $token) }}
