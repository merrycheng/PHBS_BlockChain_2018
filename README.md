# Abstract
This report will begin with the brief introduction of blockchain technology. Then I draw forth the crowdsale, which is a new way of financing based on smart contract. I will tell what the crowdsale is, why it comes into being, and what scale it has been for recent years. And last, on the basis of understanding the theory, I take a toy implementation of smart contract on crowd sale.

# 1. Blockchain Development Introduction
Satoshi Nakamoto put forward blockchain concept for the first time in 2008. It is a new technology or a new imaginative thought on the foundation of cryptography and distributed storage, which has opened the the fifth information technology innovation. (figure 1 shows the first five waves of technological development.) 

Figure 1: the first five waves of technological development</p>
<p align="center"><img  width="700" src="https://github.com/merrycheng/PHBS_BlockChain_2018/blob/master/figure/figure%201.png"></p>
<i>Source: MIT connection science</i>

The biggest characteristic of blockchain is the distributed system. it stores the data on every node for the same version, compare with center-based and multicenter (figure 2). In that case, every node has the equal right. And the more nodes, the better the security. It is the traceability and non-tampering features of the blockchain that create the trusted execution platform for the smart contract. 

Figure 2: the pattern of three structures
<p align="center"><img  width="700" src="https://github.com/merrycheng/PHBS_BlockChain_2018/blob/master/figure/figure%202.png"></p>
<i>Source: 36 Kr</i>

The smart contract is a digital contract that the result is automatically determined by the code and the agreement is automatically executed after the contract terms being triggered. Next I will mainly introduce the crowdsale based on the smart contract. In simple terms, that is when the financing amount is completed, the money will be transferred to the specified account. If not, the refund can be made. This process does not require the third guarantee party.

# 2. What is Crowdslae
There are a few different ways that blockchain or Bitcoin crowdfunding is being used currently to help fund businesses. The main one is called initial coin offerings (ICOs).

IPO investors buy stocks to subscribe to their respective shares, and this part of the shares can be regarded as entitlement certificate for the underlying asset. While ICO is that companies are creating their own cryptocurrency that acts a lot like company stock. Initial coin offerings are offerings of a new cryptocurrency on a blockchain platform in exchange for cash. Later on, they will be bought and sold on the open market, gaining their own market value independently of the application that they are used for. We often call the cryptocurrencies token.

A token isn’t something that can be physically hold. Instead, it is a digital record, stored on the computer, or mobile device. It is designed to let you participate in the project that will eventually be launched as a result of the crowdsale. Depending on what service the project offers, the token will serve as a kind of access ticket to that service. For example, If the project is a software application that lets you find ridesharing partners without the use of a central website, then the investors might use tokens to pay for the rides. Conversely, if you are the owner of the vehicle and up giving someone a ride, you may be paid tokens by the network. So the tokens are a kind of currency for use within a specific online service.

Besides tokens, there are another two participants, including ICO project sponsors, and ICO crowdfunding platforms. ICO project sponsors are divided into two categories: one is the public blockchain, which is the blockchain of Bitcoin, and the representatives include Ethereum, etc. Now, most of the current ICO projects belong to this category. The second one is Decentralized Autonomous Organizations (DAOs), an organization framed on a blockchain system. The representative is “The DAO”, similar to real-world companies and fund institutions. So the ICO crowdfunding platform is usually a self-built website or a professional crowdfunding website.

# 3. Why Crowdsale Happens
The traditional fundraising always needs the third guarantee party and accompanies with many default risks because of asymmetric information. What’s more, traditional fundraising such as P2P allows businesses with really great products and service ideas to raise funds most from regular people. So another problem is that even with crowdfunding, this model is still extremely inefficient and the fund is always in small investment amounts. There is a roughly statistic that 78 percent of campaigns did not reach their target goals and only 1.9 percent of funds are raised through crowdsourcing campaigns going to developing countries.

Compared with P2P, ICO has stronger security. Compare with IPO, ICO has the advantages of shortening investment and financing cycle, lowering investment and financing threshold, good liquidity and global investment.

First, ICO is generally not subject to national equity financing laws, omitting the procedures and requirements of IPOs, avoiding the legal restrictions of cross-border financing. So it enables enterprises (especially SMEs) to have extremely low thresholds. towards all over the world. Next, it only takes a few hours, even a few minutes for ICO to complete all token issuance, purchase, and confirmation procedures through the blockchain. Digital currency transaction can be transferred with high speed.

In addition, traditional crowdfunding (P2P method) is usually not easy to trade after participation (it cannot be transferred to others after participation). But by using tokens, it is easy to trade at any time. When the project is completed, it is fully reimbursed according to the amounts of tokens held. Meanwhile, It can also be used to measure interest in a particular project. If no one buys the tokens, then the company developing the project might want to reconsider its options.

# 4. ICO Market Situation and its Potential Risk
In July 2013, the Mastercoin project successfully raised 5,000 bitcoins, and making it the first ICO project to be recognized. But the real ICO by Ethereum started from 2014 for about 26 million dollars. The market scale of ICO was 14 million dollars in 2015, but it started to gain importance in 2016, reaching 222 million dollars, with the potential to capture more crowdfunding interest. 2017 YTD ICOs have not disappointed, with 7.4 billion USD equivalent raised for 875 projects. Now ICO has replaced venture capital as the main financing channel in the currency industry. Figure 3 shows the scale compare between equity financing and ICO financing in blockchain projects all over the world.

