open OUnit
open Phonedb

let test_fixture = "PhoneDb" >::: [
    "Search" >:: ( fun () ->
        let db = Phonedb.make 10 in
        let db = insert db { name = "Test"; phone_number = (1,2,3,4)  } in
        let get_contact (success, db, scontact) =  scontact in
        assert_equal "Test" (get_contact (Phonedb.search db {name = "Test"})).name
        
    )
]
