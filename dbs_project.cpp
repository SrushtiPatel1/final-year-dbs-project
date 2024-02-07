/*************************************************************************************************
* Name       :Srushti Patel
* Email Id   :spatel664@myseneca.ca
* Student ID :117791228
* Section    :NBB
***************************************************************************************************/


#define _CRT_SECURE_NO_WARNINGS
#include <iostream>
#include <occi.h>


using oracle::occi::Environment;
using oracle::occi::Connection;
using namespace oracle::occi;
using namespace std;

int main(void)
{
	// OCCI Variables
	Environment* env = nullptr;
	Connection* conn = nullptr;
	// User Variables 
	string str;
	string usr = "dbs311_233nbb17";
	// this is your login assigned to you
	string pass = "56532194";
	// this is your password assigned to you
	string srv = "myoracle12c.senecacollege.ca:1521/oracle12c";

	try
	{
		env = Environment::createEnvironment(Environment::DEFAULT);
		conn = env->createConnection(usr, pass, srv);

		cout << "Connection Is Successfull" << endl;
		env->terminateConnection(conn);
		Environment::terminateEnvironment(env);
	}
	catch (SQLException& sqlExcp)
	{
		cout << sqlExcp.getErrorCode() << ": " << sqlExcp.getMessage();
	}
	return 0;
}