

/*//    Value In Array
@func            value_in_array(value,array)
@desc            this iterates through a list and returns if the value in it
@arg    value    {any}    The value you're looking for.
@arg    array    {array}    The array you're looking in.
//*/
function value_in_array(value,array) {
    //    Failsafes:
    if( !is_array(array) ){
        show_debug_message("NON-FATAL ERROR\n\t - value_in_array not provided an array. \n\t - Provided argument: "+string(array) );
        return false;
    }
    if( array_length(array) == 0 ){
        show_debug_message("NON-FATAL ERROR\n\t - value_in_array provide empty array. \n\t - Provided argument: "+string(array) );
        return false;
    }
    
    //    Find Value
    for( var i = 0; i < array_length(array); i++ ){
        if( array[i] == value ){ return true; }
    }
    
    //    Not Found:
    return false;
}

