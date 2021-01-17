#ifndef __LAB2_NODE_H_
#define __LAB2_NODE_H_

#include <omnetpp.h>
#include <NodeMsg_m_m.h>
#include <string>

using namespace omnetpp;

/**
 * TODO - Generated class
 */
class Node : public cSimpleModule
{

  int generated = 0;
  int recieved = 0;
  int transmitted = 0;

  protected:
    virtual void forwardMessage(cMessage *msg);
    virtual void initialize();
    virtual void handleMessage(cMessage *msg);
    virtual NodeMsg* generateMessage();
    virtual void finish();
};

#endif
