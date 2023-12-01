#[contract]
mod YoStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Yo(from: ContractAddress, value: felt252) {}


    #[external]
    fn Yo(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
