pragma solidity ^0.4.16;

interface token {
    function transfer(address receiver, uint amount);
}

contract Crowdsale {
	uint public fundingGoal;		// Amount of funding aimed to reach 
	address public beneficiary;		// Owner of the contract and funded property
	uint public deadline;			// Last timestamp when ending the contract
	uint public amountRaised;		// Current amount of funding
	uint public price;				// How much the token worth in ether
	token public tokenReward;		// Token for sale

	mapping(address => uint256) public balanceOf;

    bool fundingGoalReached = false;  // whether having reaching the funding goal
    bool crowdsaleClosed = false;   	// if the crowdsale is closed

    // event functions
    event LogAmount(uint amount);

    // Event to notify goal has been reached.
    event GoalReached(address recipient, uint totalAmountRaised);	

    // Event to transfer funding
    // isContribution: true to send funding amount in from backer; false to send funding amount out to backer.
    event FundTransfer(address backer, uint amount, bool isContribution);	

    // Constructed function, intialize the following properties from input.
    function Crowdsale(
        address ifSuccessfulSendTo,		// address for beneficiary
        uint fundingGoalInEthers,		// amount of funding aimed to reach
        uint durationInMinites,			// contract duration time
        uint finneyCostOfEtchToken,		// how much the token worth in ether, here in finnney where 1 ether = 1000 finney
        address addressOfTokenUsedAsReward		// address of realeased contract
    ) {
    	ifSuccessfulSendTo = beneficiary;
        fundingGoal = fundingGoalInEthers * 1 ether;
        deadline = now + durationInMinites * 1 minutes;
        price = finneyCostOfEtchToken * 1 finney;
        tokenReward = token(addressOfTokenUsedAsReward);	// create new token instance
    }

    // Fallback function wothout a name, called while doing transferring
    function () payable {
    	require(!crowdsaleClosed);		// if crowdsale is closed, return;
    	uint amount = msg.value;
        amountRaised += amount; 		// update amountRaised
        balanceOf[msg.sender] += amount;
        LogAmount(amount);
        tokenReward.transfer(msg.sender, 1000 * (amount / price)); 		// transfer the token to sender
        FundTransfer(msg.sender, amount, true);		// transfer the fund from sender to beneficiary
    }

    // Solidity modifier. Functions modified with this modifier will first check the condition here.
    modifier afterDeadline() {
    	if (now >= deadline) 
    		_;
    }

    // Check whether reached the funding goal. 
    // Would first check the modifier afterDeadline(), where "now >= deadline".
    // If reached, set fundingGoalReached to true and activate event GoalReached().
    function checkGoalReached() afterDeadline {
    	if(amountRaised >= fundingGoal){
            fundingGoalReached = true;
            GoalReached(beneficiary, amountRaised); 	// activate event GoalReached
        }

        // No matter whether reaching funding goal, 
        // as long as now >= deadline, which means the crowdasle already meets its end, close the contract.
        crowdsaleClosed = true;	
    }

    function safeWithdrawal() afterDeadline {
        // If not reaching the goal, return the balance to sender.
        if(!fundingGoalReached) {
            uint amount = balanceOf[msg.sender];
            balanceOf[msg.sender] = 0;
            if(amount > 0) {
                if(msg.sender.send(amount)) {
                    FundTransfer(msg.sender, amount, false);
                } else {
                    balanceOf[msg.sender] = amount;		// If sending failed, retrieve the tag for balance of this sender.
                }
            }
        }

        // If reaching the goal and address of beneficiary == msg.sender, send total funding to beneficiary.
        if(fundingGoalReached && beneficiary == msg.sender) {
            if(beneficiary.send(amountRaised)) {
                FundTransfer(beneficiary, amountRaised, false);
            } else {
                fundingGoalReached = false;		// If sending failed, change fundingGoalReached to false. Funding failed.
            }
        }
    }
}




























