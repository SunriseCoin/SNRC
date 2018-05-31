/**
 * @title SunriseCoin
 * @dev ERC20 Token, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract SunriseCoin is StandardToken {

  string public name = "Sunrise Coin";
  string public symbol = "SNRC";
  uint256 public decimals = 18;
  uint256 public INITIAL_SUPPLY = 120000000 * 1 ether;

  /**
   * @dev Contructor that gives msg.sender all of existing tokens.
   */
  function SunriseCoin() {
    totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }

}