function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }

    function transfer(address recipient, uint256 amount) public returns (bool) {
        require(balances[msg.sender] >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            balances[msg.sender] -= amount;
        }
        balances[recipient] += amount;
        emit Transfer(msg.sender, recipient, amount);
        return true;
    } 