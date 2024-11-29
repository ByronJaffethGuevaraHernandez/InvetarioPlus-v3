@extends('include.master')


@section('title','Inventory | Capatas')


@section('page-title','Todos los capatases')


@section('content')


        <div class="row clearfix">
        	
        	<create-customer></create-customer>

        </div>


        <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                        <!--     <h2>
                                Vendor List
                          
                            </h2> -->
                          
                          <h2>
                          	 <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#create-customer">
                                Capatas nuevo
                             </button>
                          </h2>
                        </div>

                        <view-customer></view-customer>

                    </div>
                </div>
            </div>

          


@endsection

@push('script')

<script type="text/javascript" src="{{ url('public/js/customer.js') }}"></script>

@endpush