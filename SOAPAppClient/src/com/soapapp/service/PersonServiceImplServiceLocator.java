/**
 * PersonServiceImplServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.soapapp.service;

public class PersonServiceImplServiceLocator extends org.apache.axis.client.Service implements com.soapapp.service.PersonServiceImplService {

    public PersonServiceImplServiceLocator() {
    }


    public PersonServiceImplServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public PersonServiceImplServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for PersonServiceImpl
    private java.lang.String PersonServiceImpl_address = "http://localhost:8080/SOAPApp/services/PersonServiceImpl";

    public java.lang.String getPersonServiceImplAddress() {
        return PersonServiceImpl_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String PersonServiceImplWSDDServiceName = "PersonServiceImpl";

    public java.lang.String getPersonServiceImplWSDDServiceName() {
        return PersonServiceImplWSDDServiceName;
    }

    public void setPersonServiceImplWSDDServiceName(java.lang.String name) {
        PersonServiceImplWSDDServiceName = name;
    }

    public com.soapapp.service.PersonServiceImpl getPersonServiceImpl() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(PersonServiceImpl_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getPersonServiceImpl(endpoint);
    }

    public com.soapapp.service.PersonServiceImpl getPersonServiceImpl(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            com.soapapp.service.PersonServiceImplSoapBindingStub _stub = new com.soapapp.service.PersonServiceImplSoapBindingStub(portAddress, this);
            _stub.setPortName(getPersonServiceImplWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setPersonServiceImplEndpointAddress(java.lang.String address) {
        PersonServiceImpl_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (com.soapapp.service.PersonServiceImpl.class.isAssignableFrom(serviceEndpointInterface)) {
                com.soapapp.service.PersonServiceImplSoapBindingStub _stub = new com.soapapp.service.PersonServiceImplSoapBindingStub(new java.net.URL(PersonServiceImpl_address), this);
                _stub.setPortName(getPersonServiceImplWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("PersonServiceImpl".equals(inputPortName)) {
            return getPersonServiceImpl();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://service.soapapp.com", "PersonServiceImplService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://service.soapapp.com", "PersonServiceImpl"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("PersonServiceImpl".equals(portName)) {
            setPersonServiceImplEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
