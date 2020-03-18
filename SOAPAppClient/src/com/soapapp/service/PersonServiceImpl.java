/**
 * PersonServiceImpl.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.soapapp.service;

public interface PersonServiceImpl extends java.rmi.Remote {
    public boolean deletePerson(int id) throws java.rmi.RemoteException;
    public com.soapapp.beans.Person[] getAllPersons() throws java.rmi.RemoteException;
    public com.soapapp.beans.Person getPerson(int id) throws java.rmi.RemoteException;
    public boolean addPerson(com.soapapp.beans.Person p) throws java.rmi.RemoteException;
}