Figure 3: the fundraising scale for equity financing and ICO
<p align="center"><img  width="700" src="https://github.com/merrycheng/PHBS_BlockChain_2018/blob/master/figure/figure%203.png"></p>
<i>Source: CB Insights, Tokendata, Coinschedule</i>

However, in 2018, the global Crowdsale growth rate has decreased significantly, and the amount has been declining in 2018 month by month, shown in the figure 4. The main reason can be viewed from primary market and second market. The first one is the fraudulent manipulation due to lack of supervision. According to the Statis Group, 78% of the Crowdsale projects in 2017 were suspected of fraud and only 15% are still trading, seen in the figure 5. The second one comes from the investors panic. They worry about the poor management of funds. After all the growth rate of ICO is so high in the last period. Besides, they concern about the liquidity problem due to the uncertain supervision and the weaker-than-expected tech development.

Figure 4: the fundraising scale for ICO in 2018
<p align="center"><img  width="600" src="https://github.com/merrycheng/PHBS_BlockChain_2018/blob/master/figure/figure%204.png"></p>
<i>Source: ICOData</i>

Figure 5: the situation for ICO in 2017
<p align="center"><img  width="600" src="https://github.com/merrycheng/PHBS_BlockChain_2018/blob/master/figure/figure%205.png"></p>
<i>Source: Statis Group</i>

As for the future market, although there is much uncertainty, I think that the ICO industry is with unlimited potential. But it needs more perfect supervision system and technology innovation to back the security. Coinbase confirming its listing and receiving a high valuation of 8 billion USD can fully demonstrate that mainstream capital is optimistic about the future prospects of the trading industry.

# 5. A toy implementation for smart contract on crowd sale
Since we have talked much about the crowdsale, this part is to take a toy implementation of smart contract on crowd sale. Before the programming, I want to explain some details about it more specifically. 

The basic idea of a crowdfunding contract is that the beneficiary sets a funding goal. When the contract reaches the deadline, if the funding goal is not completed, all the amount raised will be returned to the original account. In the smart contract based on the Ethereum platform, the program code is open, and the transaction information of each investor is stored in the distributed blockchain. Thus any tampering of information will be discovered. And the execution of the contract is automatic and mandatory, so there is no need for a third trusted platform to provide guarantees. Moreover, a small fee (gas) must be paid to the Ethereum platform for each transaction. As for tokens mentioned above, they are issued by the initiator on the Ethereum. At the same time, the initiator sets the token’s name, determines the exchange rate to the officially token. After the issuance, the investor can make token transactions with others.

Now let’s start with my test on such a contract. We first declare some local properties related to our contract.
<p align="center"><img  width="600" src="https://github.com/merrycheng/PHBS_BlockChain_2018/blob/master/figure/figure%206.png"></p>

And register some required events, which would be activated to store related events on ethereum block chain.
<p align="center"><img  width="600" src="https://github.com/merrycheng/PHBS_BlockChain_2018/blob/master/figure/figure%207.png"></p>

Then comes the constructed function of this contract, initializing the properties from input.
<p align="center"><img  width="600" src="https://github.com/merrycheng/PHBS_BlockChain_2018/blob/master/figure/figure%208.png"></p>

This is a fallback function without function name. It will be called while doing transferring.
<p align="center"><img  width="600" src="https://github.com/merrycheng/PHBS_BlockChain_2018/blob/master/figure/figure%209.png"></p>

We declare a modifier afterDeadline(). Those functions modified with this modifier will first check the condition defined here. Only when satisfying the condition will other functions continue to run.
<p align="center"><img  width="300" src="https://github.com/merrycheng/PHBS_BlockChain_2018/blob/master/figure/figure%2010.jpeg"></p>

We need a function to check whether have reached the funding goal. As introduces at modifier, this function would first check the condition in modifier afterDeadline(), where "now >= deadline". And if reaches the funding goal, it will set tag fundingGoalReached to true and activate event GoalReached().
<p align="center"><img  width="600" src="https://github.com/merrycheng/PHBS_BlockChain_2018/blob/master/figure/figure%2011.png"></p>

The last one is the function to withdraw the contract safely. Within this function, the program will decide its actions after checking situation whether reaching the funding goal. If not reached, return the balance to each sender. Otherwise, it sends the total funding to the beneficiary. The crowd sale contract processes to its end now.
<p align="center"><img  width="600" src="https://github.com/merrycheng/PHBS_BlockChain_2018/blob/master/figure/figure%2012.png"></p>

# Let's test!
To test our contract defined above, we need to first declare and release our own tokens on Ethereum. Following the instructions from [website](https://learnblockchain.cn/2018/01/12/create_token/) to release tokens. 
Through the tools of MetaMask and Remix Solidity IDE in Chrome, I have finally successfully created and deployed my token contract and crowd sale contract!
<p align="center"><img  width="600" src="https://github.com/merrycheng/PHBS_BlockChain_2018/blob/master/figure/figure%2013.png"></p>

# Main Reference:
1 Chinese blockchain technology and application development research report in 2018, published by Chinese blockchain BBS.

2 Nguyen Q K. Blockchain - A Financial Technology for Future Sustainable Development[C]// International Conference on Green Technology & Sustainable Development. 2016.

3 TokenMania, AutonomousNEXT, 2018.

4 Venegas P. Initial Coin Offering (ICO) Risk, Value and Cost in Blockchain Trustless Crypto Markets[J]. Social Science Electronic Publishing, 2017.

5 [https://blog.csdn.net/u010986776/article/details/84142837](https://blog.csdn.net/u010986776/article/details/84142837)
