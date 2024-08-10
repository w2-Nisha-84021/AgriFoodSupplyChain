package com.blockchain;

import java.math.BigInteger;

import org.web3j.protocol.Web3j;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.core.methods.response.TransactionReceipt;
import org.web3j.protocol.http.HttpService;
import com.blockchain.SimpleStorage;
import com.blockchain.publishContract;

public class ETHconnect {
    static String contractAddress = "0x2c96945fdb1e3b4b3c091290d2d2af985a8fe988";
	
	public static void txn() throws Exception {
		String PRIVATE_KEY = publishContract.PRIVATE_KEY;
		
	    Web3j web3 = Web3j.build(new HttpService("http://localhost:7545"));
	    Credentials credentials = Credentials.create(PRIVATE_KEY);

	    BigInteger GAS_LIMIT = publishContract.GAS_LIMIT;
	    BigInteger GAS_PRICE = publishContract.GAS_PRICE;
	    
	     //use deployed contract
	    SimpleStorage simplestorage = SimpleStorage.load(contractAddress, web3, credentials, GAS_PRICE, GAS_LIMIT);
	    
	     //calling deployed smart contract
	    TransactionReceipt result = simplestorage.read().send();
	    System.out.println("Value : " + result);
	}
}
