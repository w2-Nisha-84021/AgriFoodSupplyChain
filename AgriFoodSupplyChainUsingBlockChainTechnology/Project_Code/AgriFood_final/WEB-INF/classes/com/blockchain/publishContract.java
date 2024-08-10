package com.blockchain;

import java.math.BigInteger;

import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.http.HttpService;
import com.blockchain.SimpleStorage;

public class publishContract {
	static String PRIVATE_KEY = "0xf9b9601c3b7f979d2edac3b923f9b9d2a366396725ae7f936e291d71add835d2";
    static BigInteger GAS_LIMIT = BigInteger.valueOf(6721975L);
    static BigInteger GAS_PRICE = BigInteger.valueOf(20000000000L);
	
	public static void main(String args[]) throws Exception{
		
	    Web3j web3 = Web3j.build(new HttpService("http://localhost:7545"));
	    Credentials credentials = Credentials.create(PRIVATE_KEY);
	    
//	     deploying your contract
	    SimpleStorage simplestorage = SimpleStorage.deploy(web3, credentials, GAS_PRICE, GAS_LIMIT).send();
	    String contractAddress = simplestorage.getContractAddress();
	    System.out.println(contractAddress);
	}
}
