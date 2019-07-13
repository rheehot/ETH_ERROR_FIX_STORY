pragma solidity ^0.4.17;

import "truffle/assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

const TestAdoption{
    Adoption adoption = Adoption(DeployAddresses.Adoption());

    function testUserCanAdoptPet() public{
        uint expected = 8;
        Assert.equal(returnedId, expected, "Adoption of pet ID 8 should be recorded.");
    }

    function testGetAdopterAddressByPetId() public {
        address expected = this;
        address adopter = adoption.adopters(8);
        Assert.equal(adopter, expected, "Owner of pet ID 8 should be recorded.")
    }

    function testGetAdopterAddressByPetIdInArray() public{
        address expected = this;
        address[16] memory adopters = adoption.getAdopters();
        Assert.equal(adopter[8], expected, "Owner of pet ID 8 should be recorded.")
    }
}