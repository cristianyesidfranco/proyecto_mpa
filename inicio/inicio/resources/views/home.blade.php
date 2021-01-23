@extends('layouts.admin.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10 col-md-offset-2">
            <div class="panel-default">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    {{ __('You are logged in!') }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
