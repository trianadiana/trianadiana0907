#[contract]
mod datebayoStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn datebayo(from: ContractAddress, value: felt252) {}


    #[external]
    fn datebayo(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
