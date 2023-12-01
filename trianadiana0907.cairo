#[contract]
mod datebasaStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn datebasa(from: ContractAddress, value: felt252) {}


    #[external]
    fn datebasa(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
