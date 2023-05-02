//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract MyContract {
    struct Agreement {
    address tenant;
    address landlord;
    string location;
    string creation_date;
    uint256 Duration;
    uint256 Rent;
    uint256 Deposit;
    }
    
    Agreement public list;
    
    function setlist(address _tenant,address _landlord,string memory _location,string memory _creation_date, uint256 _Duration,uint256 _Rent,uint256 _Deposit) public {
        list = Agreement(_tenant,_landlord, _location, _creation_date, _Duration, _Rent, _Deposit);
    }
    
    function getlist() public view returns (address, address,string memory,string memory, uint256, uint256,uint256) {
        return (list.tenant, list.landlord, list.location, list.creation_date,list.Duration,list.Rent,list.Deposit);
    }
    function getAddress() external view returns(address) {
        return address(this);
    }
}
