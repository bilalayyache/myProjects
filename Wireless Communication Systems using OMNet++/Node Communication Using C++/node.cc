#include "node.h"

Define_Module(Node);

void Node::initialize()
{
    if(getIndex() == 0){
        char msgname[20];

        NodeMsg *msg = generateMessage();
        sprintf(msgname, "PC-%d", getIndex());
        cMessage *mymsg = check_and_cast<cMessage *>(msg);

        generated++;

        scheduleAt(0.0,mymsg);
    }
}

void Node::handleMessage(cMessage *msg)
{
    NodeMsg *mymsg = check_and_cast<NodeMsg *>(msg);

    if(getIndex() == mymsg->getDestination()){
        EV << "Message" << mymsg << "Arrived After " << mymsg->getHopCount() << " hops.\n";
        bubble("Arrived, Starting a new one!");
        recieved++;
        delete msg;

        NodeMsg *castedMessage = generateMessage();
        cMessage *myCastedMessage = check_and_cast<cMessage *>(castedMessage);
        forwardMessage(myCastedMessage);
        generated++;

    }
    else{
        forwardMessage(msg);
    }
}

void Node::forwardMessage(cMessage *msg)
{
    int n = gateSize("gate");
    int k = intuniform(0,n-1);

    EV<< "Forwarding Message " << msg <<" on port out[" << k << "]\n";
    transmitted++;
    NodeMsg *mymsg = check_and_cast<NodeMsg *>(msg);
    mymsg->setHopCount(mymsg->getHopCount()+1);
    send(mymsg, "gate$o", k);
}


NodeMsg* Node::generateMessage()
{
    int n = gateSize("gate");
    int k = intuniform(0,5);
    int src = getIndex();
    int dest = k;

    char msgname[20];

    sprintf(msgname, "Msg-%d-to-%d", src,dest);
    NodeMsg* msg = new NodeMsg(msgname);
    msg -> setSource(src);
    msg -> setDestination(dest);
    generated++;
    if(generated == 3){
        endSimulation();
    }
    return msg;
}

void Node::finish(){

    printf("PC[%d] generated %d received %d Transmitted %d", getIndex(), generated, recieved, transmitted);

}